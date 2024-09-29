ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Refined Holy Bomb"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/weapons/tfa_cso/w_holybomb_refined_thrown.mdl"
ENT.MyModelScale = 1
ENT.Damage = 500
ENT.Radius = 250
if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()

		local model = self.MyModel and self.MyModel or "models/weapons/tfa_cso/w_holybomb_refined_thrown.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetHealth(1)
		self:SetModelScale(self.MyModelScale,0)
		
		local phys = self:GetPhysicsObject()
		
		if (phys:IsValid()) then
			phys:Wake()
		end
	end

	function ENT:PhysicsCollide(data, physobj)
		if !self.WidowsWine then
			self:EmitSound("HolyBomb.Explode")
			local owent = self.Owner and self.Owner or self
			util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
			local fx = EffectData()
			fx:SetOrigin(self:GetPos())
			fx:SetNormal(data.HitNormal)
			util.Effect("exp_holybomb_refined",fx)
			self:Remove()
		else
			local zombls = ents.FindInSphere(self:GetPos(), 280)
			for _,v in pairs(zombls) do
				if IsValid(v) and v:IsValidZombie() then
					if (IsValid(self) and !v:Visible(self)) then
						table.RemoveByValue(zombls, v)
					end
				end
			end
			
			local e = EffectData()
			e:SetMagnitude(1.5)
			e:SetScale(20) -- The time the effect lasts
			
			local fx = EffectData()
			fx:SetOrigin(self:GetPos())
			fx:SetMagnitude(1)
			util.Effect("web_explosion", fx)
			
			for k,v in pairs(zombls) do
				if IsValid(v) and v:IsValidZombie() then
					v:ApplyWebFreeze(8)
				end
			end

			self:Remove()
		end
	end
end

if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
end