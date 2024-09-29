ENT.PrintName = "CS:O2 C4"
ENT.Spawnable = true
ENT.Type = "anim"
ENT.AdminOnly = true
ENT.Category = "TFA CS:O2"
ENT.RenderGroup = RENDERGROUP_OPAQUE
ENT.DisableDuplicator = true

ENT.TimeGoal = 30
ENT.TimeStart = 1
ENT.TimeRatio = 1 - (1 / ( ENT.TimeGoal * 1.1 ) )

if SERVER then
	AddCSLuaFile()
end

function ENT:Initialize()
	self:SetModel("models/weapons/tfa_cso2/w_c4_planted.mdl")
	if SERVER then
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_WEAPON)

		local phys = self:GetPhysicsObject()

		if phys:IsValid() then
			phys:Wake()
		end
	end
	self:DrawShadow(true)
	self.TimeCreated = CurTime()
	self.Delay = self.TimeStart / ( 1 - self.TimeRatio ) * ( 1 / 1.1 )
	self.CurTime = self.TimeStart
end

function ENT:Think()
	if SERVER then
		self:NextThink( CurTime() + self.CurTime )
		self.CurTime = self.CurTime * self.TimeRatio
		self:EmitSound("tfa_cso2_c4.beep")
		if CurTime() > self.TimeCreated + self.Delay then
			self:Explode()
			self:Remove()
		end
	end
	return true
end

function ENT:Explode()

	local ply = IsValid(self:GetOwner()) and self:GetOwner() or self

	self.Damage = self.mydamage or self.Damage or 400

	ParticleEffect("cso2_c4_01",self:GetPos(),self:GetAngles())

	util.BlastDamage(self, ply, self:GetPos(), math.pow( self.Damage / 100,0.75) * 200, self.Damage )
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
	self:EmitSound("tfa_cso2_c4.Explode")
	self:Remove()
end

function ENT:Draw()
	self:DrawModel()
end