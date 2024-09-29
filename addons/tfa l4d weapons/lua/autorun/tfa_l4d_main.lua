--- Particles -- 
game.AddParticles("particles/wick_l4d_particles_groundfire.pcf")
PrecacheParticleSystem("molotov_explosion")
PrecacheParticleSystem("molotov_explosion_child_burst")
PrecacheParticleSystem("molotov_explosion_child_streams")
PrecacheParticleSystem("molotov_groundfire")
PrecacheParticleSystem("molotov_groundfire_child_base")
PrecacheParticleSystem("molotov_groundfire_child_tips")
PrecacheParticleSystem("molotov_groundfire_low")
PrecacheParticleSystem("molotov_groundfire_primary")

game.AddParticles("particles/wick_l4d_particles_molotov.pcf")
PrecacheParticleSystem("weapon_molotov_fp")
PrecacheParticleSystem("weapon_molotov_fp_fire")
PrecacheParticleSystem("weapon_molotov_fp_fire2")
PrecacheParticleSystem("weapon_molotov_fp_fire3")
PrecacheParticleSystem("weapon_molotov_fp_fire3b")
PrecacheParticleSystem("weapon_molotov_fp_fire3c")
PrecacheParticleSystem("weapon_molotov_fp_fire3d")
PrecacheParticleSystem("weapon_molotov_fp_fire_blue")
PrecacheParticleSystem("weapon_molotov_fp_glow")
PrecacheParticleSystem("weapon_molotov_fp_smoke")
PrecacheParticleSystem("weapon_molotov_fp_wick")
PrecacheParticleSystem("weapon_molotov_held")
PrecacheParticleSystem("weapon_molotov_thrown")
PrecacheParticleSystem("weapon_molotov_thrown_child1")
PrecacheParticleSystem("weapon_molotov_thrown_child3")

game.AddParticles("particles/wick_l4d_particle_pipe.pcf")
PrecacheParticleSystem("weapon_pipebomb")
PrecacheParticleSystem("weapon_pipebomb_blinking_light")
PrecacheParticleSystem("weapon_pipebomb_blinking_light_b")
PrecacheParticleSystem("weapon_pipebomb_blinking_light_c")
PrecacheParticleSystem("weapon_pipebomb_child_dirt")
PrecacheParticleSystem("weapon_pipebomb_child_explosion")
PrecacheParticleSystem("weapon_pipebomb_child_fire")
PrecacheParticleSystem("weapon_pipebomb_child_firesmoke")
PrecacheParticleSystem("weapon_pipebomb_child_flash_mod")
PrecacheParticleSystem("weapon_pipebomb_child_flash_screen")
PrecacheParticleSystem("weapon_pipebomb_child_shrapnel")
PrecacheParticleSystem("weapon_pipebomb_child_smoke")
PrecacheParticleSystem("weapon_pipebomb_child_smokering")
PrecacheParticleSystem("weapon_pipebomb_child_smokering2")
PrecacheParticleSystem("weapon_pipebomb_child_sparks")
PrecacheParticleSystem("weapon_pipebomb_child_sparks2")
PrecacheParticleSystem("weapon_pipebomb_fuse")
PrecacheParticleSystem("weapon_pipebomb_fuse_fp")
PrecacheParticleSystem("weapon_pipebomb_fuse_glow_1")
PrecacheParticleSystem("weapon_pipebomb_fuse_glow_2")
PrecacheParticleSystem("weapon_pipebomb_fuse_glow_3")
PrecacheParticleSystem("weapon_pipebomb_fuse_glow_3_fp")
PrecacheParticleSystem("weapon_pipebomb_fuse_smoke")
PrecacheParticleSystem("weapon_pipebomb_fuse_smoke_2")
PrecacheParticleSystem("weapon_pipebomb_generic_smokestreak_parent")
PrecacheParticleSystem("weapon_pipebomb_shrapnel_fire_child")
PrecacheParticleSystem("weapon_pipebomb_shrapnel_smoke_child")

sound.Add( {
	name = "TFA_L4D1_MOLOTOV.LOOP",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/molotov/fire_idle_loop_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_MOLOTOV.IGNITE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/molotov/fire_ignite_5.wav"
} )

sound.Add( {
	name = "TFA_L4D1_MOLOTOV.DETONATE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = {"wick/weapons/l4d1/molotov/molotov_detonate_1.wav", "wick/weapons/l4d1/molotov/molotov_detonate_2.wav", "wick/weapons/l4d1/molotov/molotov_detonate_3.wav", "wick/weapons/l4d1/molotov/molotov_detonate_4.wav"}
} )

