ENT.PrintName = "CS:O2 Frag Grenade"
ENT.Spawnable = false
ENT.Type = "anim"
ENT.AdminOnly = true
ENT.Category = "TFA CS:O2"
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.DisableDuplicator = true

if SERVER then
	AddCSLuaFile()
end

ENT.Damage = 100
ENT.Delay = 3

function ENT:Initialize()

	if CLIENT then return end

	self:SetModel( "models/weapons/tfa_cso2/w_mk2grenade_thrown.mdl" )

	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Wake()
	end

	self:SetFriction(self.Delay)
	self.killtime = CurTime() + self.Delay
	self:DrawShadow(true)

	self.HasIdle = true
end

function ENT:Think()

	if CLIENT then return end

	if self.killtime < CurTime() then
		self:Explode()
		return false
	end

	self:NextThink(CurTime())
	return true
end

local effectdata, shake

function ENT:Explode()

	if CLIENT then return end

	if not IsValid(self:GetOwner()) then
		self:Remove()

		return
	end

	effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	--util.Effect("HelicopterMegaBomb", effectdata)
	--util.Effect("Explode", effectdata)
	ParticleEffect("cso2_hegrenade_01",self:GetPos(),self:GetAngles(),NULL)
	self.Damage = self.mydamage or self.Damage
	util.BlastDamage(self, self:GetOwner(), self:GetPos(), math.pow( self.Damage / 100,0.75) * 400, self.Damage )
	shake = ents.Create("env_shake")
	shake:SetOwner(self:GetOwner())
	shake:SetPos(self:GetPos())
	shake:SetKeyValue("amplitude", tostring(self.Damage * 20)) -- Power of the shake
	shake:SetKeyValue("radius", tostring( math.pow( self.Damage / 100,0.75) * 400) ) -- Radius of the shake
	shake:SetKeyValue("duration", tostring( self.Damage / 200 )) -- Time of shake
	shake:SetKeyValue("frequency", "255") -- How har should the screenshake be
	shake:SetKeyValue("spawnflags", "4") -- Spawnflags(In Air)
	shake:Spawn()
	shake:Activate()
	shake:Fire("StartShake", "", 0)
	self:EmitSound("tfa_cso2_fraggrenade.Explode")
	self:Remove()
end

function ENT:PhysicsCollide(data, phys)
	if data.Speed > 60 then
		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal) * 0.25
		phys:ApplyForceCenter(impulse)
	end
end

function ENT:OnRemove()
	self.HasIdle = false
end

function ENT:PhysicsCollide(data, phys)
	if data.Speed > 60 then
		self:EmitSound(Sound("tfa_cso2_fraggrenade.Bounce"))
		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal) * 0.25
		phys:ApplyForceCenter(impulse)
	end
end