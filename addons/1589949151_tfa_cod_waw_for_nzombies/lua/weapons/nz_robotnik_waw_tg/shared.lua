SWEP.Blowback_Shell_Effect = "ShotgunShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.LuaShellEjectDelay = 0.6	
SWEP.LuaShellEject		= true
SWEP.UseHands			= true
SWEP.NZPaPName = "Gut Shot"
SWEP.Primary.Knockback = 0
SWEP.DisableChambering = true

SWEP.Category				= "CoD WaW nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M1897 Trench Gun"		-- Weapon name (Shown on HUD)	
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

SWEP.Primary.DamageRange = NZCoDRange(10.16)

SWEP.VMMultX = 0.83
SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_waw_trenchgun_new.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_waw_trenchgun_new.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("waw_trenchgun_new.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 60		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6			-- Size of a clip
SWEP.Primary.DefaultClip		= 60	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 2				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 
SWEP.ShellTime			= .5

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= NZCoDDMG(160)	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .020	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

SWEP.Ispackapunched = 0

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 60

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Ispackapunched = 1
	self.Primary.Damage = NZCoDDMG(300)
	self.Primary.ClipSize = 8
	self.Primary.MaxAmmo = 60
	-- self.Attachments = {
	-- 	[3] = {
	-- 		header = "Sight",
	-- 		offset = {0, 0},
	-- 		atts = {"sg_frag"},
	-- 		sel = 1,
	-- 	},
	-- }
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.4, 0, 1.78)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(3.618, -7.281, -8)
SWEP.RunSightsAng = Vector(28, 55, 0)
SWEP.InspectPos = Vector(6, -4, -3)
SWEP.InspectAng = Vector(30, 45, 0)
SWEP.VMPos = Vector(0.5, 2, 0)
SWEP.VMAng = Vector(0, 0, 0)

SWEP.ViewModelBoneMods = {
	["tag_view"] = { scale = Vector(1, 1, 1), pos = Vector(5.861, -1.403, -1.178), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
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