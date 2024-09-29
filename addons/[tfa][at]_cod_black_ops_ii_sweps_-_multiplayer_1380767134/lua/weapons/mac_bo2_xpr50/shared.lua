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
SWEP.NZPaPName = "XPRSS-2-H3LL"
SWEP.UseHands	= true
SWEP.LuaShellEject	= true

SWEP.Category				= "Mac's CoD Black Ops II SWEPs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "XPR-50"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
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
SWEP.ScopeLegacyOrientation = true

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_xpr50.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_xpr50.mdl"	-- Weapon world model
SWEP.Base				= "tfa_3dscoped_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_xpr50.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_sniper.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 375			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 11		-- Size of a clip
SWEP.Primary.DefaultClip		= 80		-- Bullets you start with
SWEP.Primary.KickUp				= 2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 100	-- Base damage per bullet
SWEP.Primary.Spread		= .06	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.433, -2.425, 0.1775)
SWEP.SightsAng = Vector(2.4, 0.6, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(7.48, -1.083, 1.36)
SWEP.InspectAng = Vector(7.9, 26.799, 15.1)
SWEP.IronSightsPos_ACOG = Vector(-3.38, -2.504, 0.32)
SWEP.IronSightsAng_ACOG = Vector(0.2, 0.2, 0)
SWEP.IronSightsPos_DB = Vector(-3.508, -4.896, 0.298)
SWEP.IronSightsAng_DB = Vector(1.6, 1, 0)
SWEP.VMPos = Vector(3, 9, -3)
SWEP.VMAng = Vector(0, 0, 0)

SWEP.VElements = {
	["original_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "", pos = Vector(-1.099, 0.009, 5.619), angle = Angle(0, 180, 0), size = Vector(0.312, 0.312, 0.312), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = true },
	["bo2_dualband"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_dualband.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.404, 0.15, 4.327), angle = Angle(0, 0, 0), size = Vector(0.409, 0.409, 0.409), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_dualband_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "bo2_dualband", pos = Vector(-1.849, -0.11, 1.077), angle = Angle(0, 180, 0), size = Vector(0.238, 0.238, 0.238), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["bo2_acog"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.52, 0.1, 3.983), angle = Angle(0, 0, 0), size = Vector(0.409, 0.409, 0.409), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_acog_sprite"] = { type = "Sprite", sprite = "scope/gdcw_acog", bone = "tag_weapon", rel = "bo2_acog", pos = Vector(-1.639, -0.091, 1.23), size = { x = 1.055, y = 1.055 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_cpu"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_balcpu.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.529, 0.23, 5.906), angle = Angle(0, 0, 0), size = Vector(0.34, 0.34, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_snipersil2.mdl", bone = "j_recoil", rel = "", pos = Vector(22.496, 0.1, -1.79), angle = Angle(0, 0, 0), size = Vector(0.794, 0.794, 0.794), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

	SWEP.ViewModelBoneMods = {
	["tag_view"] = { scale = Vector(1, 1, 1), pos = Vector(9.645, -3.096, -3.066), angle = Angle(0, 0, 0) }
}


SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_acog","bo2_dualband","bo2_cpu"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_fastmag"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}
SWEP.ScopeReticule = ("scope/scope_xpr50")

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}
SWEP.Offset = {
        Pos = {
        Up = -2,
        Right = 1,
        Forward = 9,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}

local ceedee = {}

SWEP.RTMaterialOverride = -1 --the number of the texture, which you subtract from GetAttachment

SWEP.RTOpaque = true

local g36
if surface then
	g36 = surface.GetTextureID("scope/gdcw_scopesight") --the texture you vant to use
end
SWEP.Secondary.ScopeZoom = 8 --IMPORTANT BIT
SWEP.RTScopeAttachment = 0
SWEP.ScopeAngleTransforms = {}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}