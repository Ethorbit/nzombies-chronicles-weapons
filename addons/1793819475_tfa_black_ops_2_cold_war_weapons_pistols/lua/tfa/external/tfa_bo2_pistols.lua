TFA.AddWeaponSound("Weapon_BO2_pistols.Magout", "weapons/bo2/pistols/magout.wav")
TFA.AddWeaponSound("Weapon_BO2_pistols.Magin", "weapons/bo2/pistols/magin.wav")
TFA.AddWeaponSound("Weapon_BO2_pistols.SlideBack", "weapons/bo2/pistols/slideback.wav")
TFA.AddWeaponSound("Weapon_BO2_pistols.Slide", "weapons/bo2/pistols/slide.wav")

--decay
TFA.AddFireSound("Weapon_BO2_pistols.TailOutside", {"weapons/bo2/pistols/wpn_pistol_decay_ext.wav"}, true, ")")
TFA.AddFireSound("Weapon_BO2_pistols.TailInside", {"weapons/bo2/pistols/wpn_pistol_decay_int.wav"}, true, ")")

--python
TFA.AddWeaponSound("Weapon_BO2_python.open", "weapons/bo2/pistols/fly_357_open.wav")
TFA.AddWeaponSound("Weapon_BO2_python.empty", "weapons/bo2/pistols/fly_357_empty.wav")

TFA.AddFireSound("Weapon_BO2_python.fire", {"weapons/bo2/pistols/wpn_357_fire_plr.wav"}, true, ")")


TFA.AddFireSound("Weapon_BO2_python.shellin", {"weapons/bo2/pistols/fly_357_single_bullet_00.wav", "weapons/bo2/pistols/fly_357_single_bullet_01.wav"}, true, ")")


TFA.AddWeaponSound("Weapon_BO2_python.close", "weapons/bo2/pistols/fly_357_close.wav")
TFA.AddWeaponSound("Weapon_BO2_python.spin", "weapons/bo2/pistols/fly_357_spin.wav")
TFA.AddWeaponSound("Weapon_BO2_python.load", "weapons/bo2/pistols/fly_357_load.wav")

--firing sounds
TFA.AddFireSound("Weapon_BO2_pistols.fire_light", {"weapons/bo2/pistols/fire_light.wav"}, true, ")")
TFA.AddFireSound("Weapon_BO2_pistols.fire_heavy", {"weapons/bo2/pistols/fire_heavier.wav"}, true, ")")


--silenced firing
TFA.AddFireSound("Weapon_BO2_pistols.silenced", {"weapons/bo2/pistols/wpn_fiveseven_sil_shot_plr.wav"}, true, ")")

if CLIENT then
killicon.Add( "tfa_bo2_m1911", "vgui/killicons/tfa_bo2_m1911", Color( 255, 0, 0, 255 ) )
killicon.Add( "tfa_bo2_python", "vgui/killicons/tfa_bo2_python", Color( 255, 0, 0, 255 ) )
killicon.Add( "tfa_bo2_browning_hp", "vgui/killicons/tfa_bo2_browning_hp", Color( 255, 0, 0, 255 ) )
end 