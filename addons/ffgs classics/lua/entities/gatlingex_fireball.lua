ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Fireball"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/hunter/misc/sphere1x1.mdl"
ENT.MyModelScale = 1
ENT.Damage = 4000
ENT.Radius = 384
if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()

		local model = self.MyModel and self.MyModel or "models/hunter/misc/sphere1x1.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
	    self:SetMaterial( "phoenix_storms/gear" )		
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
		if (phys:IsValid()) then
			phys:Wake()
		end
	end

	function ENT:Think() -- burn any zombies coming into contact MWAHAHAHAHAHA
		local ents = ents.FindInSphere(self:GetPos(), 80)
		for _,v in pairs(ents) do
			if (IsValid(v) and v:IsValidZombie() and v:Health() > 0 and IsValid(self:GetOwner()) and !v.StarHit) then
				v.StarHit = true
				v:Ignite(3)
				local fireDmg = DamageInfo()
				fireDmg:SetDamage(4000)
				fireDmg:SetDamageType(DMG_BURN)
				fireDmg:SetAttacker(self:GetOwner())
				v:TakeDamageInfo(fireDmg)

				timer.Simple(1, function()
					v.StarHit = false
				end)
			end
		end
	end
	
	function ENT:PhysicsCollide(data, physobj)
		local owent = self.Owner and self.Owner or self

		for _,v in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
			if (IsValid(v) and v:IsValidZombie() and v:Health() > 0 and !v.forceIgniting) then
				v:Ignite(6)
				v.forceIgniting = true
			end
		end

		util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		fx:SetNormal(data.HitNormal)
		util.Effect("exp_gatlingex",fx)
		if SERVER then
		self:EmitSound("Volcanoex.Exp")
		end
		self:Remove()
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end

function ENT:Draw()
render.SetMaterial(Material("sprites/ef_gatlingex_fireball"))
render.DrawSprite(self.Entity:GetPos() + ((Vector(0,0,0))),256,256,Color(255, 255, 255))
end