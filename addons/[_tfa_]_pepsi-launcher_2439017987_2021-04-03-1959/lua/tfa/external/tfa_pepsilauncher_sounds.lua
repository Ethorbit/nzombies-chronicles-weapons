local path = "weapons/tfa_cursed_pepsi_launcher/"
local pref = "PepsiLauncher"
local hudcolor = Color(255, 255, 255, 255)

TFA.AddWeaponSound(pref .. ".LatchOpen", path .. "martini_henry_boltforward.wav")
TFA.AddWeaponSound(pref .. ".CanOut", path .. "pepsi_launcher_out_can.wav")
TFA.AddWeaponSound(pref .. ".CanIn", path .. "pepsi_launcher_insert_can.wav")
TFA.AddWeaponSound(pref .. ".ActionClosed", path .. "martini_henry_boltback.wav")

if killicon and killicon.Add then
	killicon.Add("pepsi_can_lol", "vgui/hud/tfa_pepsi_can", hudcolor)
end