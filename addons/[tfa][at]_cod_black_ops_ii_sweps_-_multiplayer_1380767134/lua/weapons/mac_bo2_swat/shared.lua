SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-0.5,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Fly Swatter"
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Primary.PenetrationMultiplier = 2 --Change the amount of something this gun can penetrate through
SWEP.Category				= "Mac's CoD Black Ops II SWEPs"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "SWAT-556"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/c_bo2_swat556.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_swat556.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_swat556.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_rifle.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 940			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Semi			= 940			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 39		-- Size of a clip
SWEP.Primary.DefaultClip		= 60		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"3Burst",
	"Auto",
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 34	-- Base damage per bullet
SWEP.Primary.Spread		= .03	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.08, -2.172, 0.28)
SWEP.SightsAng = Vector(0.2, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(5.025, -3.139, 1.48)
SWEP.InspectAng = Vector(7.9, 29.2, 13.399)
SWEP.IronSightsPos_RDS = Vector(-3.096, -0.525, 0)
SWEP.IronSightsAng_RDS = Vector(-0.401, -0.101, 0)
SWEP.IronSightsPos_HOL = Vector(-3.069, -2.235, 0)
SWEP.IronSightsAng_HOL = Vector(-0.5, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.06, -3.767, 0.199)
SWEP.IronSightsAng_ACOG = Vector(0.2, 0.1, 0)
SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "bo2_rds", pos = Vector(1.284, -0.12, 1.616), size = { x = 0.295, y = 0.295 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(5.07, 0.119, 3.766), angle = Angle(0, 0, 0), size = Vector(0.43, 0.43, 0.43), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "bo2_holo", pos = Vector(-0.452, -0.12, 1.659), size = { x = 0.5, y = 0.5 }, color = Color(255, 113, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_holo"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.18, 0.119, 3.684), angle = Angle(0, 0, 0), size = Vector(0.43, 0.43, 0.43), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_acog_sprite"] = { type = "Sprite", sprite = "scope/gdcw_acog", bone = "tag_weapon", rel = "bo2_acog", pos = Vector(-1.724, -0.099, 1.149), size = { x = 1.192, y = 1.192 }, color = Color(255, 113, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_acog"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.02, 0.1, 3.914), angle = Angle(0, 0, 0), size = Vector(0.381, 0.381, 0.381), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_riflesup.mdl", bone = "tag_weapon", rel = "", pos = Vector(31.372, 0.1, 1.31), angle = Angle(0, 0, 0), size = Vector(0.46, 0.46, 0.46), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_rds","bo2_holo","bo2_acog"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_dualmag"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}



SWEP.Offset = {
        Pos = {
        Up = -1,
        Right = 1,
        Forward = 3,
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