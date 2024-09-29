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
	self:SetModel("models/weapons/tfa_cso2/w_flashbang_thrown.mdl")
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
	self:EmitSound("tfa_cso2_flashbang.Explode")
	local tr = {}
	tr.start = self:GetPos()
	tr.mask = MASK_SOLID

	for k, v in pairs(player.GetAll()) do
		tr.endpos = v:GetShootPos()
		tr.filter = {self, v, v:GetActiveWeapon()}
		local traceres = util.TraceLine(tr)

		if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
			local dist = v:GetShootPos():Distance(self:GetPos())
			v.SetNW2Float = v.SetNW2Float or v.SetNWFloat --Incase Rubat deprecates and I'm gone
			v:SetNW2Float("LastFlashCSO2", CurTime())
			v:SetNW2Float("FlashDistanceCSO2", dist )
			v:SetNW2Float("FlashFactorCSO2", self:EntityFacingFactor(v))
			if v:GetShootPos():Distance(self:GetPos()) < cso2_flashdistance then
				v:SetDSP( 35 + math.ceil( math.Clamp( ( dist - cso2_flashdistancefade ) / ( cso2_flashdistance - cso2_flashdistancefade ) * 2 , 0, 2) ) )
			end
		end
	end

	for k, v in pairs(ents.FindByClass("npc_*")) do
		if self:EntityFacingUs(v) then
			tr.endpos = v.GetShootPos and v:GetShootPos() or v:GetPos()
			tr.filter = {self, v, v.GetActiveWeapon and v:GetActiveWeapon() or v}
			local traceres = util.TraceLine(tr)

			if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
				local flashdistance = tr.endpos:Distance(self:GetPos())
				local flashtime = CurTime()
				local distancefac = (1 - math.Clamp((flashdistance - cso2_flashdistance + cso2_flashdistancefade) / cso2_flashdistancefade, 0, 1))
				local intensity = (1 - math.Clamp(((CurTime() - flashtime) / distancefac - cso2_flashtime + cso2_flashfade) / cso2_flashfade, 0, 1))

				if intensity > 0.8 then
					if v.ClearSchedule then
						v:ClearSchedule()
					end

					if v.SetEnemy then
						v:SetEnemy(nil)
					end

					if v.AddEntityRelationship and IsValid(self.Owner) then
						local oldrel = v.GetRelationship and v:GetRelationship(self.Owner) or ((IsFriendEntityName(v:GetClass()) and not game.GetMap() == "gm_raid") and D_LI or D_HT)
						v:AddEntityRelationship(self.Owner, D_NU, 99)

						timer.Simple(cso2_flashtime / 2, function()
							if IsValid(v) and v:IsNPC() and IsValid(self) and IsValid(self.Owner) then
								v:AddEntityRelationship(self.Owner, oldrel, 99)
							end
						end)
					end

					if v.ClearEnemyMemory then
						v:ClearEnemyMemory()
					end
				end
			end
		end
	end

	self.deactivated = true
end

function ENT:PhysicsCollide(data, phys)
	if data.Speed > 60 then
		self:EmitSound(Sound("tfa_cso2_flashbang.Bounce"))
		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal) * 0.25
		phys:ApplyForceCenter(impulse)
	end
end