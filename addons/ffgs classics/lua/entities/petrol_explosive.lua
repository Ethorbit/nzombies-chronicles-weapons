ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Petro Boomer Canister"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/weapons/tfa_cso/w_petrol.mdl"
ENT.MyModelScale = 1
ENT.Damage = 75
ENT.Radius = 256
if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()

		local model = self.MyModel and self.MyModel or "models/weapons/tfa_cso/w_petrol.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetHealth(1)
		self:SetModelScale(self.MyModelScale,0)
		util.SpriteTrail(self, 0, Color(255,255,255), false, 7, 1, 0.5, 0.125, "trails/smoke.vmt")
		
		local phys = self:GetPhysicsObject()
		
		if (phys:IsValid()) then
			phys:Wake()
		end
	end

	function ENT:PhysicsCollide(data, physobj)
		self.Entity:EmitSound("weapons/tfa_cso/janus1/exp" ..math.random(1, 3) ..".wav", 180, 100 )
		local owent = self.Owner and self.Owner or self
		util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		fx:SetNormal(data.HitNormal)
		util.Effect("exp_janus1",fx)
		--self.Entity:EmitSound("PetrolBoomer.Exp", self.Pos, 100, 100 )

		local owner = self:GetOwner()
		if (IsValid(owner)) then
			local wep = owner:GetWeapon("tfa_cso_petrolboomer")
			if (IsValid(wep)) then
				for k,v in pairs(ents.FindInSphere(self.Entity:GetPos(),200)) do
					local maxLimit
					local zombiesBurned = 0
					if (wep:HasNZModifier("pap")) then maxLimit = 30 else maxLimit = 14 end

					-- if v:IsNPC() or v:IsNextBot() or v:IsPlayer() or v:GetClass() == "prop_physics" then
					-- 	v:Ignite(15)
					-- 	--print("ply")
					-- end
		
					if (IsValid(v) and v:IsValidZombie() and zombiesBurned < maxLimit) then
						v:Ignite(10)
						timer.Create("MolotovBurning" .. v:EntIndex(), 0.1, 100, function()
							if (IsValid(v) and v:Health() > 0) then
								local dmg = DamageInfo()
								dmg:SetDamageType(DMG_BURN)
								dmg:SetDamage(40)
								dmg:SetAttacker(owner)
								v:TakeDamageInfo(dmg)
							end
						end)

						zombiesBurned = zombiesBurned + 1
					end
				end
				self:Remove()
			end
		end
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end