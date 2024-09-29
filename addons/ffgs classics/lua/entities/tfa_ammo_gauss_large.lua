ENT.Model = "models/tfa/doom/props/ammo/ammo_plasma_large.mdl"
ENT.Type = "anim"
ENT.Category = "TFA DOOM"
ENT.Spawnable = true
ENT.AdminOnly = false

ENT.PrintName = "Plasma Ammo (Large)"
ENT.Author = "TFA"
ENT.Contact = "https://steamcommunity.com/profiles/76561198161775645/"
ENT.Purpose = "Additional ammo"
ENT.RenderGroup = RENDERGROUP_OPAQUE

ENT.AmmoType = TFA_GAUSS_AMMO or "doom_plasma"
ENT.AmmoCount = 60

if SERVER then
	AddCSLuaFile()
end

function ENT:SpawnFunction(ply, tr, classname)
	if (not tr.Hit) then return end
	local pos = tr.HitPos + tr.HitNormal * 16
	local ent = ents.Create(classname)
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	ent.Class = classname
	ent.Spawner = ply

	return ent
end

function ENT:Initialize()
	self.Class = self:GetClass()
	self:SetModel( self.Model )
	self:DrawShadow(true)

	if SERVER then
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_WEAPON )

		local phys = self:GetPhysicsObject()

		if (phys:IsValid()) then
			phys:Wake()
		end

		self:SetTrigger(true)
	end
end

function ENT:StartTouch( ent )
	if IsValid(ent) and ent.IsPlayer and ent:IsPlayer() then
		if ent:HasWeapon("tfa_doom_gauss") then
			ent:GiveAmmo(self.AmmoCount, ent:GetWeapon("tfa_doom_gauss"):GetPrimaryAmmoType(), false )
		else
			ent:GiveAmmo(self.AmmoCount, self.AmmoType, false )
		end
		self:EmitSound("TFA_DOOM.Plasma_Ammo_Pickup")
		self:Remove()
	end
end

function ENT:OnTakeDamage( dmginfo )

	self:TakePhysicsDamage( dmginfo )

end