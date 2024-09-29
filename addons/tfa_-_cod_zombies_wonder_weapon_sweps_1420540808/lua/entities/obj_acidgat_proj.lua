AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false
ENT.TrailSND = "weapons/projectile_whoosh.wav"
ENT.HasTimeout = true
ENT.HasWindup = true
ENT.WindupSND = "weapons/blundergat/acidgat_fuse.wav"
ENT.Winduptime = 0.7
ENT.TimeoutPeriod = 3
ENT.CollideSND = {"weapons/projectile_impact.wav",}

function ENT:Initialize()
    --self:SetModel( "models/weapons/scavenger/scavenger_projectile.mdl" )
	self:SetNoDraw(false)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:DrawShadow(false)
	self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetSolidFlags(FSOLID_NOT_STANDABLE)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self.cspSound = CreateSound(self, self.TrailSND)
	self.cspSound:Play()
	if CLIENT then return end
	--self:SetTrigger(true)
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
	    --phys:SetVelocity(self.Owner:GetForward() * 500)
		phys:SetMass( 1 )
		phys:EnableGravity( false )
		phys:EnableDrag( false )
		phys:SetBuoyancyRatio( 0 )
		phys:Wake()
		--phys:ApplyForceCenter(self:GetForward()*3500)
	end
	if self.HasTimeout then
		timer.Simple(self.TimeoutPeriod,function()
			if IsValid(self) then
				self:Explosion()
			end 
		end)
	end 
	if self.HasWindup then
		timer.Simple(self.Winduptime,function()
			if IsValid(self) then
				self.cspSound = CreateSound(self, self.WindupSND)
	            self.cspSound:Play()
			end
		end)
	end
	self:SetHealth(25)
end



if SERVER then
	function ENT:Think()
		
	end
	
    function ENT:PhysicsCollide(data,phys)	
		if self:IsValid() && !self.Hit then
			self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			self.Hit = true
		end	
		if data.HitEntity:IsWorld() == false and data.HitEntity:GetClass() ~= "obj_acidgat_proj" and data.HitEntity:IsNPC() == false and data.HitEntity:IsPlayer() == false and  data.HitEntity:IsValid() then
			self:SetSolid(SOLID_NONE)
			self:SetMoveType(MOVETYPE_NONE)
			self:SetParent(data.HitEntity)
			self.Stuck = true
			self.Hit = true
		end
		
		if data.HitEntity:IsWorld() then
			self:SetMoveType(MOVETYPE_NONE)
		end
		
		if engine.ActiveGamemode() == "nzombies" and self.Upgraded then
			self:SetTargetPriority(TARGET_PRIORITY_PLAYER)
			UpdateAllZombieTargets(self)
		end
		
		local angs = self:GetAngles()
		local ang = data.HitNormal:Angle()
        ang.p = ang.p + 0		
		self:SetPos(data.HitPos + ((data.HitNormal / 5) * -11))
		local pos = self.Owner:GetPos() - self:GetPos()
		local normalized = pos:Angle()
		/*
		timer.Simple(.001,function() 
			local get = self:GetPos()
			
			local getx = get.x
			local gety = get.y
			local getz = get.z
			
			local roundx = math.Round(get.x,-2)
			local roundy = math.Round(get.y)
			local roundz = math.Round(get.z)
		end)
		*/
		self:EmitSound(self.CollideSND[1], 75, 100)
	end
end

function ENT:Explosion()
	if CLIENT then return end
	ParticleEffect("acidgat_explode",self:GetPos(),Angle(0,0,0),nil)
	--ParticleEffect("slipgun_impact_pap",self:GetPos(),Angle(0,0,0),nil)
	self:EmitSound("weapons/blundergat/acidgat_explo-0"..math.random(1,4)..".mp3", 360, 100)
	util.ScreenShake(self.Entity:GetPos(), 1000, 255, 0.3, 500)
	local dmg = math.random(150, 2000)
	if self.Upgraded then
		dmg = math.random(1500, 7500)
	end
	self:Remove()
	for k,v in pairs(ents.FindInSphere(self.Entity:GetPos(),128)) do
		local ppos = v:GetPos()
		local dmginfo = DamageInfo()
			dmginfo:SetDamageType( DMG_ACID ) 
			dmginfo:SetInflictor(self.Entity)
			dmginfo:SetAttacker( self.Owner )
		if (v:IsPlayer() and hook.Run("PlayerShouldTakeDamage",v,self.Owner)) then
			dmginfo:SetDamage(25)
			v:TakeDamageInfo(dmginfo)
			v:SetVelocity((self:GetPos()-ppos)*3)
		else
			if v:IsNPC() or v.Type == "nextbot" then
				dmginfo:SetDamage(dmg)
				v:TakeDamageInfo(dmginfo)
			else
				dmginfo:SetDamage(dmg)
				v:TakeDamageInfo(dmginfo)
			end
		end
	end
end         
function ENT:Touch(ent)
	if IsValid(ent) && !self.Stuck then
		if ent == self.Owner then return false end
		if ent:IsNPC() || (ent:IsPlayer() && ent != self:GetOwner()) || ent:IsVehicle() || ent.Type == "nextbot" then
			self:SetSolid(SOLID_NONE)
			self:SetMoveType(MOVETYPE_NONE)
			self:SetParent(ent)
			self.Stuck = true
			self.Hit = true
		end
	end
end

function ENT:OnTakeDamage(dmg)
	self:TakePhysicsDamage(dmg); -- React physically when getting shot/blown
	
	if(self:Health() <= 0) then return; end -- If the health-variable is already zero or below it - do nothing

	if(self:Health() <= 0) then -- If our health-variable is zero or below it
		self:Explosion()
		self.cspSound:Stop()
    end
end