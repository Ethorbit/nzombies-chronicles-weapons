game.AddAmmoType({
	name = "CustomAR2_ORB",
	dmgtype = DMG_BLAST
})

SWEP.Category				= "TFA HL2"
SWEP.Author				= "Ethorbit"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "AR2"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 58			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.VMMultX = 1.95

SWEP.DisableChambering = true --Disable round-in-the-chamber
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false --should have left it as original, and let everybody do as little change to the coding as necessary. 
	--But no, you just had to go and screw with the viewmodel.
	--goddammit, you're making me spend a lot of time fixing this mess.
SWEP.ViewModel				= "models/weapons/c_irifle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.NZWonderWeapon	= true
SWEP.NZPaPName = "AR3"
SWEP.Primary.Sound			= "AR2.Fire"		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 655		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 230		-- Bullets you start with
SWEP.Primary.MaxAmmo = 230
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
		self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		
		if self:HasNZModifier("pap") then
			self.Owner:SetAmmo( 12, "CustomAR2_ORB" )  
			self:SetClip1(60)
		else
			self.Owner:SetAmmo( 9, "CustomAR2_ORB" )  
			self:SetClip1(self.Primary.ClipSize)
		end
    end
end

SWEP.TracerName = "AR2Tracer"
SWEP.TracerCount = 1

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 30	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 7
SWEP.Primary.Spread		= .005	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.Secondary.Ammo = "CustomAR2_ORB"
SWEP.Secondary.Automatic = true
SWEP.Secondary.Delay = 1.5

SWEP.data 				= {}
SWEP.data.ironsights			= 0
SWEP.ScopeScale 			= 0.7

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.441, 0, 2.88)
SWEP.IronSightsAng = Vector(-1.8, -2.401, 0)
SWEP.SightsPos = Vector(-6.441, 0, 2.88)
SWEP.SightsAng = Vector(-1.8, -2.401, 0)
SWEP.RunSightsPos = Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng = Vector(6.446, 62.852, 0)

function SWEP:SecondaryAttack()
	if self:Ammo2() <= 0 then return end
	if self.Owner:GetAmmoCount( self.Secondary.Ammo ) <= 0 then return end
	self:EmitSound( "weapons/cguard/charging.wav" )
	timer.Simple( 0.5, function()
		if !IsValid(self.Owner) then return end
		self.Owner:ViewPunch( Angle( -20, 0, 0 ) )
		self:EmitSound( "weapons/irifle/irifle_fire2.wav" )
		self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
		if SERVER then
			local cball = nil
			if (self:HasNZModifier("pap")) then
				cball = ents.Create("nzombies_orb_pap")
				cball2 = ents.Create("nzombies_orb_pap")
			else
				cball = ents.Create("nzombies_orb")
			end

			if (IsValid(cball)) then
				cball:SetPos(self.Owner:GetShootPos() + self.Owner:EyeAngles():Forward() * 64)
				cball:SetOwner(self.Owner)
				cball:Spawn()

				if (self:HasNZModifier("pap")) then
					cball2:SetPos((self.Owner:GetShootPos() + Vector(10, 0, 0) + self.Owner:EyeAngles():Forward() * 74))
					cball2:SetOwner(self.Owner)
					cball2:Spawn()

					local phys = cball2:GetPhysicsObject()
					if (IsValid(phys)) then
						phys:ApplyForceCenter(Vector(10, 0, 0))
					end
				end
			end
		end
	end)
	self:TakeSecondaryAmmo(1)
	self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
end

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.MaxAmmo = 600
	self.Primary.Damage = 70
	self.Primary.RPM = 750
	self.Primary.ClipSize = 60
end