AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false

ENT.Damage = 1
ENT.MoveSpeed = 3500
ENT.CollidePCF = "originstaff_wind_impact"
function ENT:Initialize()
	self:SetModel( "models/Items/battery.mdl" )
	self:SetNoDraw(true)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:DrawShadow(false)
	self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetSolidFlags(FSOLID_NOT_STANDABLE)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	if CLIENT then return end
	self:SetTrigger(true)
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:SetMass( 1 )
		phys:EnableGravity( false )
		phys:EnableDrag( false )
		phys:Wake()
		phys:ApplyForceCenter(self:GetForward()*self.MoveSpeed)
	else
		self:Remove()
	end
	self.LifeTime = CurTime() + 0.1
end

if SERVER then
	function ENT:OnCollide(ent, pos)
		local dmg = DamageInfo()
		dmg:SetDamage(self.Damage)
		dmg:SetDamageType(DMG_SONIC)
		dmg:SetAttacker(self.Owner)
		dmg:SetInflictor(self)
		--dmg:SetDamageForce(self:GetVelocity()*-1)
		ent:TakeDamageInfo(dmg)
		if ent:IsWorld() then
			ParticleEffect( self.CollidePCF, self:GetPos(), Angle(0,0,0) )
			SafeRemoveEntity(self)
		end
	end
	
	function ENT:Think()
		if CurTime() > self.LifeTime then
			SafeRemoveEntity(self)
		end
	end
	
	function ENT:StartTouch(ent)
		if (ent:GetClass() == "prop_dynamic") or (ent:GetClass() == "nz_spawn_zombie_normal") or (ent:GetClass() == "nz_spawn_zombie_special") or (ent:GetClass() == "player_spawns") then return end
		self:OnCollide(ent,self:GetPos())
	end
		
	function ENT:PhysicsCollide(data)
		self:OnCollide(data.HitEntity,data.HitPos)
	end
end