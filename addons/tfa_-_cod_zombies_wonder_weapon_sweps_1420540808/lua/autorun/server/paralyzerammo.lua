-- Regenerates Paralyzer ammo even when not being used
hook.Add("PlayerSwitchWeapon", "NZParalyzerAmmoRegen", function(ply, oldwep, newwep)
    if (!IsValid(oldwep)) then
        if (IsValid(ply)) then
            timer.Destroy("ParalyzerRegen" .. ply:SteamID())
        end
    return end
  
    if (oldwep:GetClass() == "tfa_paralyzer") then -- Start tracking its ammo
        timer.Create("ParalyzerRegen" .. ply:SteamID(), 0.15, 0, function()
            if (!IsValid(oldwep) or !IsValid(ply) or !ply:Alive()) then
                if (ply and ply:SteamID()) then
                    timer.Destroy("ParalyzerRegen" .. ply:SteamID())
                end
            return end
                
            oldwep.regennedammo = oldwep.regennedammo != nil and oldwep.regennedammo + 1 or 1
        end)
    end

    if (newwep:GetClass() == "tfa_paralyzer") then -- Give the ammo that was regenerated
        timer.Destroy("ParalyzerRegen" .. ply:SteamID())
        
        if (!IsValid(newwep)) then return end
        local curClip = newwep:Clip1()
        if (!curClip) then return end
    
        local regenned = newwep.regennedammo != nil and newwep.regennedammo or 0
        local newclip = math.Clamp(curClip + regenned, 0, newwep.Primary.ClipSize)
        newwep:SetClip1(newclip)
        newwep.regennedammo = 0
    end
end)
