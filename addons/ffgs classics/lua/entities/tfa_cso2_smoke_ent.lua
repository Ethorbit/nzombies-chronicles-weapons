ENT.PrintName = "CS:O2 Flashbang"
ENT.Spawnable = false
ENT.Type = "anim"
ENT.AdminOnly = true
ENT.Category = "TFA CS:O2"
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.DisableDuplicator = true

if SERVER then
	AddCSLuaFile()
end

ENT.Delay = 3

function ENT:Initialize()
	if CLIENT then return end
	self:SetModel("models/weapons/tfa_cso2/w_smokegrenade_thrown.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Wake()
	end

	self:SetFriction(3)
	self.timeleft = CurTime() + self.Delay

	if SERVER then
		timer.Simple(30, function()
			if IsValid(self) then
				self:Remove()
			end
		end)
	end
end

function ENT:Think()
	if CLIENT then return end

	if self.timeleft < CurTime() and not self.deactivated then
		self:Explosion()
	end

	self:NextThink(CurTime())

	return true
end

function ENT:EntityFacingFactor(ent)
	local dir = ent:EyeAngles():Forward()
	local facingdir = (self:GetPos() - (ent.GetShootPos and ent:GetShootPos() or ent:GetPos())):GetNormalized()

	return (facingdir:Dot(dir) + 1) / 2
end

function ENT:EntityFacingUs(ent)
	local dir = ent:EyeAngles():Forward()
	local facingdir = (self:GetPos() - (ent.GetShootPos and ent:GetShootPos() or ent:GetPos())):GetNormalized()
	if facingdir:Dot(dir) > -0.25 then return true end
end

function ENT:Explosion()
	if CLIENT then return end
	self:EmitSound("tfa_cso2_smokegrenade.Explode")
	local fx = EffectData()
	fx:SetAngles( self:GetAngles() )
	fx:SetOrigin( self:GetPos() )
	util.Effect( "tfa_cso2_smoke", fx )
	self.deactivated = true
end

function ENT:PhysicsCollide(data, phys)
	if data.Speed > 60 then
		self:EmitSound(Sound("tfa_cso2_flashbang.Bounce"))
		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal) * 0.25
		phys:ApplyForceCenter(impulse)
	end
end