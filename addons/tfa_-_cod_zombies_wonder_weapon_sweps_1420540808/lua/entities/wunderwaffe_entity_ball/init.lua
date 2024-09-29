AddCSLuaFile("shared.lua")
include('shared.lua')
 
ENT.TrailPCF = "tesla_beam_child1"
ENT.CollidePCF = "tesla_impact"
ENT.MoveSpeed = 3500
ENT.MaxChain = 20
ENT.ZAPRANGE = 150
 
local isNzombies = engine.ActiveGamemode():lower() == "nzombies"
 
function ENT:Initialize()
 
    self:SetModel("models/Items/battery.mdl")
    self:SetNoDraw(true)
    self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    --self:SetSolid( SOLID_VPHYSICS )
    self:SetSolidFlags(FSOLID_NOT_STANDABLE)
    --self:SetTrigger(true)
    self:DrawShadow(false)
	
    local eff = ents.Create("info_particle_system")
    eff:SetKeyValue("effect_name", self.TrailPCF)
    eff:SetKeyValue("start_active", "1")
    eff:SetPos(self:GetPos())
    eff:SetParent(self)
    eff:Spawn()
    eff:Activate()
    self.Effect = eff
 
    local phys = self:GetPhysicsObject()
    if IsValid(phys) then
        phys:Wake()
        phys:SetMass(1)
        phys:EnableDrag(false)
        phys:EnableGravity(false)
        phys:SetBuoyancyRatio(0)
        phys:ApplyForceCenter(self:GetForward()*self.MoveSpeed)
    end
    self.snd = true
   
    -- we store the events here so that think can handle them
    self.touchEvents = {}
    self.targetEnts = {}
 
end
 
local blockedClasses = {
    ["prop_dynamic"] = true,
    ["nz_spawn_zombie_normal"] = true,
    ["nz_spawn_zombie_special"] = true,
    ["player_spawns"] = true,
   
}
 
function ENT:PhysSleep()
    local phys = self:GetPhysicsObject()
    if IsValid(phys) then
        phys:SetVelocity(Vector(0,0,0))
        phys:Sleep()
    end
end
/*
-- function ENT:StartTouch(ent)
--     print("OK Booomer")
--     --if !ent:Alive() then return end
 
--    if blockedClasses[ent:GetClass()] ~= nil or ent == self.Owner then return end
 
--    self:PhysSleep()
--    self:OnCollide(ent, self:GetPos())
-- end
*/

function ENT:PhysicsCollide(data)
	--print("physicscollide")
   self:PhysSleep()
   self:OnCollide(data.HitEntity, data.HitPos)
end

function ENT:Zap(delay)
   
    timer.Simple(delay,function()
       
        if !self:IsValid() then return end
       
        -- a table containing all targetted ents
        local curIndex = #self.targetEnts
		
        local prevEnt = self.targetEnts[curIndex]
        local targetEnt
		
        if prevEnt ~= nil and prevEnt.ent:IsValid() then
            targetEnt = self:FindNearestEntity( prevEnt.ent:GetPos() )
        else
            -- if the target ent is the initial entity of the chain
            targetEnt = self:FindNearestEntity(self:GetPos())
        end
		
        if targetEnt == nil or !targetEnt:IsValid() then 
			SafeRemoveEntity(self)
			return
		end
		
        table.insert(self.targetEnts,{ent=targetEnt,id=targetEnt:GetCreationID()})
        
        if (!IsValid(self:GetOwner())) then return end
        self.dmginfo:SetDamage(99999999)
        self.dmginfo:SetAttacker(self:GetOwner())
        targetEnt:TakeDamageInfo( self.dmginfo )
        --targetEnt:Kill(self.dmginfo)
        targetEnt:EmitSound("weapons/tesla_gun/bounce"..math.random(2)..".wav")
		
        --local raisebeam = Vector(0,0,40)
		
        if prevEnt ~= nil and prevEnt.ent:IsValid() then
            util.ParticleTracerEx( "tesla_beam", (prevEnt.ent:GetPos() + prevEnt.ent:OBBCenter()), (targetEnt:GetPos() + targetEnt:OBBCenter()), true, 1, 1 );   
        end
		
		if !targetEnt:IsPlayer() then
			if self.Upgraded then
				ParticleEffectAttach( "tesla_electrocute_pap", PATTACH_POINT_FOLLOW, targetEnt, 3)
				if targetEnt:OnGround() then
					ParticleEffectAttach( "tesla_electrocute1_pap", PATTACH_ABSORIGIN_FOLLOW, targetEnt, 0)
				end
			else
				ParticleEffectAttach( "tesla_electrocute", PATTACH_POINT_FOLLOW, targetEnt, 3)
				if targetEnt:OnGround() then
					ParticleEffectAttach( "tesla_electrocute1", PATTACH_ABSORIGIN_FOLLOW, targetEnt, 0)
				end
			end
		end

    end)
	
