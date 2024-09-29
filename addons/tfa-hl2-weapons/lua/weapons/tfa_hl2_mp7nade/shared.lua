
SWEP.Category				= "TFA HL2"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "SMG-1"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName = "SMG-11"
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
SWEP.VMMultX = 2.2

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_smg1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/smg1/smg1_fire1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 857			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 250		-- Bullets you start with
SWEP.Primary.MaxAmmo = 250
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
		self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		
		if self:HasNZModifier("pap") then
			self.Owner:SetAmmo( 30, "SMG1_Grenade" )  
			self:SetClip1(55)
		else
			self.Owner:SetAmmo( 15, "SMG1_Grenade" )  
			self:SetClip1(self.Primary.ClipSize)
		end
    end
end

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("weapons/smg1/smg1_reload.wav") }
	}
}

SWEP.Secondary.Ammo = "SMG1_Grenade"
SWEP.Secondary.Automatic = true
SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 35	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 8
SWEP.Primary.Spread		= .0025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.441, 0, 2.88)
SWEP.IronSightsAng = Vector(-1.201, -0.101, 0)
SWEP.SightsPos = Vector(-6.441, 0, 2.88)
SWEP.SightsAng = Vector(-1.201, -0.101, 0)
SWEP.RunSightsPos = Vector(5.748, -9.686, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = 75
	self.Primary.MaxAmmo = 700
	self.Primary.ClipSize = 55
end

function SWEP:SecondaryAttack()
	if self:Ammo2() <= 0 then return end
	if self.Owner:GetAmmoCount( self.Secondary.Ammo ) <= 0 then return end
	self:EmitSound("weapons/ar2/ar2_altfire.wav")
	self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	if SERVER then
		local ent = ents.Create( "oznade" )
		ent:SetOwner( self.Owner )
		ent:SetPos( self.Owner:GetShootPos() )
		ent:SetAngles( self.Owner:EyeAngles() )
		ent:SetModel("models/Weapons/ar2_grenade.mdl")
		ent:Spawn()
		ent:Activate()
		ent:GetPhysicsObject():SetVelocity( self.Owner:GetAimVector() * 1300 )
	end
	self:TakeSecondaryAmmo(1)
	self:SetNextSecondaryFire( CurTime() + 1 )
	
end