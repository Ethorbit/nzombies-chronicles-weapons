-- Mimics what the melee weapons did in FFGS nZombies to Panzers
-- allows damage to be low but will still instakill panzers

local instakillweps = {
    "tfa_cso_dualsword",
    "tfa_cso_thanatos9",
    "tfa_cso_skull9",
    "tfa_cso_stormgiant",
    "tfa_cso_stormgiant_tw",
    "tfa_cso_runebreaker",
    "tfa_cso_runebreaker_expert"
}

hook.Add("EntityTakeDamage", "FFGSInstaBossKill", function(ent, dmginfo)
    if !IsValid(ent) then return end
    
    if ent:GetClass() == "nz_zombie_boss_panzer" then
        local inflictor = dmginfo:GetInflictor()
        if !IsValid(inflictor) then return end
        if table.HasValue(instakillweps, inflictor:GetClass()) then
            ent.OnInjured = function() end -- Don't let it scale down our damage to 0.1
            dmginfo:SetDamage(ent:Health() * 2)
            dmginfo:SetMaxDamage(ent:Health() * 2)
        end
    end
end)