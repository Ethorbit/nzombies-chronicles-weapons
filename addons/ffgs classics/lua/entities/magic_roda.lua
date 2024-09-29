ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Plasma"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/items/ar2_grenade.mdl"
ENT.MyModelScale = 0
ENT.Damage = 0
ENT.Radius = 86
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
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
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

	function ENT:PhysicsCollide(data, physobj)	
		local entsInRange = ents.FindInSphere(data.HitPos, 90)
		for _,v in pairs(entsInRange) do
			if (IsValid(v) and v:IsPlayer() and (!v.lastHeartStaffed or v.lastHeartStaffed and CurTime() > v.lastHeartStaffed)) then
				v:SetArmor(math.Clamp(v:Armor() + 5, 5, 150))
				v:SetHealth(math.Clamp(v:Health() + 100, 100, v:GetMaxHealth()))
				v.lastHeartStaffed = CurTime() + 0.1
				print(self:GetOwner():Nick() .. " healed " .. v:Nick() .. " with a Heart Staff")
			end
		end

	    local owent = self.Owner and self.Owner or self
		util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		fx:SetNormal(data.HitNormal)
		util.Effect("exp_magic_roda",fx)
		self:Remove()
	    self.Entity:EmitSound("MagicRod.Exp1", self.Pos, 100, 100 )
	end
end

if CLIENT then
	
	function ENT:Draw()
		self:DrawModel()
	end

end

function ENT:Draw()
render.SetMaterial(Material("sprites/magicmg_sprite"))
render.DrawSprite(self.Entity:GetPos() + ((Vector(0,0,0))),64,64,Color(255, 255, 255))
end