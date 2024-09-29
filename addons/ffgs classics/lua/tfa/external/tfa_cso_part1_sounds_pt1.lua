//This is just here to make sure gun sounds are loaded on clients properly
//because I don't know how to make good autorun lua that works on clients in MP

//Avalanche. Sci-Fi LMG
local soundData = {
	name		= "Avalanche.ClipIn1" ,
	channel	 = CHAN_WEAPON,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/clipin1.wav"
}
 
sound.Add(soundData)

local soundData = {
	name		= "Avalanche.ClipIn2" ,
	channel	 = CHAN_WEAPON,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/clipin2.wav"
}
 
sound.Add(soundData)

local soundData = {
	name		= "Avalanche.ClipOut" ,
	channel	 = CHAN_WEAPON,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/clipout.wav"
}
 
sound.Add(soundData)
 
local soundData = {
	name		= "Avalanche.ChangeA" ,
	channel	 = CHAN_WEAPON,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/changea.wav"
}
 
sound.Add(soundData)

local soundData = {
	name		= "Avalanche.ChangeB" ,
	channel	 = CHAN_WEAPON,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/changeb.wav"
}
 
sound.Add(soundData)
 
local soundData = {
	name		= "Avalanche.Fire" ,
	channel	 = CHAN_USER_BASE+11,
	volume	  = 1,
	soundlevel  = 80,
	pitchstart  = 100,
	pitchend	= 100,
	sound	   = "weapons/tfa_cso/avalanche/fire.wav"
}

sound.Add(soundData)

//Dragon TMP
local soundData = {
	name 		= "Dragon TMP.Out" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/dragontmp/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Dragon TMP.In" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/dragontmp/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Dragon TMP.Deploy" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/dragontmp/deploy.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Dragon TMP.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/dragontmp/fire.wav"
}

sound.Add(soundData)

//SF Ethereal
local soundData = {
	name 		= "SF Ethereal.Deploy" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/sfethereal/deploy.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SF Ethereal.Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/sfethereal/reload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SF Ethereal.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/sfethereal/fire.wav"
}

sound.Add(soundData)
//Flintlock Pistol
local soundData = {
	name 		= "Flintlock.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/flintlock/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Flintlock.In 1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/flintlock/in1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Flintlock.In 2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/flintlock/in2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Flintlock.In 3" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/flintlock/in3.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Flintlock.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/flintlock/fire.wav"
}

sound.Add(soundData)

//Milkor M32 MGL. Quite a mouthful, huh?
local soundData = {
	name 		= "Milkor M32 MGL.Deploy" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/m32/deploy.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Milkor M32 MGL.Start Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/m32/reloadstart.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Milkor M32 MGL.Insert" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/m32/insert.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Milkor M32 MGL.After Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/m32/afterreload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Milkor M32 MGL.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/m32/fire.wav"
}

sound.Add(soundData)

//STG-44
local soundData = {
	name 		= "Weapon_STG44.Clipout" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/stg/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Weapon_STG44.BoltPull" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/stg/boltpull.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Weapon_STG44.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/stg/fire.wav"
}

sound.Add(soundData)

//Crossbow. Not to be confused with Half-Life 2's Crossbow!
local soundData = {
	name 		= "Crossbow.Foley1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/foley1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Crossbow.Foley2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/foley2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Crossbow.Foley3" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/foley3.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Crossbow.Foley4" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/foley4.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Crossbow.Deploy" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/deploy.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Crossbow.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/crossbow/fire.wav"
}

sound.Add(soundData)

//Elven Ranger. Why put gold in your mouth when you can put gold on your AWP!?
local soundData = {
	name 		= "ElvenRanger.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/elvenranger/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "ElvenRanger.Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/elvenranger/reload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "ElvenRanger.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/elvenranger/fire.wav"
}

sound.Add(soundData)

//Paladin. God-tier destruction.
local soundData = {
	name 		= "Paladin.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/paladin/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Paladin.Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/paladin/reload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Paladin.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/paladin/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Paladin.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/paladin/fire.wav"
}

sound.Add(soundData)

//Dark Knight. Which one is better? Paladin or Dark Knight?
local soundData = {
	name 		= "DarkKnight.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/darkknight/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DarkKnight.Clipout" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/darkknight/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DarkKnight.Clipin1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/darkknight/clipin1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DarkKnight.Clipin2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/darkknight/clipin2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DarkKnight.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/darkknight/fire.wav"
}

sound.Add(soundData)

//Sapientia. A religious revolver. Why.
local soundData = {
	name 		= "Sapientia.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/sapientia/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Sapientia.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/sapientia/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Sapientia.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/sapientia/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Sapientia.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/sapientia/fire.wav"
}

sound.Add(soundData)

//Dual Kriss Custom. Rock like it's MW2 every day with these dual SMGs.
local soundData = {
	name 		= "DualKrissCustom.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualkrisscustom/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualKrissCustom.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualkrisscustom/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualKrissCustom.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualkrisscustom/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualKrissCustom.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualkrisscustom/fire.wav"
}

sound.Add(soundData)

//Dual UZIs. Just like Max Payne!
local soundData = {
	name 		= "DualUzi.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualUzi.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualUzi.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualUzi.Idle1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/idle1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualUzi.Idle2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/idle2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "DualUzi.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/dualuzi/fire.wav"
}

sound.Add(soundData)

//Aeolis. Steampunk meets weaponry.
local soundData = {
	name 		= "Aeolis.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.ClipIn1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/clipin1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.ClipIn2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/clipin2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.ClipIn3" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/clipin3.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Aeolis.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/aeolis/fire.wav"
}

sound.Add(soundData)

//Newcomen. Steampunk SMG, anyone?
local soundData = {
	name 		= "Newcomen.Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/newcomen/reload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Newcomen.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/newcomen/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Newcomen.Idle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/newcomen/idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Newcomen.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/newcomen/fire.wav"
}

