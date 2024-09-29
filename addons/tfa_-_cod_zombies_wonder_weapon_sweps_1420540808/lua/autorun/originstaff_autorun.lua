--AddCSLuaFile("autorun/particle_additions.lua")

-- -tools -nop4
sound.Add(
{
    name = "Weapon_Fire.Raise",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/1straise_fire.wav"
})
sound.Add(
{
    name = "Weapon_Lightning.Raise",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/1straise_lightning.wav"
})
sound.Add(
{
    name = "Weapon_Water.Raise",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/1straise_water.wav"
})
sound.Add(
{
    name = "Weapon_Air.Raise",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/1straise_air.wav"
})
sound.Add(
{
    name = "Weapon_OriginStaff.Startreload",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/reload_clipout.wav"
})
sound.Add(
{
    name = "Weapon_OriginStaff.Reloading",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/reload_clipin.wav"
})
sound.Add(
{
    name = "Weapon_OriginStaff.Finishreload",
    channel = CHAN_ITEM,
    volume = 1.0,
    soundlevel = 80,
    sound = "weapons/originstaffs/reload_ready.wav"
})

game.AddParticles("particles/nzc_origins_staves.pcf")
PrecacheParticleSystem("originstaff_lightning_muzzle")
PrecacheParticleSystem("originstaff_lightning_proj")
PrecacheParticleSystem("originstaff_lightning_impact")
PrecacheParticleSystem("originstaff_wind_muzzle")
PrecacheParticleSystem("originstaff_wind_impact")
PrecacheParticleSystem("originstaff_fire_muzzle")
PrecacheParticleSystem("originstaff_fire_proj")
PrecacheParticleSystem("originstaff_fire_impact")
PrecacheParticleSystem("originstaff_ice_muzzle")
PrecacheParticleSystem("originstaff_ice_proj")
PrecacheParticleSystem("originstaff_ice_impact")

hook.Add("EntityTakeDamage", "IceStaffBreak", function(target, dmginfo)
	if target:GetNWBool("icestaffed") and dmginfo:GetDamage() > target:Health() then
		dmginfo:SetDamageType(DMG_REMOVENORAGDOLL)
		target:EmitSound("weapons/wintershowl/shatter"..math.random(0,1)..".ogg")
		if target:IsNPC() then
			target:SetSchedule(SCHED_NONE)
		end
	end
end)
hook.Add("PlayerLoadout", "IceStaffRespawn", function(ply)
	if ply:GetNWBool("icestaffed")then
		ply:SetMaterial("")
		ply:Freeze(false)
		ply:SetNWBool("icestaffed", false)
	end
end)