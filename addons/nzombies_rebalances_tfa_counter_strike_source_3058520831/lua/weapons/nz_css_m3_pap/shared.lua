SWEP.Gun 								= ("nz_css_m3")
SWEP.Category							= "[TFA] [NZ PAP] CS:S"
SWEP.Author								= ""
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""
SWEP.MuzzleAttachment					= "1"
SWEP.MuzzleFlashEffect 					= "pap_muzzleflash"
SWEP.PrintName							= "Leone's Fastline"	
SWEP.NZPaPName							= "Leone's Fastline"
SWEP.Slot								= 3
SWEP.SlotPos							= 60
SWEP.DrawAmmo							= true
SWEP.DisableChambering 					= true
SWEP.DrawWeaponInfoBox					= false
SWEP.BounceWeaponIcon   				= false
SWEP.DrawCrosshair						= true
SWEP.Weight								= 30
SWEP.AutoSwitchTo						= true
SWEP.AutoSwitchFrom						= true
SWEP.HoldType 							= "shotgun"

SWEP.ViewModelFOV						= 55
SWEP.ViewModelFlip						= false
SWEP.ViewModel							= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel							= "models/weapons/w_shot_m3super90.mdl"
SWEP.Base 								= "tfa_shotty_base"
SWEP.Spawnable							= false
SWEP.UseHands 							= true
SWEP.AdminSpawnable						= true

SWEP.Primary.Sound						= Sound("Weapon_M3.1")
SWEP.Primary.RPM						= 242
SWEP.Primary.Knockback          		= 0	
SWEP.Primary.ClipSize					= 10
SWEP.Primary.DefaultClip				= 90
SWEP.Primary.KickUp						= 1.21
SWEP.Primary.KickDown					= 0.98
SWEP.Primary.KickHorizontal				= 0.49
SWEP.Primary.Automatic					= false
SWEP.Primary.Ammo						= "buckshot"
SWEP.Primary.MaxAmmo 					= 90

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 


SWEP.Secondary.IronFOV					= 60

SWEP.ShellTime							= .2

SWEP.Primary.NumShots					= 12	
SWEP.Primary.Damage						= 109
SWEP.Primary.DamageHeadshot 			= 3
SWEP.Primary.Spread						= .03
SWEP.Primary.IronAccuracy 				= .03

SWEP.IronSightsPos 						= Vector(-7.64, -3.225, 3.48)
SWEP.IronSightsAng 						= Vector(0.13, 0.089, 0)
SWEP.SightsPos 							= Vector(-7.64, -3.225, 3.48)
SWEP.SightsAng 							= Vector(0.13, 0.089, 0)
SWEP.RunSightsPos 						= Vector(9.843, -16.458, 0)
SWEP.RunSightsAng 						= Vector(-5.371, 70, 0)

SWEP.IronSightTime 						= 0.325
