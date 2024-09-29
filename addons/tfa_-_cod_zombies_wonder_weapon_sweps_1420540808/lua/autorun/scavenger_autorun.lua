game.AddParticles("particles/nzc_scavenger.pcf")
	PrecacheParticleSystem("ubersniper_explosion_base")
	PrecacheParticleSystem("ubersniper_victim_redmist")
game.AddParticles("particles/nzc_neuro_gore.pcf")
	PrecacheParticleSystem("tank_gore")
sound.Add(
{
    name = "Weapon_Scavenger.BoltWindup",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_proj_windup.wav"
})

sound.Add(
{
    name = "Weapon_Scavenger.MagOut",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_mag_out.wav"
})
sound.Add(
{
    name = "Weapon_Scavenger.MagIn",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_mag_in.wav"
})
sound.Add(
{
    name = "Weapon_Scavenger.Beep",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_beep_onfullyreloaded.wav"
})
sound.Add(
{
    name = "Weapon_Scavenger.BoltBack",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_bolt_back.wav"
})
sound.Add(
{
    name = "Weapon_Scavenger.BoltForward",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/ubersniper/ubersniper_bolt_forward.wav"
})
sound.Add({
	name = 			"Weapon_Scavenger.Shoot",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 		"weapons/ubersniper/ubersniper_fire.wav"
})