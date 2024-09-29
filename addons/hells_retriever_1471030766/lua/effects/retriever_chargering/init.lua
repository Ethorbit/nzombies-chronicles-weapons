function EFFECT:Init(data)
	self.Pos = data:GetOrigin()
	local dynlight = DynamicLight(0)
	dynlight.Pos = self.Pos
	dynlight.Size = 512
	dynlight.Decay = 1024
	dynlight.R = 100
	dynlight.G = 10
	dynlight.B = 10
	dynlight.Brightness = 5
	dynlight.DieTime = CurTime()+1
	self:SetNoDraw(true)
end