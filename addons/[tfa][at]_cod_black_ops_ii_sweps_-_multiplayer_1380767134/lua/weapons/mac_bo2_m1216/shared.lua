SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-2,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.UseHands = true
SWEP.NZPaPName = ""
SWEP.Lua_Shell_Effect = "ShotgunShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.LuaShellEject = true
SWEP.Category				= "Mac's CoD Black Ops II SWEPs"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M1216"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 25			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_srm1216.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_srm1216.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("mac_bo2_s12.Single")		-- script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_shotgun.Silenced")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 468		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 16			-- Size of a clip
SWEP.Primary.ClipSize_XM			= 20			-- Size of a clip
SWEP.Primary.DefaultClip		= 30	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.8	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.IronSightsMoveSpeed = 1
SWEP.FireModes = {
	"4Burst",
	"Single"
}

SWEP.Primary.NumShots	= 10		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 25	-- Base damage per bullet
SWEP.Primary.Spread		= .039	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .029	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.938, -3.405, 0.98)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector()
SWEP.RunSightsAng = Vector()
SWEP.InspectPos = Vector(8.76, -4.882, 1.2)
SWEP.InspectAng = Vector(13.699, 32.4, 18.343)
SWEP.IronSightsPos_RDS = Vector(-2.918, 0, 0.34)
SWEP.IronSightsAng_RDS = Vector(0.5, 0, 0)
SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "bo2_rds", pos = Vector(1.215, -0.11, 1.33), size = { x = 0.274, y = 0.274 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.442, 0.086, 3.638), angle = Angle(0, 0, 0), size = Vector(0.351, 0.351, 0.351), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_shotgunsil.mdl", bone = "tag_weapon", rel = "", pos = Vector(22.947, 0.076, 1.958), angle = Angle(0, 0, 0), size = Vector(0.31, 0.31, 0.31), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

SWEP.Offset = {
        Pos = {
        Up = -1,
        Right = 1,
        Forward = -1,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_rds","bo2_quickdraw","bo2_stock"},
		order = 1,
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_longbarrel"},
		order = 2,
	},
	[5] = {
		header = "Misc",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_fastmag"},
		order = 3,
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"sg_slug","sg_frag"},
		order = 4,
	}

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