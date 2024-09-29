SWEP.Gun 									= ("nz_css_aug")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Bullpup"
SWEP.NZPaPReplacement						= "nz_css_aug_pap"
SWEP.Slot									= 2
SWEP.SlotPos								= 60
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 50
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.XHair									= true
SWEP.HoldType 								= "smg"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel								= "models/weapons/w_rif_aug.mdl"
SWEP.Base 									= "tfa_scoped_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_AUG.1")
SWEP.Primary.RPM							= 666
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 30
SWEP.Primary.DefaultClip					= 180
SWEP.Primary.KickUp							= .4
SWEP.Primary.KickDown						= .4
SWEP.Primary.KickHorizontal					= .2
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "ar2"
SWEP.Primary.MaxAmmo 						= 180

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom					= 5
SWEP.Secondary.UseACOG						= true
SWEP.Secondary.UseMilDot					= false		
SWEP.Secondary.UseSVD						= false	
SWEP.Secondary.UseParabolic					= false	
SWEP.Secondary.UseElcan						= false
SWEP.Secondary.UseGreenDuplex				= false	

SWEP.data 									= {}
SWEP.data.ironsights						= 1
SWEP.ScopeScale 							= 0.7

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 58
SWEP.Primary.DamageHeadshot 				= 2
SWEP.Primary.Spread							= .02
SWEP.Primary.IronAccuracy 					= .01

SWEP.IronSightsPos 							= Vector(-8.24, -4.222, 2.24)
SWEP.IronSightsAng 							= Vector(-0.201, -3.401, -8.443)
SWEP.SightsPos 								= Vector(-8.24, -4.222, 2.24)
SWEP.SightsAng 								= Vector(-0.201, -3.401, -8.443)
SWEP.ScopeOverlayThreshold 					= 0.85
SWEP.RunSightsPos 							= Vector(9.369, -10.908, -3.689)
SWEP.RunSightsAng 							= Vector(6.446, 64.627, 0)