SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands			= true
SWEP.LuaShellEject		= true
SWEP.DisableChambering	= true
SWEP.NZPaPName = "M1000"
SWEP.Primary.Knockback = 0

SWEP.Category				= "CoD WaW nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M1 Garand"		-- Weapon name (Shown on HUD)	
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

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 65
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_waw_m1garand.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_waw_m1garand.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("waw_garand.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 444			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 128		-- Bullets you start with
SWEP.Primary.KickUp				= 0.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.4		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.4		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 65		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(118.75)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 3 -- Headshot damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 128

function SWEP:OnPaP()
    self.MuzzleFlashEffect = "pap_muzzleflash"
    self.Ispackapunched = 1
    self.Primary.Damage = NZCoDDMG(350)
    self.Primary.ClipSize = 12
    self.Primary.MaxAmmo = 150
    self.Primary.DamageHeadshot = 6 -- Headshot damage per bullet
    self:ClearStatCache()
    return true
end

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.476, -1.961, 2.32)
SWEP.SightsAng = Vector(-0.8, 0, 0)
SWEP.RunSightsPos = Vector (5, -7, -5)
SWEP.RunSightsAng = Vector (20, 50, 10)
SWEP.InspectPos = Vector(8, -7.3, -3.5)
SWEP.InspectAng = Vector(20, 50, 0)
SWEP.VMPos = Vector(1.5, 3, -1)
SWEP.VMAng = Vector(0, 0, 0)

DEFINE_BASECLASS(SWEP.Base)
function SWEP:ShootBullet( ... )
	if self:Clip1() <= 0 and self:GetIronSights() then
		self:EmitSound("waw_garand.ping")
	end
	BaseClass.ShootBullet( self, ... )
end


SWEP.ViewModelBoneMods = {
	["tag_view"] = { scale = Vector(1, 1, 1), pos = Vector(8.206, -2.302, -0.504), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.Offset = {
        Pos = {
        Up = 2,
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
