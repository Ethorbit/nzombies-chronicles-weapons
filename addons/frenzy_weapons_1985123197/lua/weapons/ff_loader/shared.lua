-- Variables that are used on both client and server
-- = ("zst_shotgun")					-- must be the name of your swep


SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author = "SweptThrone"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.PrintName				= "Scrap Loader"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 60		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative to other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_shot_xm1014.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shot_xm1014.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

sound.Add( {
	name = "SWeapon_Scrap.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 130,
	pitch = {125, 125},
	sound = "weapons/shotgun/shotgun_dbl_fire.wav"
} )

SWEP.Primary.Sound			= Sound("SWeapon_Scrap.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 60		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 24		-- Size of a clip
SWEP.Primary.DefaultClip			= 24	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 20				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 20		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 4.5	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"
SWEP.Primary.AmmoConsumption = 1
SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.ShellTime			= 0.25

SWEP.Primary.ReloadSound = "weapons/p90/p90_cliprelease.wav"
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 20	-- Base damage per bullet
SWEP.Primary.Spread		= .015	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("weapons/tmp/tmp_clipin.wav") }
	}
}

SWEP.StatCache_Blacklist = {
    ["Primary.NumShots"] = true,
	["Primary.AmmoConsumption"] = true,
	["Primary.KickUp"]	= true,
	["Primary.KickDown"] = true,
	["Primary.Spread"] = true,
	["Primary.IronAccuracy"] = true
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:PrimaryAttack()

	if self:Clip1() > 0 then
		self.Primary_TFA.NumShots = self:Clip1()
		self.Primary_TFA.AmmoConsumption = self:Clip1()
		self.Primary_TFA.KickUp	= self:Clip1()
		self.Primary_TFA.KickDown = self:Clip1()
		self.Primary_TFA.Spread = ( self:Clip1() * 0.625 ) / 100
		self.Primary_TFA.IronAccuracy = ( self:Clip1() * 0.625 ) / 100
	end

	BaseClass.PrimaryAttack(self)

end

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-9, 0, 3.16)
SWEP.IronSightsAng = Vector(1.1, 0, 0)
SWEP.SightsPos = Vector(-9, 0, 3.16)
SWEP.SightsAng = Vector(1.1, 0, 0)
SWEP.RunSightsPos = Vector(9.843, -16.458, 0)
SWEP.RunSightsAng = Vector(-5.371, 70, 0)
--SWEP.Primary.Knockback = 100
SWEP.IronSightTime = 0.325
SWEP.Primary.Knockback = 175
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true