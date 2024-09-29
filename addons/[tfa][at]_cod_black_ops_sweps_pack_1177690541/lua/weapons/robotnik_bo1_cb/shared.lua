SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = nil-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands			= 	true
SWEP.LuaShellEject		= true
SWEP.RTOpaque			= true
SWEP.DisableChambering = true
SWEP.FireModeName = "Crossbow"
SWEP.Type			= "Crossbow"
SWEP.ProjectileEntity = "tfbow_arrow" --Entity to shoot
SWEP.ProjectileEntity_EXP = "ent_bo1_grenade" --Entity to shoot
SWEP.ProjectileVelocity = 9000 --Entity to shoot's velocity
SWEP.ProjectileModel = "models/weapons/robotnik_crossbow_bolt1.mdl" --Entity to shoot's model"
SWEP.DamageType = bit.bor(DMG_NEVERGIB,DMG_SLASH)
SWEP.DamageType_EXP = bit.bor(DMG_ALWAYSGIB,DMG_BLAST)
SWEP.Category				= "Mac's CoD Black Ops SWEPs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Crossbow"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
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

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_crossbow.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_crossbow.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.DoMuzzleFlash = false
SWEP.Primary.Sound			= Sound("robotnik_bo1_crossbow.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 20			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip		= 10		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2	-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0 	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.Secondary.BashDamage = 175
SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 200	-- Base damage per bullet
SWEP.Primary.Spread		= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.224, 0, 0.54)
SWEP.SightsAng = Vector(0.3, 0.029, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (-5.301, 17.7, 0)
SWEP.InspectPos = Vector(4.159, 0, -7.761)
SWEP.InspectAng = Vector(33.4, 29.399, 5.3)
SWEP.IronSightsPos_BO1_ACOG = Vector(-2.243, 0, 0.22)
SWEP.IronSightsAng_BO1_ACOG = Vector(-0.5, 0.2, 0)
SWEP.VElements = {
	["blops_acog"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(5.3, 0.05, 4.208), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_acog_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_acog", pos = Vector(-3.427, -0.01, 1.345), angle = Angle(0, 180, 0), size = Vector(0.34, 0.34, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false }
}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_acog"}
	},
	[4] = {
		header = "bolt",
		offset = {0, 0},
		atts = {"blops_exp_bolt"}
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


SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 1,
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