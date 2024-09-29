sound.Add(
{
    name = "Weapon_MS.MagOut",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/fly_colt45_mag_out.wav"
})

sound.Add(
{
    name = "Weapon_MS.MagIn",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/fly_colt45_mag_in.wav"
})

sound.Add(
{
    name = "Weapon_MS.SlideBack",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/fly_colt45_slide_back.wav"
})

sound.Add(
{
    name = "Weapon_MS.SlideForward",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/fly_colt45_slide_forward.wav"
})

hook.Add("PlayerUse", "UCantPaPMnS", function(ply, ent)
	if IsValid(ply:GetActiveWeapon()) then
		if ply:GetActiveWeapon():GetClass() == "tfa_mustangandsally" and ent:GetClass() == "perk_machine" then
			if ent:GetPerkID() == "pap" then
				return false
			end
		end
	end
end)