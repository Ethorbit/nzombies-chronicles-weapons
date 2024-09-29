SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "SMG"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 72			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_smg1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= "weapons/smg1/smg1_fire1.wav"		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 950		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 45		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"
SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 30	-- Base damage per bullet
SWEP.Primary.Spread		= .03	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.4262, 0, 1.032)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-6.361, 0, 1.039)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.748, -9.686, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)
DEFINE_BASECLASS(SWEP.Base)

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("weapons/smg1/smg1_reload.wav") }
	}
}

SWEP.Secondary.Ammo = "SMG1_Grenade"
SWEP.Secondary.Automatic = false

function SWEP:PrimaryAttack()

	if self:Clip1() == 0 then
		self:Reload()
	else
		BaseClass.PrimaryAttack(self)
	end

end

function SWEP:SecondaryAttack()
	
	if !self:CanPrimaryAttack() then return end
	if self.Owner:GetAmmoCount( self.Secondary.Ammo ) <= 0 then return end
	self:EmitSound("weapons/ar2/ar2_altfire.wav")
	self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	if SERVER then
		local nade = ents.Create("grenade_ar2")
		nade:SetPos(self.Owner:GetShootPos() + self.Owner:EyeAngles():Forward() * 32)
		nade:SetVelocity( self.Owner:EyeAngles():Forward() * 1000 )
		nade:SetAngles( self.Owner:EyeAngles() )
		nade:Spawn()
	end
	self:TakeSecondaryAmmo(1)
	self:SetNextSecondaryFire( CurTime() + 1 )
	
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true