sound.Add(soundData)

//Brick Piece V2. Legos meet killer weaponry! Fun for the whole familiy..?
local soundData = {
	name 		= "BrickPieceV2.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/brickpiecev2/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BrickPieceV2.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/brickpiecev2/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BrickPieceV2.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/brickpiecev2/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BrickPieceV2.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/brickpiecev2/fire.wav"
}

sound.Add(soundData)

//VULCANUS-3. There's probably going to be more then just one.
local soundData = {
	name 		= "Vulcanus3.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/vulcanus3/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Vulcanus3.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/vulcanus3/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Vulcanus3.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/vulcanus3/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Vulcanus3.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/vulcanus3/fire.wav"
}

sound.Add(soundData)

//SPAS-12 Superior. Because scopes on shotguns. Why
local soundData = {
	name 		= "Spas12Superior.Insert" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/spas12superior/insert.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Spas12Superior.Pump" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/spas12superior/pump.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Spas12Superior.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/spas12superior/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "Spas12Superior.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/spas12superior/fire.wav"
}

sound.Add(soundData)

//SKULL-2. Double the revolver, double the fun.
local soundData = {
	name 		= "SKULL2.ReloadLeft" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull2/reload_left.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL2.ReloadRight" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull2/reload_right.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL2.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull2/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL2.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull2/fire.wav"
}

sound.Add(soundData)

//SKULL-3. Double SMGs? Single SMG? Your choice, spawn A or B mode.
local soundData = {
	name 		= "SKULL3.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull3/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL3.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull3/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL3.DualIdle" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull3/dual_idle.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL3.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull3/fire.wav"
}

sound.Add(soundData)

//SKULL-4. Double SMGs? Screw that, double rifles.
local soundData = {
	name 		= "SKULL4.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull4/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL4.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull4/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL4.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull4/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL4.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull4/fire.wav"
}

sound.Add(soundData)


//SKULL-5. Fully automatic snipers, anyone?
local soundData = {
	name 		= "SKULL5.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull5/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL5.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull5/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL5.BoltPull" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull5/boltpull.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL5.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull5/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL5.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull5/fire.wav"
}

sound.Add(soundData)

//SKULL-6. LMG-Sniper hybrid. Running outta ideas, huh Nexon?
local soundData = {
	name 		= "SKULL6.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL6.BoxIn1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/boxin1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL6.BoxIn2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/boxin2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL6.BoxOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/boxout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL6.Chain" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/chain.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL6.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull6/fire.wav"
}

sound.Add(soundData)

//SKULL-8. More LMGs. Now I'm running out of ideas...
local soundData = {
	name 		= "SKULL8.CoverDown" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/cover_down.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.CoverUp" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/cover_up.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.BoxIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/box_in.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.BoxOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/box_out.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.Chain" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/chain.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.Melee1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/melee_1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.Melee2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/melee_2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "SKULL8.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/skull8/fire.wav"
}

sound.Add(soundData)

//THANATOS-5. Blades: The Rifle. Had to recode because I completely deleted it by mistake.
local soundData = {
	name 		= "THANATOS5.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/thanatos5/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "THANATOS5.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/thanatos5/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "THANATOS5.ClipHit" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/thanatos5/cliphit.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "THANATOS5.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/thanatos5/fire.wav"
}

sound.Add(soundData)

//BALROG-1. Witty response? Hah, no.
local soundData = {
	name 		= "BALROG1.Reload" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog1/reload.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG1.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog1/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG1.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog1/fire.wav"
}

sound.Add(soundData)

//BALROG-3. Shiny.
local soundData = {
	name 		= "BALROG3.ClipOut" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog3/clipout.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG3.ClipIn" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog3/clipin.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG3.BoltPull" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog3/boltpull.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG3.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog3/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG3.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog3/fire.wav"
}

sound.Add(soundData)

//BALROG-7. LMGs with more scopes.
local soundData = {
	name 		= "BALROG7.ClipOut1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/clipout1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.ClipOut2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/clipout2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.ClipIn1" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/clipin1.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.ClipIn2" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/clipin2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.ClipIn3" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/clipin3.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG7.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog7/fire.wav"
}

sound.Add(soundData)

//BALROG-11. Skipped 9 because of skeleton issues.
local soundData = {
	name 		= "BALROG11.Insert" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog11/insert.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG11.Draw" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog11/draw.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG11.Fire" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog11/fire.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG11.Fire2" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog11/fire2.wav"
}

sound.Add(soundData)

local soundData = {
	name 		= "BALROG11.Charge" ,
	channel 	= CHAN_WEAPON,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/balrog11/charge.wav"
}

sound.Add(soundData)

--CROW-5
TFA.AddFireSound( "CROW5.Fire", "weapons/tfa_cso/crow5/fire.wav", false, "" )
TFA.AddWeaponSound( "CROW5.Draw", "weapons/tfa_cso/crow5/draw.wav" )
TFA.AddWeaponSound( "CROW5.Reload_In", "weapons/tfa_cso/crow5/reload_in.wav" )
TFA.AddWeaponSound( "CROW5.Reload_A", "weapons/tfa_cso/crow5/reload_a.wav" )
TFA.AddWeaponSound( "CROW5.Reload_B", "weapons/tfa_cso/crow5/reload_b.wav" )

---CANNON-Fireball
local soundData = {
	name 		= "Cannon.Exp" ,
	channel 	= CHAN_USER_BASE+11,
	volume 		= 1,
	soundlevel 	= 80,
	pitchstart 	= 100,
	pitchend 	= 100,
	sound 		= "weapons/tfa_cso/blackdragoncannon/exp.wav"
}

sound.Add(soundData)