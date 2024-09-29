ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Black Dragon Cannon Grenade"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/weapons/tfa_cso/w_cannon_fireball.mdl"
ENT.MyModelScale = 0.5
ENT.Damage = 20000
ENT.Radius = 900

if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()
		self.Damage = self.Owner:GetActiveWeapon().Primary.Damage or self.Damage
		local model = self.MyModel and self.MyModel or "models/weapons/tfa_cso/w_cannon_fireball.mdl"
		self.MyModel:SetColor(Color(255, 0, 0))

		local wep = self.Owner and self.Owner:GetActiveWeapon()
		if wep and wep:HasNZModifier("pap") then 
			timer.Simple(0, function()
				wep:EmitSound("chron/nz/effects/pap_laser_shot.wav")
			end)
		end

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
		
		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(1)
			phys:EnableDrag(false)
			phys:EnableGravity(true)
			phys:SetBuoyancyRatio(0)
		end
	end		

	function ENT:PhysicsCollide(data, physobj)
		self.Entity:EmitSound("Cannon.Exp", self.Pos, 120, 120 )
		local owent = self.Owner and self.Owner or self

		if SERVER then
			local explosionEnts = ents.FindInBox(self:GetPos() + Vector(self.Radius, self.Radius, self.Radius), self:GetPos() - Vector(self.Radius, self.Radius, self.Radius))
			for _,v in pairs(explosionEnts) do
				if (IsValid(v) and v:IsValidZombie()) then
					for _,c in pairs(ents.FindInBox(v:GetPos() + Vector(self.Radius, self.Radius, self.Radius), v:GetPos() - Vector(self.Radius, self.Radius, self.Radius))) do
						if (IsValid(c) and c:IsValidZombie()) then
							table.insert(explosionEnts, c)
						end
					end
				end
			end

			for _,v in pairs(explosionEnts) do
				if (IsValid(v)) then
					local fx = EffectData()
					fx:SetOrigin(v:GetPos())
					util.Effect("Explosion",fx)
				end
			end
		end

		--util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		--local fx = EffectData()
		--fx:SetOrigin(self:GetPos())
		--fx:SetNormal(data.HitNormal)
		--util.Effect("Explosion",fx)
		self:Remove()
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end