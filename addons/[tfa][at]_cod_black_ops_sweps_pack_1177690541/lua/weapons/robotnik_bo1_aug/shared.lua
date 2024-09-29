SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "AUG-5OM3"
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Category				= "Mac's CoD Black Ops SWEPs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "AUG"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_aug.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_aug.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_bo1_aug.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_bo1_aug.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 937			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto",
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 34	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.8, -8.28, 0.28)
SWEP.SightsAng = Vector(0, -0.101, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (-2.5, 20.2, 0)
SWEP.InspectPos = Vector(7.88, 0, -2.201)
SWEP.InspectAng = Vector(11.3, 37.4, 0)
SWEP.IronSightsPos_RDS = Vector(-2.76, -3.6, 0.2)
SWEP.IronSightsAng_RDS = Vector(0, 0.1, 0)
SWEP.IronSightsPos_REF = Vector(-2.8, -3.921, 0.28)
SWEP.IronSightsAng_REF = Vector(0.6, 0, 0)
SWEP.IronSightsPos_AUG = Vector(-2.76, -2.56, 0.439)
SWEP.IronSightsAng_AUG = Vector(0, 0, 0)
--[[SWEP.ViewModelBoneMods = {
	["bg_sights"] = { scale = Vector(1, 1, 1), pos = Vector(17, -0, -12.8), angle = Angle(0, 0, 0) },
	["aug_rail_bg"] = { scale = Vector(1, 1, 1), pos = Vector(17, -0, -12.8), angle = Angle(0, 0, 0) }
}
]]--



SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.VElements = {
	["blops_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_rds", pos = Vector(1.878, -0.06, 1.223), size = { x = 0.283, y = 0.283 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_rds"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.325, 0.039, 4.887), angle = Angle(0, 0, 0), size = Vector(0.483, 0.483, 0.483), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_reflex_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_reflex", pos = Vector(1.705, 0.028, 1.019), size = { x = 0.247, y = 0.247 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false },
	["blops_reflex"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.2, -0.03, 4.887), angle = Angle(0, 0, 0), size = Vector(0.402, 0.402, 0.402), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_augscope_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_augscope", pos = Vector(-0.004, -5.874, 3.631), angle = Angle(0, 90, 0), size = Vector(0.211, 0.211, 0.211), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["blops_augscope"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_augscope.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.927, -0.04, 2.236), angle = Angle(0, 90, 0), size = Vector(0.524, 0.524, 0.524), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_sil"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_silreg.mdl", bone = "tag_weapon", rel = "", pos = Vector(17.138, 0, 2.134), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_xtend_mdl"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_xtendedaug.mdl", bone = "tag_clip", rel = "",pos = Vector(0.698, -0.071, -4.643), angle = Angle(0, 90, 0), size = Vector(0.689, 0.689, 0.689), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} ,active = false }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_rds","blops_reflex","blops_augscope"},
		order = 1,
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"blops_sil"},
		order = 2,
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"blops_xtendedmag_mdl","blops_dualmag"},
		order = 3,
	},
	[2] = {
		header = "ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum"},
		order = 4,
	}
}


SWEP.Offset = {
        Pos = {
        Up = 0,
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



SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}