
SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author = "SweptThrone"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "0" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Fusion Rifle"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 54		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_irifle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

sound.Add( {
	name = "SWeapon_Fusion.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 130,
	pitch = {100, 100},
	sound = {"weapons/airboat/airboat_gun_energy1.wav", "weapons/airboat/airboat_gun_energy2.wav"}
} )

SWEP.Primary.Sound			= Sound("SWeapon_Fusion.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 600		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip			= 1000	-- Bullets you start with
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "Battery"

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true	

SWEP.TracerName 		= "AirboatGunHeavyTracer"
SWEP.TracerCount 		= 1

SWEP.data 				= {}
SWEP.data.ironsights			= 0
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 45	--base damage per bullet
SWEP.Primary.Spread		= .023	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.028, -1.734, 1.2)
SWEP.IronSightsAng = Vector(3.023, 0.709, -1.637)
SWEP.SightsPos = Vector(-6.028, -1.734, 1.2)
SWEP.SightsAng = Vector(3.023, 0.709, -1.637)
SWEP.RunSightsPos = Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng = Vector(6.446, 62.852, 0)

DEFINE_BASECLASS( SWEP.Base )

function SWEP:PrimaryAttack()

	if !self:CanPrimaryAttack() then return end
	if self:Ammo1() < 25 then return end
	
	self:TakePrimaryAmmo(24)
	
	BaseClass.PrimaryAttack(self)
	
end

function SWEP:Think2( ... )
	BaseClass.Think2(self, ...)
	if self:Ammo1() > 999 then
		self.Owner:SetAmmo( 999, self.Weapon:GetPrimaryAmmoType() )
	end
	
	self.Owner:SetAmmo( self:Ammo1() + 1, self.Weapon:GetPrimaryAmmoType() )
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true