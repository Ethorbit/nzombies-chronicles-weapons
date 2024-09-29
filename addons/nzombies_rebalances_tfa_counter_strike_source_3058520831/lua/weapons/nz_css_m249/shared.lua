SWEP.Gun 									= ("nz_css_m249")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "ES M249 Para"
SWEP.NZPaPReplacement						= "nz_css_m249_pap"
SWEP.Slot									= 3
SWEP.SlotPos								= 64
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "ar2"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel								= "models/weapons/w_mach_m249para.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_M249.1")
SWEP.Primary.RPM							= 600
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 150
SWEP.Primary.DefaultClip					= 450
SWEP.Primary.KickUp							= 0.3
SWEP.Primary.KickDown						= 0.3
SWEP.Primary.KickHorizontal					= 0.3
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "ar2"
SWEP.Primary.MaxAmmo 						= 450

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV						= 55

SWEP.data 									= {}
SWEP.data.ironsights						= 1

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 61
SWEP.Primary.DamageHeadshot 				= 3
SWEP.Primary.Spread							= .03
SWEP.Primary.IronAccuracy 					= .02

SWEP.IronSightsPos 							= Vector(-5.933, -1.727, 2.279)
SWEP.IronSightsAng 							= Vector(0.209, 0.057, 0)
SWEP.SightsPos 								= Vector(-5.933, -1.727, 2.279)
SWEP.SightsAng 								= Vector(0.209, 0.057, 0)
SWEP.RunSightsPos 							= Vector(13.307, -15.827, 0)
SWEP.RunSightsAng 							= Vector(-10.749, 70, -3.583)