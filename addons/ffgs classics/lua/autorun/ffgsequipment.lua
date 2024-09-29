local hookName = CLIENT and "InitPostEntity" or "Initialize"

local function AddEquipment()
    -- Knives
    nzSpecialWeapons:AddKnife( "tfa_cso_beam_sword", false, 0.80 )
    nzSpecialWeapons:AddKnife( "tfa_cso_kujang", false, 0.80 )
    nzSpecialWeapons:AddKnife( "tfa_cso_serpent_blade", false, 0.80 )
    nzSpecialWeapons:AddKnife( "tfa_cso_snap_blade", false, 0.70 )
    nzSpecialWeapons:AddKnife( "tfa_cso_dualnata", false, 1.3 )
    nzSpecialWeapons:AddKnife( "tfa_cso_crowbarcraft", false, 1.2 )
    nzSpecialWeapons:AddKnife( "tfa_cso_dreadnova", false, 0.90 )

    -- Grenades
    nzSpecialWeapons:AddGrenade( "nz_m24grenade", 4, false, 0.85, false, 0.4 )
    nzSpecialWeapons:AddGrenade( "nz_chaingrenade", 4, false, 0.85, false, 0.4, 1500 )
    nzSpecialWeapons:AddGrenade( "nz_heartbomb", 4, false, 0.85, false, 0.4, 4000 )
    nzSpecialWeapons:AddGrenade( "nz_holybomb", 4, false, 0.85, false, 0.4, 1000 )
    nzSpecialWeapons:AddGrenade( "nz_plasmagrenade", 4, false, 0.85, false, 0.4 )
    nzSpecialWeapons:AddGrenade( "nz_trinity_knockback", 4, false, 0.5, false, 0.2, 3000 )

    -- Special Grenades
    nzSpecialWeapons:AddSpecialGrenade( "nz_trinity_stun", 3, false, 0.5, false, 0.4 )
    nzSpecialWeapons:AddSpecialGrenade( "nz_trinity_flame", 3, false, 0.5, false, 0.4 )
end
hook.Add(hookName, "FFGSEquipment235235", AddEquipment)
