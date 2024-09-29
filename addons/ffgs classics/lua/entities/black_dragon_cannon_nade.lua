ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Black Dragon Cannon Grenade"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/weapons/tfa_cso/w_cannon_fireball.mdl"
ENT.MyModelScale = 0.1
ENT.Radius = 300
ENT.Papd = false

if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()
		local model = self.MyModel and self.MyModel or "models/weapons/tfa_cso/w_cannon_fireball.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(false)
		self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
		self:SetHealth(1)
		self:SetModelScale(self.MyModelScale,0)
		local phys = self:GetPhysicsObject()
		
		local wep = IsValid(self.Owner) and self.Owner:GetWeapon("tfa_cso_dragoncannon")
		if (wep:HasNZModifier("pap")) then
			self.Papd = true
			self:SetColor(Color(255, 0, 255))
		end

		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(1)
			phys:EnableDrag(false)
			phys:EnableGravity(false)
			phys:SetBuoyancyRatio(0)
		end
	end		

	function ENT:PhysicsCollide(data, physobj)
		self.Entity:EmitSound("Cannon.Exp", self.Pos, 120, 120 )
		local owent = self.Owner and self.Owner or self
		local wep = IsValid(self.Owner) and self.Owner:GetWeapon("tfa_cso_dragoncannon")
		if (IsValid(wep)) then
			if self.Papd then
				util.BlastDamage(self, owent, self:GetPos(), 800, 7000)
			else
				util.BlastDamage(self, owent, self:GetPos(), 400, 2000)
			end
		end

		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		

		--fx:SetNormal(data.HitNormal)
		util.Effect("exp_cannon",fx)
		self:Remove()
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end