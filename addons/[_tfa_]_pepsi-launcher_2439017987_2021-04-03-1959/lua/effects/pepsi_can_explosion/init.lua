                                             
function EFFECT:Init(plasma)

		local plasmaexplosion = plasma:GetOrigin()
		self.Emitter = ParticleEmitter(plasmaexplosion)
		
		for i=1,24 do

			local smoke = self.Emitter:Add("effects/strange_ice", plasmaexplosion)

			if (smoke) then

				smoke:SetVelocity(VectorRand():GetNormal()*math.random(100, 300))
				smoke:SetRoll(math.Rand(0, 360))
				smoke:SetRollDelta(math.Rand(-2, 2))
				smoke:SetDieTime(1)
				smoke:SetLifeTime(0)
				smoke:SetStartSize(50)
				smoke:SetStartAlpha(155)
				smoke:SetEndSize(100)
				smoke:SetEndAlpha(0)
                                smoke:SetColor( 189, 201, 216 )
				smoke:SetGravity(Vector(0,0,0))

			end

                        local smoke4 = self.Emitter:Add("effects/smoke_doi", plasmaexplosion)

			if (smoke4) then

				smoke4:SetVelocity(VectorRand():GetNormal()*math.random(100, 300))
				smoke4:SetRoll(math.Rand(0, 360))
				smoke4:SetRollDelta(math.Rand(-2, 2))
				smoke4:SetDieTime(1)
				smoke4:SetLifeTime(0)
				smoke4:SetStartSize(155)
				smoke4:SetStartAlpha(255)
				smoke4:SetEndSize(125)
				smoke4:SetEndAlpha(0)
				smoke4:SetGravity(Vector(0,0,0))

			end
			
			local smoke2 = self.Emitter:Add("effects/strange_ice", plasmaexplosion)
			
			if (smoke2) then

				smoke2:SetVelocity(VectorRand():GetNormal()*math.random(50, 100))
				smoke2:SetRoll(math.Rand(0, 360))
				smoke2:SetRollDelta(math.Rand(-2, 2))
				smoke2:SetDieTime(5)
				smoke2:SetLifeTime(0)
				smoke2:SetStartSize(50)
				smoke2:SetStartAlpha(155)
				smoke2:SetEndSize(100)
				smoke2:SetEndAlpha(0)
                                smoke2:SetColor( 189, 201, 216 )
				smoke2:SetGravity(Vector(0,0,0))

			end
			
			local smoke3 = self.Emitter:Add("effects/strange_ice", plasmaexplosion+Vector(math.random(-150,150),math.random(-150,150),0))
			
			if (smoke3) then

				smoke3:SetVelocity(VectorRand():GetNormal()*math.random(50, 100))
				smoke3:SetRoll(math.Rand(0, 360))
				smoke3:SetRollDelta(math.Rand(-2, 2))
				smoke3:SetDieTime(5)
				smoke3:SetLifeTime(0)
				smoke3:SetStartSize(50)
				smoke3:SetStartAlpha(155)
				smoke3:SetEndSize(100)
				smoke3:SetEndAlpha(0)
                                smoke3:SetColor( 189, 201, 216 )
				smoke3:SetGravity(Vector(0,0,0))

			end
			
			local heat = self.Emitter:Add("sprites/heatwave", plasmaexplosion+Vector(math.random(-150,150),math.random(-150,150),0))
			
			if (heat) then

				heat:SetColor(0, 25, 50)
				heat:SetVelocity(VectorRand():GetNormal()*math.random(50, 100))
				heat:SetRoll(math.Rand(0, 360))
				heat:SetRollDelta(math.Rand(-2, 2))
				heat:SetDieTime(3)
				heat:SetLifeTime(0)
				heat:SetStartSize(100)
				heat:SetStartAlpha(255)
				heat:SetEndSize(0)
				heat:SetEndAlpha(0)
                                heat:SetColor( 189, 201, 216 )
				heat:SetGravity(Vector(0,0,0))

			end
			
		end
		
		for i=1,72 do
		
			local sparks = self.Emitter:Add("effects/energysplash", plasmaexplosion)
			
			if (sparks) then

				sparks:SetColor(0, 122, 255)
				sparks:SetVelocity(VectorRand():GetNormal()*math.random(300, 500))
				sparks:SetRoll(math.Rand(0, 360))
				sparks:SetRollDelta(math.Rand(-2, 2))
				sparks:SetDieTime(2)
				sparks:SetLifeTime(0)
				sparks:SetStartSize(3)
				sparks:SetStartAlpha(255)
				sparks:SetStartLength(15)
				sparks:SetEndLength(3)
				sparks:SetEndSize(3)
				sparks:SetEndAlpha(255)
                                sparks:SetColor( 189, 201, 216 )
				sparks:SetGravity(Vector(0,0,-800))
				
			end
			
			local sparks2 = self.Emitter:Add("effects/energysplash", plasmaexplosion)
			
			if (sparks2) then

				sparks2:SetColor(0, 122, 255)
				sparks2:SetVelocity(VectorRand():GetNormal()*math.random(400, 800))
				sparks2:SetRoll(math.Rand(0, 360))
				sparks2:SetRollDelta(math.Rand(-2, 2))
				sparks2:SetDieTime(0.4)
				sparks2:SetLifeTime(0)
				sparks2:SetStartSize(5)
				sparks2:SetStartAlpha(255)
				sparks2:SetStartLength(80)
				sparks2:SetEndLength(0)
				sparks2:SetEndSize(5)
				sparks2:SetEndAlpha(0)
                                sparks2:SetColor( 189, 201, 216 ) 
				sparks2:SetGravity(Vector(0,0,0))
				
			end
		
		end
		
		for i=1,8 do
		
			local flash = self.Emitter:Add("effects/combinemuzzle1", plasmaexplosion)
			
			if (flash) then
			
				flash:SetColor(255, 255, 255)
				flash:SetVelocity(VectorRand():GetNormal()*math.random(10, 30))
				flash:SetRoll(math.Rand(0, 360))
				flash:SetDieTime(0.10)
				flash:SetLifeTime(0)
				flash:SetStartSize(195)
				flash:SetStartAlpha(255)
				flash:SetEndSize(285)
				flash:SetEndAlpha(0)
                                flash:SetColor( 189, 201, 216 )
				flash:SetGravity(Vector(0,0,0))		
				
			end
			
			local quake = self.Emitter:Add("effects/splashwake1", plasmaexplosion)
			
			if (quake) then
			
				quake:SetColor(0, 94, 237)
				quake:SetVelocity(VectorRand():GetNormal()*math.random(10, 30))
				quake:SetRoll(math.Rand(0, 360))
				quake:SetDieTime(0.10)
				quake:SetLifeTime(0)
				quake:SetStartSize(320)
				quake:SetStartAlpha(200)
				quake:SetEndSize(370)
				quake:SetEndAlpha(0)
                                quake:SetColor( 97, 199, 250 )
				quake:SetGravity(Vector(0,0,0))		
				
			end
			
			local wave = self.Emitter:Add("sprites/heatwave", plasmaexplosion)
			
			if (wave) then
			
				wave:SetColor(0, 94, 237)
				wave:SetVelocity(VectorRand():GetNormal()*math.random(10, 30))
				wave:SetRoll(math.Rand(0, 360))
				wave:SetDieTime(0.25)
				wave:SetLifeTime(0)
				wave:SetStartSize(320)
				wave:SetStartAlpha(255)
				wave:SetEndSize(370)
				wave:SetEndAlpha(0)
                                wave:SetColor( 56, 138, 255 )
				wave:SetGravity(Vector(0,0,0))
				
			end
		
		end
		
	end

        function EFFECT:Think( )
	        return false	
        end

        function EFFECT:Render()
        end