AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false

sound.Add( {
	name = "rg_explode",
	volume = 1.0,
	level = 100,
	pitch = {100, 100},
	sound = "weapons/wpn_ray_explode.wav"
} )

ENT.CollideSND = "rg_explode"
ENT.Damage = NZCoDDMG(1000)

function ENT:GetSplashDamage()
	return math.random(NZCoDDMG(300), NZCoDDMG(1500))
end

function ENT:GetPaPSplashDamage()
	return math.random(NZCoDDMG(300), NZCoDDMG(2000))
end

ENT.MoveSpeed = 3500
function ENT:Initialize()
	self:SetModel( "models/dav0r/hoverball.mdl" )
	self:SetNoDraw(true)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:DrawShadow(false)
	self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetSolidFlags(FSOLID_NOT_STANDABLE)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	if CLIENT then return end
	--self:SetTrigger(true)
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
		phys:SetMass( 1 )
		phys:EnableGravity( false )
		phys:EnableDrag( false )
		phys:Wake()
		phys:ApplyForceCenter(self:GetForward()*3500)
	else
		self:Remove()
	end
	self.LifeTime = CurTime() + math.Rand(3,4)
end

function ENT:DoSplashDamage(pos, range, blackListedEnts)
	blackListedEnts = blackListedEnts or {}
	for _,v in pairs(ents.FindInSphere(pos,range)) do
		if c == "nz_spawn_player" then return end	

		if !blackListedEnts[v] then 	
			if v == self.Owner then
				local player_damage = DamageInfo()
				player_damage:SetDamage(25)
				player_damage:SetAttacker(self.Owner or self)
				player_damage:SetDamageForce(vector_origin)
				player_damage:SetDamagePosition( self.Entity:GetPos() )
				player_damage:SetInflictor( self.Owner )								
				v:TakeDamageInfo(player_damage)
			else
				local splash_damage = DamageInfo()
				splash_damage:SetDamage(self:GetSplashDamage())
				splash_damage:SetAttacker(self.Owner or self)
				splash_damage:SetDamageForce(vector_origin)
				splash_damage:SetDamagePosition( self.Entity:GetPos() )
				splash_damage:SetInflictor( self.Owner )	
	
				local activeWep = self.Owner:GetActiveWeapon()
				if (IsValid(activeWep) and activeWep:IsWeapon() and activeWep:HasNZModifier("pap")) then
					splash_damage:SetDamage(self:GetPaPSplashDamage())
				end
			
				v:TakeDamageInfo(splash_damage)		
			end
		end
	end
end

if SERVER then
	function ENT:OnCollide(ent,hitpos)
		if self.DoRemove then return end
		if self.Owner == ent then
			return true
		end
		self.DoRemove = true
		--self.Trail:SetParent(self.Effect)
		self.Effect:SetParent(NULL)
		SafeRemoveEntityDelayed(self.Effect,1)
		self.Effect:Fire("Stop")
		self:PhysicsDestroy()
		SafeRemoveEntityDelayed(self,0)
		self:NextThink(CurTime())

		-- Direct hit
		if (IsValid(ent) and ent:IsValidZombie()) then
			local direct_damage = DamageInfo()
			direct_damage:SetDamage(self.Damage)
			direct_damage:SetAttacker(self.Owner or self)
			direct_damage:SetDamageForce(vector_origin)
			direct_damage:SetDamagePosition( self.Entity:GetPos() )
			direct_damage:SetInflictor( self.Owner )	
			
			ent:TakeDamageInfo(direct_damage)		

			self:EmitSound(self.CollideSND)	
			ParticleEffect( self.CollidePCF, hitpos, self:GetAngles() )		

			self:DoSplashDamage(hitpos, 5, {
				[ent] = true
			})
		return end

		-- Splash damage:
		local c = ent:GetClass()
		self:DoSplashDamage(hitpos, 65)

        if c == "nz_zombie_boss_panzer" then
			util.BlastDamage( self, self.Owner, hitpos, 65, 335 )		
		end

		self:EmitSound(self.CollideSND)	
	    ParticleEffect( self.CollidePCF, hitpos, self:GetAngles() )		
		return true
	end

function ENT:StartTouch(ent)
	if (ent:GetClass() == "wall_block" || ent:GetClass() == "invis_wall" || ent:GetClass() == "invis_wall_zombie" || ent:GetClass() == "invis_wall_block" || ent:GetClass() == "wall_block_zombie" or ent:GetClass() == "prop_dynamic") or (ent:GetClass() == "nz_spawn_zombie_normal") or (ent:GetClass() == "nz_spawn_zombie_special") or (ent:GetClass() == "player_spawns") then return end
	self:OnCollide(ent,self:GetPos())
end
	
function ENT:PhysicsCollide(data)
	self:OnCollide(data.HitEntity,data.HitPos)
end
end

