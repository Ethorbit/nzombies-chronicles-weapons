game.AddParticles("particles/nzc_zapgun_fx.pcf")	-- Make the game load the particle files
game.AddParticles("particles/nzc_zapgun_fx2.pcf")
PrecacheParticleSystem("mwave_muzzleflash_l")
PrecacheParticleSystem("mwave_muzzleflash_r")
PrecacheParticleSystem("zgun1_trail_child")
PrecacheParticleSystem("zgun1_trail")
PrecacheParticleSystem("zgun1_impact")
PrecacheParticleSystem("wgun1_trail_child")
PrecacheParticleSystem("wgun_trail_child_pap")
PrecacheParticleSystem("wgun_impact")
PrecacheParticleSystem("wgun_impact_pap")
PrecacheParticleSystem("rgun1_impact_pap")
PrecacheParticleSystem("rgun1_impact_pap_child")
PrecacheParticleSystem("rgun1_trail_child1_pap")
PrecacheParticleSystem("mwave_pop") -- The smokey effect when an NPC pops, followed by some bloody mist.
-- -tools -nop4

sound.Add(
{
    name = "Weapon_Zapgun.Startreload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_start.wav"
})
sound.Add(
{
    name = "Weapon_Zapgun.Reloading",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_mag_in.wav"
})
sound.Add(
{
    name = "Weapon_Zapgun.Finishreload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_end.wav"
})
sound.Add(
{
    name = "Weapon_Zapgun.Combine",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_join.wav"
})
sound.Add(
{
    name = "Weapon_Zapgun.Seperate",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_separate.wav"
})
sound.Add(
{
    name = "Weapon_Zapgun.Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/microwave_shot.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/microwave_rifle_shot.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Startreload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_rifle_start.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_rifle_mag_out.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_rifle_mag_in.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Futz",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_rifle_futz.wav"
})
sound.Add(
{
    name = "Weapon_Wavegun.Ready",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/zapwavegun/wpn_micro_rld_rifle_power_up.wav"
})