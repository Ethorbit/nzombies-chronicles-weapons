function EFFECT:Init(data)
	local pos = data:GetOrigin()
	local norm = data:GetNormal()
	ParticleEffect("gauss_explosion",pos,norm:Angle())
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end