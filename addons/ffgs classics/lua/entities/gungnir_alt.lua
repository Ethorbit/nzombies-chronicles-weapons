ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Gungnir Alt"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/items/ar2_grenade.mdl"
ENT.MyModelScale = 0
ENT.Damage = 1250
ENT.Radius = 200
if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()

		local model = self.MyModel and self.MyModel or "models/items/ar2_grenade.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(false)
		self:SetHealth(1)
		self:SetModelScale(self.MyModelScale,0)
        local phys = self:GetPhysicsObject()
		if IsValid(phys) then
			phys:Wake()
			phys:SetMass(1)
			phys:EnableDrag(false)
			phys:EnableGravity(false)
			phys:SetBuoyancyRatio(0)
		end
		
		local phys = self:GetPhysicsObject()		
		local phys = self:GetPhysicsObject()
		
		if (phys:IsValid()) then
			phys:Wake()
		end
	end

	function ENT:PhysicsCollide(data, physobj)	
	    local owent = self.Owner and self.Owner or self
		--util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		local zombiesKilled = 0
		for _,v in pairs(ents.FindInSphere(self:GetPos(), 100)) do
			if (IsValid(v) and v:IsValidZombie()) then
				if (zombiesKilled >= 6) then return end
				local dmg = DamageInfo()
				dmg:SetDamage(2500)
				dmg:SetDamageType(DMG_SHOCK)
				dmg:SetInflictor(self.Owner)
				dmg:SetAttacker(self.Owner)
				v:TakeDamageInfo(dmg)
				v:EmitSound("weapons/tesla_gun/bounce"..math.random(2)..".wav")
				zombiesKilled = zombiesKilled + 1
			end
		end

		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		fx:SetNormal(data.HitNormal)
		util.Effect("exp_gungnir_alt",fx)
		self:Remove()
	    self.Entity:EmitSound("weapons/tfa_cso/gungnir/shoot_b_exp.wav", 100, 100 )
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end

function ENT:Draw()
render.SetMaterial(Material("sprites/ef_gungnir_missile"))
render.DrawSprite(self.Entity:GetPos() + ((Vector(0,0,0))),64,64,Color(255, 255, 255))
end