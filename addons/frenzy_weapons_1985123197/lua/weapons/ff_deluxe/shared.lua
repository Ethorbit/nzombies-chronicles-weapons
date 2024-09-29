SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Bullpup Deluxe"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 62			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_famas.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_famas.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.Primary.Sound			= Sound("weapons/galil/galil-1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 600			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 90		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"
SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 25	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns
SWEP.SelectiveFire		= false

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.24, 0, 1.279)
SWEP.IronSightsAng = Vector(0.3, -0.101, -1)
SWEP.SightsPos = Vector(-6.24, 0, 1.279)
SWEP.SightsAng = Vector(0.3, -0.101, -1)
SWEP.RunSightsPos = Vector(8.27, -5.498, 0.243)
SWEP.RunSightsAng = Vector(-7.789, 51.139, 0)


SWEP.StatCache_Blacklist = {
    ["Primary.NumShots"] = true,
    ["Primary.Damage"] = true,
	["Primary.KickUp"] = true,
	["Primary.KickHorizontal"] = true,
	["Primary.KickDown"] = true,
	["Primary.Spread"] = true,
    ["Primary.AmmoConsumption"] = true,
    ["Primary.Sound"] = true
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:SecondaryAttack()

    self.Primary_TFA.AmmoConsumption = 6
	self.Primary_TFA.NumShots = 6
	self.Primary_TFA.Damage = 12
	self.Primary_TFA.KickUp				= 1.5
	self.Primary_TFA.KickDown			= 1.5
	self.Primary_TFA.KickHorizontal		= 1.5
	self.Primary_TFA.Spread		= .06
    self.Primary_TFA.Sound = Sound("weapons/shotgun/shotgun_fire7.wav")
	BaseClass.PrimaryAttack(self)

end

function SWEP:PrimaryAttack()

    self.Primary_TFA.AmmoConsumption = 1
	self.Primary_TFA.NumShots = 1
	self.Primary_TFA.Damage = 23
	self.Primary_TFA.KickUp				= 0.3
	self.Primary_TFA.KickDown			= 0.3
	self.Primary_TFA.KickHorizontal		= 0.3
	self.Primary_TFA.Spread		= .03
    self.Primary_TFA.Sound = Sound("weapons/galil/galil-1.wav")
	BaseClass.PrimaryAttack(self)
	
end

function SWEP:PreDrawViewModel( vm )
	Material("models/weapons/v_models/rif_famas/rif_famas"):SetTexture("$basetexture", "phoenix_storms/mrtire")
end


function SWEP:PostDrawViewModel( vm )
	Material("models/weapons/v_models/rif_famas/rif_famas"):SetTexture( "$basetexture", "models/weapons/v_models/rif_famas/rif_famas" )
end

function SWEP:DrawWorldModel()
	self:SetMaterial("phoenix_storms/mrtire")
	self:DrawModel()
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true