end
 
function ENT:OnCollide(ent, pos)
	self:EmitSound("weapons/tesla_gun/proj_impact.wav")
    if isNzombies and ent.IsAlive != nil and ent:IsAlive() then return end
 
    --self.Effect:SetParent(NULL)
    SafeRemoveEntityDelayed(self.Effect,1)
    --self.Effect:Fire("Stop")
    self:SetTrigger(false)
	--if IsValid(self.Effect) then
	--	self.Effect:Remove()
	--end
    self:StopParticles()
    self:SetMoveType(MOVETYPE_NONE)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
    local ArcEffect = "tesla_beam"
   
    if SERVER then
       
        if !self:IsValid() or self.FindNearestEntity == nil then
            SafeRemoveEntity( self )
            return
        end
   
        local nearestent = self:FindNearestEntity(self:GetPos())
 
        local dmginfo = DamageInfo()
        --local raisebeam = Vector(0,0,40)
        dmginfo:SetDamagePosition( self:GetPos() )
        dmginfo:SetDamageType( DMG_SHOCK )
        dmginfo:SetAttacker( self.Owner )
        dmginfo:SetInflictor( self )
        dmginfo:SetDamageForce( Vector( 0, 0, 1 ) )
        dmginfo:SetDamage(99999)
        -- if self:GetPos():DistToSqr( self.Owner:GetPos() ) < 4096 then
        --     self.Owner:TakeDamageInfo(dmginfo)
        -- end
 
        -- if nearestent != nil and nearestent:IsValid() then
        --     dmginfo:SetDamage(99999)  
        -- else
        --     dmginfo:SetDamage(99999)
        -- end
 
        if nearestent !=nil and nearestent:IsValid() then
           
            -- expose
            self.dmginfo = dmginfo
       
            -- for initial target
            self:Zap(0,nearestent)
           
            -- the chaining targs
            for i=2,self.MaxChain do
                self:Zap(0.3*i)
            end
           
        else   
            ParticleEffect( self.CollidePCF, pos, self:GetAngles() )
            if ent:IsValid() then
                ent:TakeDamageInfo(dmginfo)
            end
            SafeRemoveEntity( self )
        end
    end
end
 
function ENT:HasPrevTarg( ent )
 
    local entID = ent:GetCreationID()
   
    for _,targ in pairs(self.targetEnts) do
        if targ.id == entID then
            return true
        end
    end
	
    return false
   
end
 
function ENT:FindNearestEntity( pos )
 
    --local range = self.ZAPRANGE
    local foundEnt = nil
	
	/*
    for _, ent in pairs( ents.FindByClass("npc_*") ) do
        local distance = pos:DistToSqr( ent:GetPos() )
 
        -- can't target ents we already targetted
        if !self:HasPrevTarg( ent ) and ent:Health() > 0 then
            if ( distance <= range*range and distance != 0 ) then
                --range = distance
                foundEnt = ent
            end
        end
       
    end
   
    if isNzombies then
        for _, ent in pairs( ents.FindByClass("nz_zombie_*") ) do
            local distance = pos:DistToSqr( ent:GetPos() )
           
            if ent == nil then return end
            if ent:IsPlayer() or ent == "drop_powerup" then continue end
           
            local distance = pos:DistToSqr( ent:GetPos() )

            -- can't target ents we already targetted
            if !self:HasPrevTarg( ent ) and ent:Health() > 0 then
                if ( distance <= range*range and distance != 0 ) then
                    --range = distance
                    foundEnt = ent
                end
            end
        end
    end
	*/
	
	for _, ent in pairs( ents.FindInSphere(pos, self.ZAPRANGE) ) do 
        -- can't target ents we already targetted
        if !self:HasPrevTarg( ent ) then
            if (ent:IsNPC() or ent:IsNextBot()) and ent:Health() > 0 then
                foundEnt = ent
            end
        end
       
    end
	
    return foundEnt
	
end
