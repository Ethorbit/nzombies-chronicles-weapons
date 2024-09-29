SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShotgunShellEject"
--redacted

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author = "SweptThrone"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Global's 12Ga M249"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 64			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_mach_m249para.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_mach_m249para.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

sound.Add( {
	name = "SWeapon_M1249.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 80,
	pitch = {60, 60},
	sound = "weapons/sg552/sg552-1.wav"
} )

SWEP.Primary.Sound			= Sound("SWeapon_M1249.1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 325			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 25		-- Size of a clip
SWEP.Primary.DefaultClip		= 25		-- Bullets you start with
SWEP.Primary.KickUp				= 2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 2	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 9		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 10	-- Base damage per bullet
SWEP.Primary.Spread		= .06	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

SWEP.CrouchRecoilMultiplier=0.125
SWEP.Primary.SpreadMultiplierMax = 10
SWEP.Primary.SpreadIncrement = 1
SWEP.SprintFOVOffset = 10

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.933, -1.727, 2.279)
SWEP.IronSightsAng = Vector(0.209, 0.057, 0)
SWEP.SightsPos = Vector(-5.933, -1.727, 2.279)
SWEP.SightsAng = Vector(0.209, 0.057, 0)
SWEP.RunSightsPos = Vector(13.307, -15.827, 0)
SWEP.RunSightsAng = Vector(-10.749, 70, -3.583)

SWEP.VElements = {
	["shell++"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet5", rel = "", pos = Vector(0.081, 1.042, -0.159), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shell+"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet4", rel = "", pos = Vector(0.159, 1.044, 0.079), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shell++++"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet8", rel = "", pos = Vector(-0.077, 1.042, -0.159), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shell+++"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet7", rel = "", pos = Vector(0.004, 1.042, 0.081), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shell"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet2", rel = "", pos = Vector(0, 1.046, 0), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shell+++++"] = { type = "Model", model = "models/shells/shell_12gauge.mdl", bone = "v_weapon.bullet9", rel = "", pos = Vector(-0.32, 1.042, -0.159), angle = Angle(0, 90, 0), size = Vector(1.026, 1.026, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["v_weapon.bullet1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true