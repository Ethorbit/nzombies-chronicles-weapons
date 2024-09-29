--TFA.AddFireSound( "Gun.Fire", "weapons/tfa_cso/gun/fire.wav", false, "^" )
--TFA.AddWeaponSound( "Gun.Reload", "weapons/tfa_cso/gun/reload.wav" )

--Gunkata
TFA.AddFireSound( "Gunkata.Fire", "weapons/tfa_cso/gunkata/fire.wav", false, "^" )
TFA.AddFireSound( "Gunkata.Skill_Explode", "weapons/tfa_cso/gunkata/skill_last_exp.wav", false, "^" )
TFA.AddWeaponSound( "Gunkata.Reload", "weapons/tfa_cso/gunkata/reload.wav" )
TFA.AddWeaponSound( "Gunkata.Reload2", "weapons/tfa_cso/gunkata/reload2.wav" )
TFA.AddWeaponSound( "Gunkata.Draw2", "weapons/tfa_cso/gunkata/draw2.wav" )
TFA.AddWeaponSound( "Gunkata.Draw", "weapons/tfa_cso/gunkata/draw.wav" )
TFA.AddWeaponSound( "Gunkata.Idle", "weapons/tfa_cso/gunkata/idle.wav" )
TFA.AddWeaponSound( "Gunkata.Skill1", "weapons/tfa_cso/gunkata/skill_01.wav" )
TFA.AddWeaponSound( "Gunkata.Skill2", "weapons/tfa_cso/gunkata/skill_02.wav" )
TFA.AddWeaponSound( "Gunkata.Skill3", "weapons/tfa_cso/gunkata/skill_03.wav" )
TFA.AddWeaponSound( "Gunkata.Skill4", "weapons/tfa_cso/gunkata/skill_04.wav" )
TFA.AddWeaponSound( "Gunkata.Skill5", "weapons/tfa_cso/gunkata/skill_05.wav" )
TFA.AddWeaponSound( "Gunkata.Skilllast", "weapons/tfa_cso/gunkata/skill_last.wav" )
TFA.AddWeaponSound( "Gunkata.SkilllastExp", "weapons/tfa_cso/gunkata/skill_last_exp.wav" )
TFA.AddWeaponSound( "Gunkata.Hit1", "weapons/tfa_cso/gunkata/hit1.wav" )
TFA.AddWeaponSound( "Gunkata.Hit2", "weapons/tfa_cso/gunkata/hit2.wav" )

--Laserfist
TFA.AddFireSound( "Laserfist.FireA", "weapons/tfa_cso/laserfist/fire_a.wav", false, "^" )
TFA.AddFireSound( "Laserfist.FireB", "weapons/tfa_cso/laserfist/fire_b.wav", false, "^" )
TFA.AddWeaponSound( "Laserfist.ClipIn1", "weapons/tfa_cso/laserfist/clipin1.wav" )
TFA.AddWeaponSound( "Laserfist.ClipIn2", "weapons/tfa_cso/laserfist/clipin2.wav" )
TFA.AddWeaponSound( "Laserfist.ClipOut", "weapons/tfa_cso/laserfist/clipout.wav" )
TFA.AddWeaponSound( "Laserfist.Draw", "weapons/tfa_cso/laserfist/draw.wav" )
TFA.AddWeaponSound( "Laserfist.Idle", "weapons/tfa_cso/laserfist/idle.wav" )
TFA.AddWeaponSound( "Laserfist.Charge", "weapons/tfa_cso/laserfist/charge.wav" )
TFA.AddWeaponSound( "Laserfist.Empty_End", "weapons/tfa_cso/laserfist/shoot_empty_end.wav" )
TFA.AddWeaponSound( "Laserfist.Empty_Loop", "weapons/tfa_cso/laserfist/shoot_empty_loop.wav" )
TFA.AddWeaponSound( "Laserfist.Boom", "weapons/tfa_cso/laserfist/shootb_exp.wav" )
TFA.AddWeaponSound( "Laserfist.Ready", "weapons/tfa_cso/laserfist/shootb_ready.wav" )
TFA.AddWeaponSound( "Laserfist.ShootB_Shoot", "weapons/tfa_cso/laserfist/shootb_shoot.wav" )
TFA.AddWeaponSound( "Laserfist.ShootB_Loop", "weapons/tfa_cso/laserfist/shootb_loop.wav" )

--Holy Bomb
TFA.AddFireSound ( "Holybomb.Explode", "weapons/tfa_cso/holybomb/explode.wav", false, "^" )
TFA.AddWeaponSound ( "HolyBomb.PullPin", "weapons/tfa_cso/holybomb/pullpin.wav" )
TFA.AddWeaponSound ( "HolyBomb.Draw", "weapons/tfa_cso/holybomb/draw.wav" )

--Dark Legacy Luger
TFA.AddFireSound ( "Luger_Legacy.Fire", "weapons/tfa_cso/luger_legacy/fire.wav", false, "^" )

