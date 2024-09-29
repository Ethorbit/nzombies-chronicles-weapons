-- Made by Ethorbit for smaller explosion effects for use with FFGS M2 and AK47 full-auto explosive weapons

function EFFECT:Init( data )
	local vOffset = data:GetOrigin() + Vector( math.random(10, -10), math.random(10, -10), math.random(-20, -60) )
	local vAngle = data:GetAngles()
	local emitter = ParticleEmitter( vOffset, false )
		for i=0,4 do
			local particle = emitter:Add( "effects/fire_cloud1", vOffset )
			if particle then
				particle:SetAngles( Angle(math.random(1, 100), math.random(1, 100), math.random(1, 100)) )
				particle:SetVelocity( Vector( 0, 0, 1 ) )
				particle:SetLifeTime( 0 )
				particle:SetDieTime( 0.2 )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( 111.6 )
				particle:SetStartLength( 111 )
				particle:SetEndSize( math.random(50, 111) )
				particle:SetEndLength( math.random(50, 111) )
			end
		end
	emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end