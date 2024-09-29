EFFECT.TracerName = "weapon_gauss_rail_siege"

function EFFECT:Init(data)
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.EndPos = data:GetOrigin()
	if data:GetMagnitude() > 0.5 then self.WeaponEnt = nil end

	if IsValid(self.WeaponEnt) and self.Attachment > 0 then
		self.StartPos = self:GetTracerShootPos(data:GetStart(), self.WeaponEnt, self.Attachment)
	else
		self.StartPos = data:GetStart()
	end

	if IsValid(self.WeaponEnt) and self.WeaponEnt:IsWeapon() then
		if IsValid(self.WeaponEnt.Owner) and self.WeaponEnt.Owner == LocalPlayer() and self.WeaponEnt:IsFirstPerson() then
			self.WeaponEnt = self.WeaponEnt.OwnerViewModel
		end
		TFA.ParticleTracer( self.TracerName, self.StartPos, self.EndPos, false, self.WeaponEnt, self.Attachment)
	else
		TFA.ParticleTracer( self.TracerName, self.StartPos, self.EndPos, false )
	end
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
