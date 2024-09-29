EFFECT.TracerName = "weapon_gauss_rail_normal"

function EFFECT:Init(data)
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.EndPos = data:GetOrigin()
	if self.WeaponEnt:GetClass() == "viewmodel" or self.WeaponEnt:GetClass() == "predicted_viewmodel" then
		local ply = self.WeaponEnt:GetOwner()
		if IsValid(ply) and ply.GetActiveWeapon then
			self.WeaponEnt = ply:GetActiveWeapon()
		end
	end
	if data:GetMagnitude() > 0.5 then self.WeaponEnt = nil end

	if IsValid(self.WeaponEnt) and self.Attachment > 0 then
		local ply = self.WeaponEnt.Owner
		if self.WeaponEnt.Scoped and self.WeaponEnt.IsFirstPerson and self.WeaponEnt:IsFirstPerson() and ply == LocalPlayer() and self.WeaponEnt:IsCurrentlyScoped() then
			self.StartPos = ply:GetShootPos() - ply:EyeAngles():Up() * 5
			self.WeaponEnt = nil
		else
			if self.WeaponEnt.IsFirstPerson and self.WeaponEnt:IsFirstPerson() then
				self.StartPos = self:GetTracerShootPos(data:GetStart(), self.WeaponEnt, self.Attachment)
			else
				local angpos = self.WeaponEnt:GetAttachment( self.Attachment )
				if angpos.Pos then
					self.StartPos = angpos.Pos
				else
					self.StartPos = self:GetTracerShootPos(data:GetStart(), self.WeaponEnt, self.Attachment)
				end
			end
		end
	else
		self.StartPos = data:GetStart()
	end

	util.ParticleTracer( self.TracerName, self.StartPos, self.EndPos, false )
--[[
	if IsValid(self.WeaponEnt) and self.WeaponEnt:IsWeapon() then
		if IsValid(self.WeaponEnt.Owner) and self.WeaponEnt.Owner == LocalPlayer() and self.WeaponEnt:IsFirstPerson() then
			self.WeaponEnt = self.WeaponEnt.OwnerViewModel
		end
		TFA.ParticleTracer( self.TracerName, self.StartPos, self.EndPos, false, self.WeaponEnt, self.Attachment)
	else
		TFA.ParticleTracer( self.TracerName, self.StartPos, self.EndPos, false )
	end
	]]--
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
