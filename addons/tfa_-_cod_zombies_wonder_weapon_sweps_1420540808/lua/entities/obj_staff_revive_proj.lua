AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false

sound.Add( {
	name = "icestaff_explode",
	volume = 1.0,
	level = 450,
	pitch = {100, 100},
	sound = "weapons/originstaffs/ice/flux/icestaff_flux.wav"
} )

ENT.CollideSND = "icestaff_explode"
ENT.MoveSpeed = 3500
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
	self.LifeTime = CurTime() + 0.2
end

if SERVER then
	function ENT:OnCollide(ent, pos)
		if engine.ActiveGamemode() == "nzombies" then
			if ent:IsPlayer() and !ent:GetNotDowned() then
				ent:Revive()
			end
		end
		ParticleEffect( self.CollidePCF, self:GetPos(), Angle(0,0,0) )
		self:EmitSound(self.CollideSND)
		SafeRemoveEntity(self)
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