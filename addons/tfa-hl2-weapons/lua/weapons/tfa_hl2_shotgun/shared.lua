
SWEP.Category				= "TFA HL2"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.PrintName				= "Shotgun"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/c_shotgun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.VMMultX = 3.1

SWEP.Primary.Sound			= Sound("weapons/shotgun/shotgun_fire7.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 70		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6			-- Size of a clip
SWEP.Primary.DefaultClip			= 60	-- Default number of bullets in a clip
SWEP.Primary.MaxAmmo = 60
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.3	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo			= "buckshot"
SWEP.NZWonderWeapon	= true

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
		self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		
		if self:HasNZModifier("pap") then
			self:SetClip1(12)
		else 
			self:SetClip1(self.Primary.ClipSize)
		end
    end
end

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.MaxAmmo = 120
	self.SequenceRateOverride = {[ACT_VM_RELOAD] = 7, [ACT_VM_RELOAD_EMPTY] = 7} --Like above but changes animation length to a target
	self.SequenceRateOverrideScaled = {[ACT_VM_RELOAD] = 7, [ACT_VM_RELOAD_EMPTY] = 7} --Like above but scales animation length rather than being absolute
	self.Primary.Damage = 150
	self.Primary.ClipSize = 12
end

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .5

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("weapons/shotgun/shotgun_reload" .. math.random(1,3) .. ".wav") }
	},
	[ACT_VM_PRIMARYATTACK] = {
		{ ["time"] = 0.25, ["type"] = "lua", ["value"] = function( wep ) wep:SendWeaponAnim(ACT_SHOTGUN_PUMP) end, ["client"] = true, ["server"] = true },
		{ ["time"] = 0.25, ["type"] = "lua", ["value"] = function( wep ) wep.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav") end, ["client"] = false, ["server"] = true }
	}
}

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 7		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 90	-- Base damage per bullet
SWEP.Primary.Spread		= .04	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .04	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.IronSightsAng = Vector(0.13, 0.089, 0)
SWEP.SightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.SightsAng = Vector(0.13, 0.089, 0)
SWEP.RunSightsPos = Vector(9.843, -16.458, 0)
SWEP.RunSightsAng = Vector(-5.371, 70, 0)

SWEP.IronSightTime = 0.325

SWEP.StatCache_Blacklist = {
    ["Primary.NumShots"] = true,
    ["Primary.Damage"] = true,
	["Primary.Sound"] = true,
	["Primary.AmmoConsumption"] = true
}

DEFINE_BASECLASS(SWEP.Base)

function SWEP:PrimaryAttack()
	if (self:HasNZModifier("pap")) then
		self.Primary.NumShots	= 7		-- How many bullets to shoot per trigger pull, AKA pellets
		self.Primary.AmmoConsumption = 1
		self.Primary.Sound			= Sound("weapons/shotgun/shotgun_fire7.wav")
		self.Primary.Damage = 240
		self.Primary.ClipSize = 12
		BaseClass.PrimaryAttack(self)
	else
		self.Primary.NumShots	= 7		-- How many bullets to shoot per trigger pull, AKA pellets
		self.Primary.Damage		= 120
		self.Primary.AmmoConsumption = 1
		self.Primary.Sound			= Sound("weapons/shotgun/shotgun_fire7.wav")
		BaseClass.PrimaryAttack(self)
	end
end

function SWEP:SecondaryAttack()
	if (self:HasNZModifier("pap")) then
		self.Primary.NumShots	= 7		-- How many bullets to shoot per trigger pull, AKA pellets
		self.Primary.AmmoConsumption = 2
		self.Primary.Sound			= Sound("weapons/shotgun/shotgun_dbl_fire7.wav")
		self.Primary.Damage = 480
		self.Primary.ClipSize = 12
		BaseClass.PrimaryAttack(self)
	else
		self.Primary.NumShots	= 7		-- How many bullets to shoot per trigger pull, AKA pellets
		self.Primary.Damage		= 240
		self.Primary.AmmoConsumption = 2
		self.Primary.Sound			= Sound("weapons/shotgun/shotgun_dbl_fire7.wav")
		BaseClass.PrimaryAttack(self)
	end
end