SWEP.Gun 									= ("nz_css_mac10")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Ingram MAC-10"
SWEP.NZPaPReplacement						= "nz_css_mac10_pap"
SWEP.Slot									= 2
SWEP.SlotPos								= 70
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "pistol"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel								= "models/weapons/w_smg_mac10.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_MAC10.1")
SWEP.Primary.RPM							= 857
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 30
SWEP.Primary.DefaultClip					= 180
SWEP.Primary.KickUp							= 0.3
SWEP.Primary.KickDown						= 0.3
SWEP.Primary.KickHorizontal					= 0.3
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "smg1"
SWEP.Primary.MaxAmmo 						= 180

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
SWEP.Primary.Damage							= 53
SWEP.Primary.DamageHeadshot 				= 2
SWEP.Primary.Spread							= .027
SWEP.Primary.IronAccuracy 					= .017

SWEP.IronSightsPos 							= Vector(-9.837, 0, 2.759)
SWEP.IronSightsAng 							= Vector(1.036, -5.292, -8.233)
SWEP.SightsPos 								= Vector(-9.837, 0, 2.759)
SWEP.SightsAng 								= Vector(1.036, -5.292, -8.233)
SWEP.RunSightsPos 							= Vector(0, 0, 0)
SWEP.RunSightsAng 							= Vector(-9.469, -1.701, 0)


 

