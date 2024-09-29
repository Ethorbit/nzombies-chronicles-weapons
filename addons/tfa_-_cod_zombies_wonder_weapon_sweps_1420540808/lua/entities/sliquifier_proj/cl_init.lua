include("shared.lua")
function ENT:Draw()
	self:EmitSound("weapons/slipgun/slipgun_splash_0.wav")
	self.Entity:DrawModel()
end
function ENT:Think()
end

function ENT:IsTranslucent()
	return true
end