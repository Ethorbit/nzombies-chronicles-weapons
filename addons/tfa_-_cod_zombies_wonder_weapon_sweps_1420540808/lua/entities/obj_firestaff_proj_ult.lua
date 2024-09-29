AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false

ENT.TrailPCF = "originstaff_fire_proj"
ENT.CollidePCF = "originstaff_fire_impact"	
ENT.Damage = 300
ENT.MoveSpeed = 3500
function ENT:Initialize()
	self:SetModel( "models/props_junk/rock001a.mdl" )
	local mat = "models/weapons/originstaffs/fire_proj"
	self:SetMaterial(mat)
	--self:SetNoDraw(true)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:DrawShadow(false)
	self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetSolidFlags(FSOLID_NOT_STANDABLE)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	if SERVER then
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
			phys:SetBuoyancyRatio(0)
			phys:Wake()
			phys:AddAngleVelocity(Vector(math.random(-256,256), math.random(-256,256), math.random(-256,256)))	
		else
			self:Remove()
		end
		self.LifeTime = CurTime() + math.Rand(3,4)
		self.UltActive = false
		
		local dmg = DamageInfo()
		dmg:SetDamage(1000)
		dmg:SetDamageType(DMG_BURN)
		dmg:SetAttacker(self.Owner)
		dmg:SetInflictor(self.Owner:GetActiveWeapon())
		
		self.UltDamage = dmg
	end
end
if SERVER then
	function ENT:PhysicsCollide(data)
		self:SetPos(data.HitPos)
		self:SetMoveType(MOVETYPE_NONE)
		self:SetSolid( SOLID_NONE )
		self:StopParticles()
		self.Effect:Remove()
		self:EmitSound("weapons/originstaffs/fire/projectile/explo/proj_explo_"..math.random(0,2)..".wav", 360)
		ParticleEffect( self.CollidePCF, data.HitPos, self:GetAngles() )
		self.LifeTime = CurTime() + 10
		self.UltActive = true
	end
end

function ENT:Think()
	if self.UltActive then
		for k, v in pairs(ents.FindInSphere(self:GetPos(), 72)) do
			if v:IsNPC() or v:IsNextBot() then
				v:TakeDamageInfo(self.UltDamage)
			end
		end
	end
	if SERVER and self.LifeTime < CurTime() then
		self:StopParticles()
		SafeRemoveEntity(self)
	end
end