--Trinity Grenade
TFA.AddFireSound ( "Trinity.ExplodeRed", "weapons/tfa_cso/trinity/red_explode.wav", false, "^" )
TFA.AddFireSound ( "Trinity.ExplodeGreen", "weapons/tfa_cso/trinity/green_explode.wav", false, "^" )
TFA.AddFireSound ( "Trinity.ExplodeWhite", "weapons/tfa_cso/trinity/white_explode.wav", false, "^" )
--TFA.AddWeaponSound ( "Trinity.IdleRed", "weapons/tfa_cso/trinity/red_idle.wav" )
--TFA.AddWeaponSound ( "Trinity.IdleGreen", "weapons/tfa_cso/trinity/green_idle.wav" )
--TFA.AddWeaponSound ( "Trinity.IdleWhite", "weapons/tfa_cso/trinity/white_idle.wav" )
--This fixes idle sounds looping over themselves

sound.Add({
	['name'] = "Trinity.IdleRed",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/trinity/red_idle.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Trinity.IdleGreen",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/trinity/green_idle.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Trinity.IdleWhite",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/trinity/white_idle.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "Trinity.TransformRed", "weapons/tfa_cso/trinity/red_transform.wav" )
TFA.AddWeaponSound ( "Trinity.TransformGreen", "weapons/tfa_cso/trinity/green_transform.wav" )
TFA.AddWeaponSound ( "Trinity.TransformWhite", "weapons/tfa_cso/trinity/white_transform.wav" )
TFA.AddWeaponSound ( "Trinity.TransformBase", "weapons/tfa_cso/trinity/transform_base.wav" )
TFA.AddWeaponSound ( "Trinity.PullPin", "weapons/tfa_cso/trinity/pullpin.wav" )
TFA.AddWeaponSound ( "Trinity.Draw", "weapons/tfa_cso/trinity/draw.wav" )

--Zhubajie Minigun
TFA.AddFireSound( "Zhubajie.Fire", "weapons/tfa_cso/monkeywpset1/fire.wav", false, "^" )
TFA.AddWeaponSound( "Zhubajie.Spindown", "weapons/tfa_cso/monkeywpset1/spindown.wav" )
TFA.AddWeaponSound( "Zhubajie.ClipIn", "weapons/tfa_cso/monkeywpset1/clipin.wav" )
TFA.AddWeaponSound( "Zhubajie.ClipOut", "weapons/tfa_cso/monkeywpset1/clipout.wav" )
TFA.AddWeaponSound( "Zhubajie.ClipOut1", "weapons/tfa_cso/monkeywpset1/clipout1.wav" )
TFA.AddWeaponSound( "Zhubajie.ClipOut2", "weapons/tfa_cso/monkeywpset1/clipout2.wav" )

--Sha Wujing Dual Handgun
TFA.AddFireSound( "Wujing.Fire", "weapons/tfa_cso/monkeywpset2/fire.wav", false, "^" )
TFA.AddWeaponSound( "Wujing.Draw", "weapons/tfa_cso/monkeywpset2/draw.wav" )
TFA.AddWeaponSound( "Wujing.ClipIn", "weapons/tfa_cso/monkeywpset2/clipin.wav" )
TFA.AddWeaponSound( "Wujing.ClipOut", "weapons/tfa_cso/monkeywpset2/clipout.wav" )

--X-Tracker
TFA.AddFireSound( "XTracker.Fire", "weapons/tfa_cso/xtracker/fire.wav", false, "^" )
TFA.AddFireSound( "XTracker.ShootB", "weapons/tfa_cso/xtracker/shootb.wav", false, "^" )
TFA.AddFireSound( "XTracker.Exp", "weapons/tfa_cso/xtracker/exp.wav", false, "^" )
TFA.AddWeaponSound( "XTracker.Reload", "weapons/tfa_cso/xtracker/reload.wav" )
TFA.AddWeaponSound( "XTracker.ZoomIn", "weapons/tfa_cso/xtracker/zoom_in.wav" )
TFA.AddWeaponSound( "XTracker.ZoomOut", "weapons/tfa_cso/xtracker/zoom_out.wav" )
TFA.AddWeaponSound( "XTracker.ScopeOn", "weapons/tfa_cso/xtracker/scope_on.wav" )
TFA.AddWeaponSound( "XTracker.Shoot_On1", "weapons/tfa_cso/xtracker/shootb_on1.wav" )
TFA.AddWeaponSound( "XTracker.Shoot_On2", "weapons/tfa_cso/xtracker/shootb_on2.wav" )
TFA.AddWeaponSound( "XTracker.Beep", "weapons/tfa_cso/xtracker/beep.wav" )
TFA.AddWeaponSound( "XTracker.Draw", "weapons/tfa_cso/xtracker/draw.wav" )

--Janus 1
TFA.AddFireSound( "Janus1.Fire", "weapons/tfa_cso/janus1/fire.wav", false, "^" )
TFA.AddFireSound( "Janus1.Fire2", "weapons/tfa_cso/janus1/fire2.wav", false, "^" )
TFA.AddFireSound( "Janus1.Exp", "weapons/tfa_cso/janus1/exp.wav", false, "^" )
TFA.AddWeaponSound( "Janus1.Change1", "weapons/tfa_cso/janus1/change1.wav" )
TFA.AddWeaponSound( "Janus1.Change2", "weapons/tfa_cso/janus1/change2.wav" )
TFA.AddWeaponSound( "Janus1.Draw", "weapons/tfa_cso/janus1/draw.wav" )

--Bazooka
TFA.AddFireSound( "Bazooka.Fire", "weapons/tfa_cso/bazooka/fire.wav", false, "^" )
TFA.AddFireSound( "Bazooka.Exp1", "weapons/tfa_cso/bazooka/exp1.wav", false, "^" )
TFA.AddFireSound( "Bazooka.Exp2", "weapons/tfa_cso/bazooka/exp2.wav", false, "^" )
TFA.AddFireSound( "Bazooka.Exp3", "weapons/tfa_cso/bazooka/exp3.wav", false, "^" )
TFA.AddWeaponSound( "Bazooka.Draw", "weapons/tfa_cso/bazooka/draw.wav" )
TFA.AddWeaponSound( "Bazooka.ClipOut", "weapons/tfa_cso/bazooka/clipout.wav" )
TFA.AddWeaponSound( "Bazooka.ClipIn", "weapons/tfa_cso/bazooka/clipin.wav" )

--Petrol Boomer
TFA.AddFireSound( "PetrolBoomer.Fire", "weapons/tfa_cso/petrolboomer/fire.wav", false, "^" )
TFA.AddFireSound( "PetrolBoomer.Exp", "weapons/tfa_cso/petrolboomer/exp.wav", false, "^" )
TFA.AddWeaponSound( "PetrolBoomer.Draw", "weapons/tfa_cso/petrolboomer/draw.wav" )
TFA.AddWeaponSound( "PetrolBoomer.Reload", "weapons/tfa_cso/petrolboomer/reload.wav" )
TFA.AddWeaponSound( "PetrolBoomer.Draw_Empty", "weapons/tfa_cso/petrolboomer/draw_empty.wav" )
TFA.AddWeaponSound( "PetrolBoomer.Idle", "weapons/tfa_cso/petrolboomer/idle.wav" )

--Lightning Bazzi-1
TFA.AddFireSound( "CartRed.Fire", "weapons/tfa_cso/cartred/fire.wav", false, "^" )
TFA.AddFireSound( "CartRed.Fire2", "weapons/tfa_cso/cartred/fire2.wav", false, "^" )
TFA.AddWeaponSound( "CartRed.ClipIn", "weapons/tfa_cso/cartred/clipin.wav" )
TFA.AddWeaponSound( "CartRed.ClipOut", "weapons/tfa_cso/cartred/clipout.wav" )
TFA.AddWeaponSound( "CartRed.Foley5", "weapons/tfa_cso/cartred/foley5.wav" )
TFA.AddWeaponSound( "CartRed.HeadOpen", "weapons/tfa_cso/cartred/headopen.wav" )
TFA.AddWeaponSound( "CartRed.HeadClose", "weapons/tfa_cso/cartred/headclose.wav" )

--UMP45 Snake
TFA.AddFireSound( "Snakegun.Fire", "weapons/tfa_cso/snakegun/fire.wav", false, "^" )
TFA.AddWeaponSound( "Snakegun.ClipIn", "weapons/tfa_cso/snakegun/clipin.wav" )
TFA.AddWeaponSound( "Snakegun.ClipOut1", "weapons/tfa_cso/snakegun/clipout1.wav" )
TFA.AddWeaponSound( "Snakegun.ClipOut2", "weapons/tfa_cso/snakegun/clipout2.wav" )
TFA.AddWeaponSound( "Snakegun.Draw", "weapons/tfa_cso/snakegun/draw.wav" )
TFA.AddWeaponSound( "Snakegun.Boltpull", "weapons/tfa_cso/snakegun/boltpull.wav" )

--Lightning Dao-1
TFA.AddFireSound( "CartBlue.Fire", "weapons/tfa_cso/cartblue/fire.wav", false, "^" )
TFA.AddFireSound( "CartBlue.Fire2", "weapons/tfa_cso/cartblue/fire2.wav", false, "^" )
TFA.AddWeaponSound( "CartBlue.ClipIn", "weapons/tfa_cso/cartblue/clipin.wav" )
TFA.AddWeaponSound( "CartBlue.ClipOut", "weapons/tfa_cso/cartblue/clipout.wav" )
TFA.AddWeaponSound( "CartBlue.ClipOut2", "weapons/tfa_cso/cartblue/clipout2.wav" )
TFA.AddWeaponSound( "CartBlue.Foley1", "weapons/tfa_cso/cartblue/foley1.wav" )
TFA.AddWeaponSound( "CartBlue.Foley2", "weapons/tfa_cso/cartblue/foley2.wav" )
TFA.AddWeaponSound( "CartBlue.Foley3", "weapons/tfa_cso/cartblue/foley3.wav" )
TFA.AddWeaponSound( "CartBlue.Foley4", "weapons/tfa_cso/cartblue/foley4.wav" )
TFA.AddWeaponSound( "CartBlue.Draw", "weapons/tfa_cso/cartblue/draw.wav" )
TFA.AddWeaponSound( "CartBlue.Draw2", "weapons/tfa_cso/cartblue/draw2.wav" )
TFA.AddWeaponSound( "CartBlue.Hit", "weapons/tfa_cso/cartblue/hit.wav" )
TFA.AddWeaponSound( "CartBlue.Jump", "weapons/tfa_cso/cartblue/jump.wav" )
TFA.AddWeaponSound( "CartBlue.Spindown", "weapons/tfa_cso/cartblue/spindown.wav" )
TFA.AddWeaponSound( "CartBlue.Turn", "weapons/tfa_cso/cartblue/turn.wav" )
TFA.AddWeaponSound( "CartBlue.Yaho", "weapons/tfa_cso/cartblue/yaho.wav" )

--MP7 Unicorn
TFA.AddFireSound( "Horsegun.Fire", "weapons/tfa_cso/horsegun/fire.wav", false, "^" )
TFA.AddWeaponSound( "Horsegun.ClipIn", "weapons/tfa_cso/horsegun/clipin.wav" )
TFA.AddWeaponSound( "Horsegun.ClipOut", "weapons/tfa_cso/horsegun/clipout.wav" )
TFA.AddWeaponSound( "Horsegun.Idle", "weapons/tfa_cso/horsegun/idle.wav" )
TFA.AddWeaponSound( "Horsegun.Draw", "weapons/tfa_cso/horsegun/draw.wav" )
TFA.AddWeaponSound( "Horsegun.Boltpull", "weapons/tfa_cso/horsegun/boltpull.wav" )

--M95 Ghost Knight
TFA.AddFireSound( "M95Ghost.Fire", "weapons/tfa_cso/m95ghost/fire.wav", false, "^" )
TFA.AddFireSound( "M95Ghost.Fire2", "weapons/tfa_cso/m95ghost/fire2.wav", false, "^" )
TFA.AddWeaponSound( "M95Ghost.ClipIn", "weapons/tfa_cso/m95ghost/clipin.wav" )
TFA.AddWeaponSound( "M95Ghost.ClipOut", "weapons/tfa_cso/m95ghost/clipout.wav" )
TFA.AddWeaponSound( "M95Ghost.Idle", "weapons/tfa_cso/m95ghost/idle.wav" )
TFA.AddWeaponSound( "M95Ghost.Draw", "weapons/tfa_cso/m95ghost/draw.wav" )
TFA.AddWeaponSound( "M95Ghost.Point", "weapons/tfa_cso/m95ghost/point.wav" )
TFA.AddWeaponSound( "M95Ghost.Net1", "weapons/tfa_cso/m95ghost/shoot_net1.wav" )
TFA.AddWeaponSound( "M95Ghost.Net2", "weapons/tfa_cso/m95ghost/shoot_net2.wav" )

--M3 Big Shark
TFA.AddFireSound( "M3Shark.Fire", "weapons/tfa_cso/m3shark/fire.wav", false, "^" )
TFA.AddWeaponSound( "M3Shark.Insert", "weapons/tfa_cso/m3shark/insert.wav" )
TFA.AddWeaponSound( "M3Shark.After_Reload", "weapons/tfa_cso/m3shark/after_reload.wav" )
TFA.AddWeaponSound( "M3Shark.Idle", "weapons/tfa_cso/m3shark/idle.wav" )
TFA.AddWeaponSound( "M3Shark.Draw", "weapons/tfa_cso/m3shark/draw.wav" )

--Newcomen Expert
TFA.AddFireSound( "NewcomenV6.Fire", "weapons/tfa_cso/newcomen_v6/fire.wav", false, "^" )
TFA.AddWeaponSound( "NewcomenV6.Draw", "weapons/tfa_cso/newcomen_v6/draw.wav" )
TFA.AddWeaponSound( "NewcomenV6.Reload", "weapons/tfa_cso/newcomen_v6/reload.wav" )
TFA.AddWeaponSound( "NewcomenV6.Idle", "weapons/tfa_cso/newcomen_v6/idle.wav" )

--Dart Pistol
TFA.AddFireSound( "Dartpistol.Fire", "weapons/tfa_cso/dartpistol/fire.wav", false, "^" )
TFA.AddFireSound( "Dartpistol.Explosion1", "weapons/tfa_cso/dartpistol/explosion1.wav", false, "^" )
TFA.AddFireSound( "Dartpistol.Explosion2", "weapons/tfa_cso/dartpistol/explosion2.wav", false, "^" )
TFA.AddWeaponSound( "Dartpistol.Draw", "weapons/tfa_cso/dartpistol/draw.wav" )
TFA.AddWeaponSound( "Dartpistol.ClipOut1", "weapons/tfa_cso/dartpistol/clipout1.wav" )
TFA.AddWeaponSound( "Dartpistol.ClipOut2", "weapons/tfa_cso/dartpistol/clipout2.wav" )
TFA.AddWeaponSound( "Dartpistol.ClipIn1", "weapons/tfa_cso/dartpistol/clipin1.wav" )
TFA.AddWeaponSound( "Dartpistol.ClipIn2", "weapons/tfa_cso/dartpistol/clipin2.wav" )
TFA.AddWeaponSound( "Dartpistol.ClipIn3", "weapons/tfa_cso/dartpistol/clipin3.wav" )

--Magnum Drill Gold

local soundData = {
	name 		= "MagnumDrill.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "MagnumDrill.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "MagnumDrill.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "MagnumDrill.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "MagnumDrill.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/fire.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "MagnumDrill.Drill" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/magnum_drill/drill.wav"
}

sound.Add(soundData)

--Heaven Scorcher
TFA.AddFireSound( "HeavenScorcher.Fire", "weapons/tfa_cso/heaven_scorcher/fire.wav", false, "^" )
TFA.AddFireSound( "HeavenScorcher.Mine_Shoot", "weapons/tfa_cso/heaven_scorcher/mine_shoot.wav", false, "^" )
TFA.AddFireSound( "HeavenScorcher.Mine_Explosion", "weapons/tfa_cso/heaven_scorcher/mine_exp.wav", false, "^" )
TFA.AddFireSound( "HeavenScorcher.Explosion1", "weapons/tfa_cso/heaven_scorcher/exp.wav", false, "^" )
TFA.AddFireSound( "HeavenScorcher.Explosion2", "weapons/tfa_cso/heaven_scorcher/exp2.wav", false, "^" )
TFA.AddWeaponSound( "HeavenScorcher.Draw", "weapons/tfa_cso/heaven_scorcher/draw.wav" )
TFA.AddWeaponSound( "HeavenScorcher.Idle", "weapons/tfa_cso/heaven_scorcher/idle.wav" )
TFA.AddWeaponSound( "HeavenScorcher.BMod_On", "weapons/tfa_cso/heaven_scorcher/bmod_on.wav" )
TFA.AddWeaponSound( "HeavenScorcher.BMod_Exp", "weapons/tfa_cso/heaven_scorcher/bmod_on_exp.wav" )
TFA.AddWeaponSound( "HeavenScorcher.Mine_Set", "weapons/tfa_cso/heaven_scorcher/mine_set.wav" )
TFA.AddWeaponSound( "HeavenScorcher.Mine_Mode", "weapons/tfa_cso/heaven_scorcher/mine_mode.wav" )
TFA.AddWeaponSound( "HeavenScorcher.ClipOut", "weapons/tfa_cso/heaven_scorcher/clipout.wav" )
TFA.AddWeaponSound( "HeavenScorcher.ClipIn", "weapons/tfa_cso/heaven_scorcher/clipin.wav" )

--Mac-10
TFA.AddFireSound( "MAC10.Fire", "weapons/tfa_cso/mac10/fire.wav", false, "^" )
TFA.AddWeaponSound( "MAC10.ClipOut", "weapons/tfa_cso/mac10/clipout.wav")
TFA.AddWeaponSound( "MAC10V2.ClipIn", "weapons/tfa_cso/mac10/clipin_v2.wav")
TFA.AddWeaponSound( "MAC10.ClipRelease", "weapons/tfa_cso/mac10/cliprelease.wav")
TFA.AddWeaponSound( "MAC10.Boltpull", "weapons/tfa_cso/mac10/boltpull.wav")

--P228
TFA.AddFireSound( "P228.Fire", "weapons/tfa_cso/p228/fire.wav", false, "^" )
TFA.AddWeaponSound( "P228.ClipIn", "weapons/tfa_cso/p228/clipin.wav")
TFA.AddWeaponSound( "P228.ClipOut", "weapons/tfa_cso/p228/clipout.wav")
TFA.AddWeaponSound( "P228.Deploy", "weapons/tfa_cso/p228/deploy.wav")
TFA.AddWeaponSound( "P228.SlidePull", "weapons/tfa_cso/p228/slidepull.wav")
TFA.AddWeaponSound( "P228.SlideRelease1", "weapons/tfa_cso/p228/sliderelease1.wav")

--Ballista
TFA.AddWeaponSound( "Ballista.Exp2", "weapons/tfa_cso/ballista/exp2.wav")
TFA.AddWeaponSound( "Ballista.Exp3", "weapons/tfa_cso/ballista/exp3.wav")
TFA.AddWeaponSound( "Ballista.Reload1", "weapons/tfa_cso/ballista/reload1.wav")
TFA.AddWeaponSound( "Ballista.Reload2", "weapons/tfa_cso/ballista/reload2.wav")
TFA.AddWeaponSound( "Ballista.Draw", "weapons/tfa_cso/ballista/draw.wav")
TFA.AddWeaponSound( "Ballista.Missile", "weapons/tfa_cso/ballista/missile.wav")
TFA.AddWeaponSound( "Ballista.Missile_Last", "weapons/tfa_cso/ballista/missile_last.wav")
TFA.AddWeaponSound( "Ballista.Missile_On", "weapons/tfa_cso/ballista/missile_on.wav")

sound.Add({
	['name'] = "Ballista.Exp1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/ballista/exp1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Ballista.Missile_Reload",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/ballista/missile_reload.wav"},
	['pitch'] = {100,100}
})

local soundData = {
	name 		= "Ballista.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/ballista/fire.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Ballista.Fire2" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/ballista/fire2.wav"
}

sound.Add(soundData)

--Heart Bomb

sound.Add({
	['name'] = "Heartbomb.Explode",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/heartbomb/explode.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "HeartBomb.Pin", "weapons/tfa_cso/heartbomb/pin.wav" )
TFA.AddWeaponSound ( "HeartBomb.Arrow", "weapons/tfa_cso/heartbomb/arrow.wav" )
TFA.AddWeaponSound ( "HeartBomb.Draw", "weapons/tfa_cso/heartbomb/draw.wav" )

--ThunderStorm

sound.Add({
	['name'] = "Thunderstorm.Explode",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/thunderstorm/explode.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "Thunderstorm.Throw", "weapons/tfa_cso/thunderstorm/throw.wav" )
TFA.AddWeaponSound ( "Thunderstorm.Pullpin", "weapons/tfa_cso/thunderstorm/pullpin.wav" )
TFA.AddWeaponSound ( "Thunderstorm.Idle", "weapons/tfa_cso/thunderstorm/idle.wav" )
TFA.AddWeaponSound ( "Thunderstorm.Draw", "weapons/tfa_cso/thunderstorm/draw.wav" )
TFA.AddWeaponSound ( "Thunderstorm.Charge", "weapons/tfa_cso/thunderstorm/charge.wav" )

-- Scar Oz

sound.Add({
	['name'] = "ScarA.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/scar_oz/scara_fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "ScarB.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/scar_oz/scarb_fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "ScarC.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/scar_oz/scarc_fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "ScarD.Fire1",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/scar_oz/scard_fire1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "ScarD.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/scar_oz/scard_fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "ScarD.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/scar_oz/scard_exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "ScarA.Boltpull", "weapons/tfa_cso/scar_oz/scara_boltpull.wav" )
TFA.AddWeaponSound ( "ScarA.ClipIn", "weapons/tfa_cso/scar_oz/scara_clipin.wav" )
TFA.AddWeaponSound ( "ScarA.ClipOut", "weapons/tfa_cso/scar_oz/scara_clipout.wav" )
TFA.AddWeaponSound ( "ScarA.Draw", "weapons/tfa_cso/scar_oz/scara_draw.wav" )
TFA.AddWeaponSound ( "ScarC.ClipIn", "weapons/tfa_cso/scar_oz/scarc_clipin.wav" )
TFA.AddWeaponSound ( "ScarC.ClipOut", "weapons/tfa_cso/scar_oz/scarc_clipout.wav" )
TFA.AddWeaponSound ( "ScarC.Draw", "weapons/tfa_cso/scar_oz/scarc_draw.wav" )
TFA.AddWeaponSound ( "ScarD.ClipIn1", "weapons/tfa_cso/scar_oz/scard_clipin1.wav" )
TFA.AddWeaponSound ( "ScarD.ClipIn2", "weapons/tfa_cso/scar_oz/scard_clipin2.wav" )
TFA.AddWeaponSound ( "ScarD.ClipOut", "weapons/tfa_cso/scar_oz/scard_clipout.wav" )
TFA.AddWeaponSound ( "ScarD.Draw", "weapons/tfa_cso/scar_oz/scard_draw.wav" )

-- Void Avenger

sound.Add({
	['name'] = "Voidpistol.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/voidpistol/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/voidpistol/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Fire_2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/voidpistol/fire_2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Idle",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/voidpistol/idle.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Idle2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/voidpistol/idle2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Blackhole_Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/voidpistol/blackhole_exp.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Blackhole_Start",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/voidpistol/blackhole_start.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Voidpistol.Blackhole_Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/voidpistol/blackhole_idle.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "Voidpistol.Reload1", "weapons/tfa_cso/voidpistol/reload1.wav" )
TFA.AddWeaponSound ( "Voidpistol.Reload2", "weapons/tfa_cso/voidpistol/reload2.wav" )
TFA.AddWeaponSound ( "Voidpistol.Draw", "weapons/tfa_cso/voidpistol/draw.wav" )
TFA.AddWeaponSound ( "Voidpistol.DrawB", "weapons/tfa_cso/voidpistol/drawb.wav" )
TFA.AddWeaponSound ( "Voidpistol.Change", "weapons/tfa_cso/voidpistol/change.wav" )
TFA.AddWeaponSound ( "Voidpistol.Beep", "weapons/tfa_cso/voidpistol/beep.wav" )

-- Inferno Cannon

sound.Add({
	['name'] = "Volcanoex.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/volcanoex/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Volcanoex.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/volcanoex/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Volcanoex.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/volcanoex/exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "Volcanoex.ClipOut1", "weapons/tfa_cso/volcanoex/clipout1.wav" )
TFA.AddWeaponSound ( "Volcanoex.ClipOut2", "weapons/tfa_cso/volcanoex/clipout2.wav" )
TFA.AddWeaponSound ( "Volcanoex.ClipIn1", "weapons/tfa_cso/volcanoex/clipin1.wav" )
TFA.AddWeaponSound ( "Volcanoex.ClipIn2", "weapons/tfa_cso/volcanoex/clipin2.wav" )
TFA.AddWeaponSound ( "Volcanoex.Boltpull", "weapons/tfa_cso/volcanoex/boltpull.wav" )
TFA.AddWeaponSound ( "Volcanoex.Draw", "weapons/tfa_cso/volcanoex/draw.wav" )

--Rail Buster

sound.Add({
	['name'] = "RailBuster.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/rail_buster/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "RailBuster.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/rail_buster/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "RailBuster.Idle_Charge",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/rail_buster/idle_charged.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound( "RailBuster.Charge", "weapons/tfa_cso/rail_buster/charge.wav")
TFA.AddWeaponSound( "RailBuster.Charge_Finish", "weapons/tfa_cso/rail_buster/charging_finish.wav")

--Shining Heart Rod

sound.Add({
	['name'] = "MagicRod.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/magic_rod/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicRod.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/magic_rod/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicRod.Exp1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/magic_rod/exp1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicRod.Exp2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/magic_rod/exp2.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound( "MagicRod.Reload1", "weapons/tfa_cso/magic_rod/reload1.wav")
TFA.AddWeaponSound( "MagicRod.Reload2", "weapons/tfa_cso/magic_rod/reload2.wav")
TFA.AddWeaponSound( "MagicRod.Draw", "weapons/tfa_cso/magic_rod/draw.wav")
TFA.AddWeaponSound( "MagicRod.Alarm", "weapons/tfa_cso/magic_rod/alarm.wav")
TFA.AddWeaponSound( "MagicRod.Idle", "weapons/tfa_cso/magic_rod/idle.wav")

--Magical lolipop shooter

sound.Add({
	['name'] = "MagicSG.Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/magicsg/idle.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicSG.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/magicsg/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicSG.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/magicsg/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "MagicSG.Exp",
	['channel'] = CHAN_STATIC+10,
	['sound'] = { "weapons/tfa_cso/magicsg/exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound( "MagicSG.Reload", "weapons/tfa_cso/magicsg/reload.wav")
TFA.AddWeaponSound( "MagicSG.Draw", "weapons/tfa_cso/magicsg/draw.wav")
TFA.AddWeaponSound( "MagicSG.Charge1", "weapons/tfa_cso/magicsg/charge1.wav")
TFA.AddWeaponSound( "MagicSG.Charge2", "weapons/tfa_cso/magicsg/charge2.wav")
TFA.AddWeaponSound( "MagicSG.Charge3", "weapons/tfa_cso/magicsg/charge3.wav")
TFA.AddWeaponSound( "MagicSG.Charge4", "weapons/tfa_cso/magicsg/charge4.wav")
TFA.AddWeaponSound( "MagicSG.Charge5", "weapons/tfa_cso/magicsg/charge5.wav")

--Megev NG-7 Ajax

sound.Add({
	['name'] = "NG_Ajax.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/negev_ajax/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "NG_Ajax.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/negev_ajax/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "NG_Ajax.Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/negev_ajax/idle.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "NG_Ajax.Charge_Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/negev_ajax/charge_exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound( "NG_Ajax.ClipOut", "weapons/tfa_cso/negev_ajax/clipout.wav")
TFA.AddWeaponSound( "NG_Ajax.ClipIn1", "weapons/tfa_cso/negev_ajax/clipin1.wav")
TFA.AddWeaponSound( "NG_Ajax.ClipIn2", "weapons/tfa_cso/negev_ajax/clipin2.wav")
TFA.AddWeaponSound( "NG_Ajax.ClipIn3", "weapons/tfa_cso/negev_ajax/clipin3.wav")
TFA.AddWeaponSound( "NG_Ajax.Draw", "weapons/tfa_cso/negev_ajax/draw.wav")
TFA.AddWeaponSound( "NG_Ajax.Change_A", "weapons/tfa_cso/negev_ajax/change_a.wav")
TFA.AddWeaponSound( "NG_Ajax.Change_B", "weapons/tfa_cso/negev_ajax/change_b.wav")

-- Plasma Rifle MK-1

sound.Add({
	['name'] = "PlasmaMK1.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexa/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "PlasmaMK1.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexa/exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "PlasmaMK1.ClipOut1", "weapons/tfa_cso/plasmagunexa/clipout1.wav" )
TFA.AddWeaponSound ( "PlasmaMK1.ClipOut2", "weapons/tfa_cso/plasmagunexa/clipout2.wav" )
TFA.AddWeaponSound ( "PlasmaMK1.ClipIn1", "weapons/tfa_cso/plasmagunexa/clipin1.wav" )
TFA.AddWeaponSound ( "PlasmaMK1.ClipIn2", "weapons/tfa_cso/plasmagunexa/clipin2.wav" )
TFA.AddWeaponSound ( "PlasmaMK1.Draw", "weapons/tfa_cso/plasmagunexa/draw.wav" )

-- Plasma Rifle MK-2

sound.Add({
	['name'] = "PlasmaMK2.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexb/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "PlasmaMK2.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexb/exp.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "PlasmaMK2.ClipOut1", "weapons/tfa_cso/plasmagunexb/clipout1.wav" )
TFA.AddWeaponSound ( "PlasmaMK2.ClipOut2", "weapons/tfa_cso/plasmagunexb/clipout2.wav" )
TFA.AddWeaponSound ( "PlasmaMK2.ClipIn1", "weapons/tfa_cso/plasmagunexb/clipin1.wav" )
TFA.AddWeaponSound ( "PlasmaMK2.ClipIn2", "weapons/tfa_cso/plasmagunexb/clipin2.wav" )
TFA.AddWeaponSound ( "PlasmaMK2.Draw", "weapons/tfa_cso/plasmagunexb/draw.wav" )

-- Tiamat MK-3

sound.Add({
	['name'] = "TiamatMK3.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexc/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK3.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexc/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK3.Fire3",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexc/fire3.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK3.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexc/exp.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK3.Exp2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexc/exp2.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "TiamatMK3.ClipOut1", "weapons/tfa_cso/plasmagunexc/clipout1.wav" )
TFA.AddWeaponSound ( "TiamatMK3.ClipOut2", "weapons/tfa_cso/plasmagunexc/clipout2.wav" )
TFA.AddWeaponSound ( "TiamatMK3.ClipIn1", "weapons/tfa_cso/plasmagunexc/clipin1.wav" )
TFA.AddWeaponSound ( "TiamatMK3.ClipIn2", "weapons/tfa_cso/plasmagunexc/clipin2.wav" )
TFA.AddWeaponSound ( "TiamatMK3.Draw", "weapons/tfa_cso/plasmagunexc/draw.wav" )
TFA.AddWeaponSound ( "TiamatMK3.Charge", "weapons/tfa_cso/plasmagunexc/charge.wav" )
TFA.AddWeaponSound ( "TiamatMK3.Charge_Shoot", "weapons/tfa_cso/plasmagunexc/charge_shoot.wav" )

-- Tiamat MK-4

sound.Add({
	['name'] = "TiamatMK4.Fire",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexd/fire.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK4.Fire2",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexd/fire2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK4.Fire3",
	['channel'] = CHAN_USER_BASE+11,
	['sound'] = { "weapons/tfa_cso/plasmagunexd/fire3.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK4.Exp",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexd/exp.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "TiamatMK4.Exp2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/plasmagunexd/exp2.wav"},
	['pitch'] = {100,100}
})

TFA.AddWeaponSound ( "TiamatMK4.ClipOut1", "weapons/tfa_cso/plasmagunexd/clipout1.wav" )
TFA.AddWeaponSound ( "TiamatMK4.ClipOut2", "weapons/tfa_cso/plasmagunexd/clipout2.wav" )
TFA.AddWeaponSound ( "TiamatMK4.ClipIn1", "weapons/tfa_cso/plasmagunexd/clipin1.wav" )
TFA.AddWeaponSound ( "TiamatMK4.ClipIn2", "weapons/tfa_cso/plasmagunexd/clipin2.wav" )
TFA.AddWeaponSound ( "TiamatMK4.Draw", "weapons/tfa_cso/plasmagunexd/draw.wav" )
TFA.AddWeaponSound ( "TiamatMK4.Charge", "weapons/tfa_cso/plasmagunexd/charge.wav" )
TFA.AddWeaponSound ( "TiamatMK4.Charge_Shoot", "weapons/tfa_cso/plasmagunexd/charge_shoot.wav" )