sound.Add( {
	name = "TFA_L4D1_MOLOTOV.FLY",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/molotov/fire_loop_1.wav"
} )
sound.Add( {
	name = "TFA_L4D1_MOLOTOV.IGNITE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = {"wick/weapons/l4d1/molotov/fire_ignite_1.wav", "wick/weapons/l4d1/molotov/fire_ignite_2.wav", "wick/weapons/l4d1/molotov/fire_ignite_2.wav", "wick/weapons/l4d1/molotov/fire_ignite_4.wav", "wick/weapons/l4d1/molotov/fire_ignite_5.wav"}
} )

sound.Add( {
	name = "TFA_L4D1_PIPE.BIP",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pipe/beep.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PIPE.BOUNCE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 75,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pipe/he_bounce-1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PIPE.EXPLODE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = {"^wick/weapons/l4d1/pipe/explode3.wav", "^wick/weapons/l4d1/pipe/explode4.wav", "^wick/weapons/l4d1/pipe/explode5.wav"}
} )

--- GUN SHOTS ---

sound.Add( {
	name = "TFA_L4D1_AUTO.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/auto/gunfire/auto_shotgun_fire_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_HUNT.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/hunter/gunfire/hunting_rifle_fire_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/pistol/gunfire/pistol_fire.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PUMP.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/pump/gunfire/shotgun_fire_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_M16.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/rifle/gunfire/rifle_fire_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 150,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/smg/gunfire/smg_fire_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.S",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/smg/gunfire/smg_fire_sil.wav"
} )

--- Other Sounds ---

sound.Add( {
	name = "TFA_L4D1_PUMP.SND",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "^wick/weapons/l4d1/pump/gunother/shotgun_pump_1.wav"
} )


sound.Add( {
	name = "TFA_L4D1_PUMP.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pump/gunother/shotgun_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PUMP.SHELL",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = {"wick/weapons/l4d1/pump/gunother/shotgun_load_shell_2.wav", "wick/weapons/l4d1/pump/gunother/shotgun_load_shell_4.wav"}
} )

sound.Add( {
	name = "TFA_L4D1_PUMP.HELPHANDEX",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pump/gunother/shotgun_helpinghandextend.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PUMP.HELPHANDRET",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pump/gunother/shotgun_helpinghandretract.wav"
} )

sound.Add( {
	name = "TFA_L4D1_AUTO.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/auto/gunother/autoshotgun_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_AUTO.BOLTBACK",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/auto/gunother/autoshotgun_boltback.wav"
} )

sound.Add( {
	name = "TFA_L4D1_AUTO.BOLTFORWARD",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/auto/gunother/autoshotgun_boltforward.wav"
} )


sound.Add( {
	name = "TFA_L4D1_AUTO.SHELL",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = {"wick/weapons/l4d1/auto/gunother/auto_shotgun_load_shell_2.wav", "wick/weapons/l4d1/auto/gunother/auto_shotgun_load_shell_4.wav"}
} )

sound.Add( {
	name = "TFA_L4D1_UZI.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.FULLAUTO",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_fullautobutton_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.CLIPIN",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_clip_in_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.CLIPLOCKED",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_clip_locked_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.CLIPOUT",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_clip_out_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.SIDEBACK",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_slideback_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.SIDEFORWARD",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_slideforward_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.HELPHANDEX",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_helpinghandextend.wav"
} )

sound.Add( {
	name = "TFA_L4D1_UZI.HELPHANDRET",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/smg/gunother/smg_helpinghandretract.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.CLIPIN",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_clip_in_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.CLIPLOCKED",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_clip_locked_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.CLIPOUT",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_clip_out_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.HELPHANDEX",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_helpinghandextend.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.SIDEBACK",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_slideback_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.SIDEFORWARD",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_slideforward_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.FULLAUTO",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_fullautobutton_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_RIFLE.READY",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/rifle/gunother/rifle_fullautobutton_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pistol/gunother/pistol_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.CLIPOUT",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pistol/gunother/pistol_clip_out_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.CLIPIN",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pistol/gunother/pistol_clip_in_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.CLIPLOCKED",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pistol/gunother/pistol_clip_locked_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_PISTOL.SLIDE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/pistol/gunother/pistol_slideforward_1.wav"
} )


sound.Add( {
	name = "TFA_L4D1_SNIPER.DRAW",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_deploy_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.CLIPOUT",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_clipout.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.CLIPIN",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_clipin.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.CLIPLOCKED",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_cliplocked.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.BUTTON",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_push_button_1.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.BOLTBACK",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_boltback.wav"
} )

sound.Add( {
	name = "TFA_L4D1_SNIPER.BOLTFORWARD",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_boltforward.wav"
} )


sound.Add( {
	name = "TFA_L4D1_SNIPER.ZOOMIN",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 60,
	pitch = PITCH_NORM,
	sound = "wick/weapons/l4d1/hunter/gunother/hunting_rifle_zoom.wav"
} )
