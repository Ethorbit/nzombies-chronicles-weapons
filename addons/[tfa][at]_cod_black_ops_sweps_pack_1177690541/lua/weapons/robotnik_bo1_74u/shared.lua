SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = {
	["tag_view"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.359, 0, 0) },
	["j_bolt"] = { scale = Vector(1, 1, 1), pos = Vector(-4.31, 0, 0), angle = Angle(0, 0, 0) }
}
 --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "AK74fu2"
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Category				= "Mac's CoD Black Ops SWEPs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "AK-74u"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_ak74u.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_ak74u.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_bo1_ak74u.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_bo1_ak74u.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 750			-- This is in Rounds Per Minute
SWEP.Primary.RPM_R			= 1000			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_X			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

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
SWEP.SightsPos = Vector(-2.682, -6.761, 1.08)
SWEP.SightsAng = Vector(-0.101, 0, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (-4.301, 22.7, 0)
SWEP.InspectPos = Vector(5.025, 0, 0)
SWEP.InspectAng = Vector(9.5, 24, 12.399)
SWEP.IronSightsPos_RDS = Vector(-2.76, 1.759, 0.36)
SWEP.IronSightsAng_RDS = Vector(0.8, -0.101, 0)
SWEP.IronSightsPos_REF = Vector(-2.641, 1.36, 0.039)
SWEP.IronSightsAng_REF = Vector(0.2, 0.2, 0)
SWEP.IronSightsPos_BO1_ACOG = Vector(-2.612, -0.603, 0.305)
SWEP.IronSightsAng_BO1_ACOG = Vector(-0.101, 2.2, 0)

SWEP.VElements = {
	["blops_akxtend"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_akxtendedmag.mdl", bone = "tag_clip", rel = "", pos = Vector(1.358, -0.083, -3.935), angle = Angle(0, 0, 0), size = Vector(0.504, 0.504, 0.504), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_rds", pos = Vector(2.22, -0.02, 1.57), size = { x = 0.312, y = 0.312 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_rds"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_kobra.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0.079, 2.812), angle = Angle(0, 0, 0), size = Vector(0.465, 0.465, 0.465), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_siderail"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_akrail.mdl", bone = "tag_weapon", rel = "", pos = Vector(0.448, -0.12, 0.879), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_reflex_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_reflex", pos = Vector(0, 0.029, 1.118), size = { x = 0.225, y = 0.225 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false },
	["blops_reflex"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_reflex.mdl", bone = "tag_weapon", rel = "blops_siderail", pos = Vector(0, 0.075, 2.825), angle = Angle(0, 0, 0), size = Vector(0.426, 0.426, 0.426), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_pka"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_pka.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.585, 0.155, 3.104), angle = Angle(0, 0, 0), size = Vector(0.56, 0.56, 0.56), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_pka_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_pka", pos = Vector(-2.501, 0.019, 1.488), angle = Angle(0, 180, 0), size = Vector(0.326, 0.326, 0.326), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false  },
	["blops_sil"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_aksil.mdl", bone = "tag_weapon", rel = "", pos = Vector(20.083, -0.08, 0.103), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} ,active = false}

}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}


	
SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_rds","blops_reflex","blops_pka"},
		order = 1,
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"blops_sil","blops_rapidfire"},
		order = 2,
	},
	[5] = {
		header = "Mags",
		offset = {0, 0},
		atts = {"blops_xtendedmag_ak","blops_dualmag"},
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
        Up = 1,
        Right = 1,
        Forward =1,
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