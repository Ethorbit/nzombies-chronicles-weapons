SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.RTOpaque = true
SWEP.NZPaPName = "G115 Generator"
SWEP.DisableChambering	= true
SWEP.UseHands			= true
SWEP.LuaShellEject	= false
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "G11"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/c_bo1_g11.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_g11.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_bo1_g11.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 1250			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Semi			= 1500			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 48		-- Size of a clip
SWEP.Primary.DefaultClip		= 144		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"3Burst",
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(85)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 4
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 144

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"

	self.Primary.Damage = NZCoDDMG(125)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 48
	self.Primary.MaxAmmo = 288
        self.Primary.DamageHeadshot = 5
	self.FireModes = {"Automatic"}
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.VMPos = Vector(0.6, 1.5, -0.5)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-2.825, -3, 0.719)
SWEP.SightsAng = Vector(0.1, 0.05, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(8, -2, -2)
SWEP.InspectAng = Vector(20, 50, 0)
SWEP.IronSightsPos_G11 = Vector(-2.741, -6, 0.419)
SWEP.IronSightsAng_G11 = Vector(1, -0.201, 0)
SWEP.IronSightsPos_VZ = Vector(-2.21, 1.534, 0.01)
SWEP.IronSightsAng_VZ = Vector(2, 0.4, 0)
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}


SWEP.VElements = {
	["blops_g11scope_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_g11scope", pos = Vector(0.009, -3.12, 1.48), angle = Angle(0, 90, 0), size = Vector(0.308, 0.308, 0.308), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["blops_g11scope"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_g11scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.228, 0, 5.782), angle = Angle(0, 90, 0), size = Vector(0.527, 0.527, 0.527), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_varscope"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_varscope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0.867, -0.082, 5.914), angle = Angle(0, 90, 0), size = Vector(0.51, 0.51, 0.51), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_varscope_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_varscope", pos = Vector(-0.088, -6.079, 1.21), angle = Angle(0, 90, 0), size = Vector(0.342, 0.342, 0.342), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false }

}
--[[SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_g11scope","blops_scope_zoom"}
	}
}]]

SWEP.Attachments = {
	[1] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_g11scope"},
		sel = 1,
		order = 1,
	}
}

SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 0,
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