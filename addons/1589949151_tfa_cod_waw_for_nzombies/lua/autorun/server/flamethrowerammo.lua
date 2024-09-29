-- Regenerates Flamethrower ammo even when not being used
hook.Add("PlayerSwitchWeapon", "NZFlamethrowerAmmoRegen", function(ply, oldwep, newwep)
    if (!IsValid(oldwep)) then
        if (IsValid(ply)) then
            timer.Destroy("FlamethrowerRegen" .. ply:SteamID())
        end
    return end
  
    if (oldwep:GetClass() == "nz_robotnik_waw_m2") then -- Start tracking its ammo
        timer.Create("FlamethrowerRegen" .. ply:SteamID(), 0.1, 0, function()
            if (!IsValid(oldwep) or !IsValid(ply) or !ply:Alive()) then
                if (ply and ply:SteamID()) then
                    timer.Destroy("FlamethrowerRegen" .. ply:SteamID())
                end
            return end
                
            oldwep.regennedammo = oldwep.regennedammo != nil and oldwep.regennedammo + 1 or 1
        end)
    end

    if (newwep:GetClass() == "nz_robotnik_waw_m2") then -- Give the ammo that was regenerated
        timer.Destroy("FlamethrowerRegen" .. ply:SteamID())
        
        if (!IsValid(newwep)) then return end
        local curClip = newwep:Clip1()
        if (!curClip) then return end
    
        local regenned = newwep.regennedammo != nil and newwep.regennedammo or 0
        local newclip = math.Clamp(curClip + regenned, 0, newwep.Primary.ClipSize)
        newwep:SetClip1(newclip)
        newwep.regennedammo = 0
    end
end)