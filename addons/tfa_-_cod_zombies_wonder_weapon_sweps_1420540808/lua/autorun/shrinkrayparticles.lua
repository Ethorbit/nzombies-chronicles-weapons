game.AddParticles("particles/nzc_babygun_fx.pcf")
PrecacheParticleSystem("babygun_muzzle")	-- Muzzle Flash particle
PrecacheParticleSystem("babygun_muzzlesmoke")
PrecacheParticleSystem("babygun_proj")
PrecacheParticleSystem("babygun_ring")
PrecacheParticleSystem("babygun_ring_inverted")
--PrecacheParticleSystem("babygun_impact")

-- -- Moved laggy code into Babygun
--hook.Add("Think","KickBabyGunCheck",function()
-- local babykicker = nil
--     for k,v in pairs(player.GetAll()) do
--         for a,b in pairs(ents.FindInSphere( v:GetPos(), 35 )) do
--             if b:IsNPC() or scripted_ents.GetType( b:GetClass() ) == "nextbot" or b:IsPlayer() and v ~= b then
--                 if b:GetNWString("ShouldKickBaby") == "true" then
--                     local aim = v:GetAimVector()
--                     local force  = aim*(3*500)
--                     if SERVER then
--                         if b:IsNPC() or scripted_ents.GetType( b:GetClass() ) == "nextbot" or b:IsPlayer() then
--                             local OldBoneScale = b:GetModelScale()
-- --                          rag:GetPhysicsObject():ApplyForceCenter(Vector(0,0,900))
--                             if b:GetNWString("CanAddVelocity") == "true" then
--                                 local tr = v:GetEyeTrace();
--                                 local shot_length = tr.HitPos:Length()
--                                 local multiplyscale = math.random(1500,3000)
--                                 local kickSoundTable = {"weapons/zmb/mini/kicked/zmb_mini_kicked01.wav","weapons/zmb/mini/kicked/zmb_mini_kicked02.wav","weapons/zmb/mini/kicked/zmb_mini_kicked03.wav","weapons/zmb/mini/kicked/zmb_mini_kicked04.wav"}
								
-- 								b:EmitSound(kickSoundTable[math.random(1,table.Count(kickSoundTable))])
-- 								timer.Simple(0.1,function()
-- 									b:SetNWString("BabyOnGround","true")
-- 								end)
-- 								b:SetNWString("CanAddVelocity","false")
-- 								if scripted_ents.GetType( b:GetClass() ) == "nextbot" then
-- 									local dmg = DamageInfo()
-- 									dmg:SetDamage(b:Health())
-- 									dmg:SetAttacker(v)
-- 									dmg:SetDamageForce(Vector (aim.x*multiplyscale*3, aim.y*multiplyscale*3, math.random(4000,7000)))
-- 									b:SetPos(b:GetPos()+Vector(0,0,32))
-- 									timer.Simple(0.1,function()
-- 										b:TakeDamageInfo(dmg)
-- 									end)
-- 								else
-- 									b:SetVelocity( Vector(aim.x*multiplyscale,aim.y*multiplyscale,math.random(200,350)) )
-- 									b:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
-- 									b:SetLocalAngularVelocity(Angle(math.random(250,500),math.random(0,5),0))
-- 								end
--                             end
--                         end
--                     end
--                 end
--             end
--         end
    
--     for c,d in pairs(ents.GetAll()) do
 
--         if IsValid(v) and d:IsValid() and d:IsOnGround() and d:GetNWString("BabyOnGround") == "true" and d:GetNWString("IsBaby") == "true" then           
--             local dpos = d:GetPos()    
--             if d:IsNPC() or scripted_ents.GetType( d:GetClass() ) == "nextbot" or d:IsPlayer() then
-- 				local dmg = DamageInfo()
-- 				dmg:SetDamage(d:Health())
-- 				dmg:SetAttacker(v)
-- 				d:TakeDamageInfo(dmg)
--                 d:Remove()
--             end
--             local babyDieTable = {"weapons/zmb/mini/squashed/zmb_mini_squashed01.wav","weapons/zmb/mini/squashed/zmb_mini_squashed02.wav","weapons/zmb/mini/squashed/zmb_mini_squashed03.wav","weapons/zmb/mini/squashed/zmb_mini_squashed04.wav"}
--             d:EmitSound(babyDieTable[math.random(1,table.Count(babyDieTable))])        
 
 
--             local startp = dpos
--             local traceinfo = {start = startp, endpos = startp - Vector(0,0,50), filter = ent, mask = MASK_NPCWORLDSTATIC}
--             local trace = util.TraceLine(traceinfo)
--             local todecal1 = trace.HitPos + trace.HitNormal
--             local todecal2 = trace.HitPos - trace.HitNormal
--             util.Decal("Blood", todecal1, todecal2)    
--             if SERVER then
--                 local gib = ents.Create("ent_gib")
--                 gib:SetPos(dpos + Vector(0,0,1))
--                 gib:Spawn()
--                 local phys = gib:GetPhysicsObject()
--                 if (phys:IsValid()) then
--                     phys:SetVelocity(Vector(math.random(-50,50),math.random(-50,50),150) * math.random(2,3))
--                 end
--             end
--         end
--     end
-- 	end
--end)



hook.Add("EntityTakeDamage", "BabyHit", function(target, dmginfo)
	if dmginfo:GetAttacker():GetNWString("IsBaby") == "true" then
		dmginfo:SetDamage(dmginfo:GetDamage()/5)
	end
end)