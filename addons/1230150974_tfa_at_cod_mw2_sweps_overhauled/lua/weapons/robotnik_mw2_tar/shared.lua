SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-0.5,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands				= true
SWEP.LuaShellEject			= true
SWEP.RTOpaque	= true
SWEP.NZPaPName = "RE-TAR-DEAD"

SWEP.Category				= "Mac's CoD MW2 SWEPs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "TAR-21"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_mw2_tar21.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_mw2_tar21_new.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_mw2_tar21.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_mw2_acr.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 759			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 60		-- Bullets you start with
SWEP.Primary.KickUp				= 0.4		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.4		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto",
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 37	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.11, -7.1, 0.579)
SWEP.SightsAng = Vector(0.2, 0, 0)
SWEP.RunSightsPos = Vector ( )
SWEP.RunSightsAng = Vector ( )
SWEP.InspectPos = Vector(6.912, -4.729, 2.724)
SWEP.InspectAng = Vector(21.399, 39.7, 28.326)
SWEP.IronSightsPos_RDS = Vector(-3.109, 0, 0)
SWEP.IronSightsAng_RDS = Vector(-0.5, 0, 0)
SWEP.IronSightsPos_HOL = Vector(-3.109, -4.025, 0.474)
SWEP.IronSightsAng_HOL = Vector(-3.8, 0.1, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.099, -2.889, 0.34)
SWEP.IronSightsAng_ACOG = Vector(0.1, 0, 0)
SWEP.IronSightsPos_TH = Vector(-3.154, -5.712, 0.531)
SWEP.IronSightsAng_TH = Vector(1.2, -0.801, 0)
SWEP.VElements = {
	["mw2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "mw2_rds", pos = Vector(0.05, 0, 1.659), size = { x = 0.181, y = 0.181 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["mw2_rds"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_mars.mdl", bone = "tag_weapon", rel = "", pos = Vector(-3.432, 0.05, 2.801), angle = Angle(0, 90, 0), size = Vector(0.368, 0.368, 0.368), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["mw2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "mw2_holo", pos = Vector(-0.529, 0.019, 1.289), size = { x = 0.181, y = 0.181 }, color = Color(255, 0, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["mw2_holo"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(-2.941, -0.01, 3.046), angle = Angle(0, 0, 0), size = Vector(0.49, 0.49, 0.49), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["mw2_acog"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(-2.727, -0.01, 2.963), angle = Angle(0, 0, 0), size = Vector(0.372, 0.372, 0.372), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["mw2_thermal_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "mw2_thermal", pos = Vector(-2.445, -0.02, 0.883), angle = Angle(0, 180, 0), size = Vector(0.212, 0.212, 0.212), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false  },
	["mw2_thermal"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_thermal.mdl", bone = "tag_weapon", rel = "", pos = Vector(-2.727, 0.019, 2.882), angle = Angle(0, 0, 0), size = Vector(0.372, 0.372, 0.372), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["mw2_sil"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_silencer.mdl", bone = "tag_weapon", rel = "", pos = Vector(13.069, 0.14, -0.08), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"mw2_rds","mw2_holo","mw2_acog","mw2_thermal"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"mw2_sil"}
	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","mw2_fmj","mw2_xtendedmag"}
	}

}
SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = -2,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}