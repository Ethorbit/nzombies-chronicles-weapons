

function EFFECT:Init(data)
	
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()

	local emitter = ParticleEmitter(self.Position)
		
		local particle = emitter:Add("sprites/heatwave", self.Position)
		particle:SetVelocity(80*self.Forward + 20*VectorRand())
		particle:SetDieTime(math.Rand(0.15,0.2))
		particle:SetStartSize(math.random(15,19))
		particle:SetEndSize(0)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetAirResistance(160)

		for i=0,4 do
		local particle = emitter:Add("particle/smokesprites_000"..math.random(1,9), self.Position)
		particle:SetVelocity(100*i*self.Forward)
		particle:SetDieTime(math.Rand(0.1,0.5))
		particle:SetStartAlpha(math.Rand(20,25))
		particle:SetEndAlpha(0)
		particle:SetStartSize(math.random(6,8))
		particle:SetEndSize(math.Rand(30,40))
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(170,170,170)
		particle:SetAirResistance(350)
		end
		
		for i=-1,1 do 
		local particle = emitter:Add("particle/smokesprites_000"..math.random(1,9), self.Position)
		particle:SetVelocity(80*i*self.Right)
		particle:SetDieTime(math.Rand(0.2,0.3))
		particle:SetStartAlpha(math.Rand(50,60))
		particle:SetEndAlpha(0)
		particle:SetStartSize(math.random(2,3))
		particle:SetEndSize(math.Rand(14,16))
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(200,200,200)
		particle:SetAirResistance(160)
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/muzzleflash"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.06)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(7-i)
		particle:SetEndSize(15-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end

//////// BACKBLAST PART

		for i=0,30 do
		local particle = emitter:Add("particle/smokesprites_000"..math.random(1,9), self.Position-(self.Forward*60) )
		particle:SetVelocity( (math.random(-250,30)*self.Forward) + (math.random(0,150)*VectorRand()) )
		particle:SetDieTime(math.Rand(0.3,2.5))
		particle:SetStartAlpha(math.Rand(40,50))
		particle:SetEndAlpha(0)
		particle:SetStartSize(math.random(10,15))
		particle:SetEndSize(math.Rand(50,70))
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(170,170,170)
		particle:SetAirResistance(150)
		end

		for i=0,3 do
		local particle = emitter:Add("effects/muzzleflash"..math.random(1,4), self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.09)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(60)
		particle:SetEndSize(0)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(255,255,255)
		end

		for i=0,5 do
		local particle = emitter:Add("effects/fire_cloud1", self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand()*20 )
		particle:SetDieTime(0.10)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(1)
		particle:SetEndSize(50)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(255,255,255)
		end

	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



