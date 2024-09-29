SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Hades"
SWEP.UseHands	= true
SWEP.DisableChambering	= true
SWEP.Primary.Knockback = 0

SWEP.Primary.DamageRange = NZCoDRange(12.4)

--SWEP.Primary.NoDamageRange = NZCoDRange(30.48)

SWEP.Category				= "CoD BO nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Olympia"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
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
SWEP.FireModeName = "Break-Action"
SWEP.VMMultX = 1.15
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_olympia.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_olympia.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_bo1_olympia.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 212			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2		-- Size of a clip
SWEP.Primary.DefaultClip		= 38		-- Bullets you start with
SWEP.Primary.KickUp				= 1.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1.5		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1.5		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "buckshot"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(80)	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .020 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0
function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 38

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Ispackapunched = 1
	self.Primary.NumShots = 12
	self.Primary.Damage = NZCoDDMG(200)
	self.Primary.ClipSize = 2
	self.Primary.MaxAmmo = 60
	self.AllowIgnite = true
	self.IgniteDamage = 20
	self.IgniteRadius = 20
	-- self.Attachments = {
	-- 	[3] = {
	-- 		header = "Ammo",
	-- 		offset = {0, 0},
	-- 		atts = {"blops_dragon"},
	-- 		sel = 1,
	-- 	},
	-- }
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.VMPos = Vector(0.6, 1, -0.3)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-3.34, 0, 1.259)
SWEP.SightsAng = Vector(0.6, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(5, -2, 1)
SWEP.InspectAng = Vector(15, 45, 10)


SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}


	
--[[SWEP.Attachments = {
	[3] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"blops_dragon","sg_frag","sg_slug"}
	}
}]]


SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 0,
        Forward = 2,
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