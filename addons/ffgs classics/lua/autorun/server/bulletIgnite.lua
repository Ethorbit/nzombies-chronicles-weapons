hook.Add("EntityTakeDamage", "NZIgniteBullets", function(target, dmginfo)
    local owner = dmginfo:GetAttacker()
    local inflictor = dmginfo:GetInflictor()
    if (IsValid(target) and target:IsValidZombie() and IsValid(owner) and owner:IsPlayer() and IsValid(inflictor) and inflictor:IsWeapon()) then
        local wep = owner:GetActiveWeapon()
        if (IsValid(wep) and wep.AllowIgnite) then
            local igniteChance = isnumber(wep.IgniteChance) and wep.IgniteChance or 100
            if (math.random(100) <= igniteChance) then
                local igniteDmg = isnumber(wep.IgniteDamage) and wep.IgniteDamage or 10
                local igniteDur = isnumber(wep.IgniteDuration) and wep.IgniteDuration or 10
                local igniteRad = isnumber(wep.IgniteRadius) and wep.IgniteRadius or 0
                local zombies = ents.FindInSphere(target:GetPos(), igniteRad)
                table.insert(zombies, zombie)

                for _,v in pairs(zombies) do
                    if (IsValid(v) and v:IsValidZombie() and v:Health() > 0 and !v.Igniting) then
                        v:Ignite(igniteDur)
                        v.Igniting = true
                        local alias = ("zombie" .. v:EntIndex() .. " igniting")
                        timer.Destroy(alias)
                        timer.Create(alias, 1, igniteDur, function()
                            if (IsValid(v) and v:IsValidZombie() and v:Health() > 0) then
                                local afterburndmg = DamageInfo()
                                afterburndmg:SetDamage(igniteDmg)
                                afterburndmg:SetAttacker(owner)
                                afterburndmg:SetInflictor(owner)
                                v:TakeDamageInfo(afterburndmg)
                            end
                        end)

                        timer.Simple(igniteDur + 0.1, function()
                            if (IsValid(v) and v:Health() > 0) then
                                v.Igniting = false
                                v:Ignite(0)
                            end
                        end)
                    end
                end
            end
        end
    end
end)