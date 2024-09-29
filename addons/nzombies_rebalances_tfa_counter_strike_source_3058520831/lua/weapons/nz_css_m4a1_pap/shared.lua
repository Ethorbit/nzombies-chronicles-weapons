SWEP.Gun 									= ("nz_css_m4a1_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Truthful Maverick"
SWEP.NZPaPName								= "Truthful Maverick"
SWEP.Slot									= 2
SWEP.SlotPos								= 66
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
SWEP.ViewModel								= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel								= "models/weapons/w_rif_m4a1.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_M4A1.1")
SWEP.Primary.SilencedSound 					= Sound("Weapon_M4A1.2")
SWEP.Primary.RPM							= 890
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 45
SWEP.Primary.DefaultClip					= 450
SWEP.Primary.KickUp							= 0.095
SWEP.Primary.KickDown						= 0.095
SWEP.Primary.KickHorizontal					= 0.095
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
SWEP.Primary.Damage							= 128
SWEP.Primary.DamageHeadshot 				= 4.25
SWEP.Primary.Spread							= .009
SWEP.Primary.IronAccuracy 					= .0065

SWEP.CanBeSilenced							= true
SWEP.SelectiveFire							= false

SWEP.IronSightsPos 							= Vector(-7.875, -1.772, 0.159)
SWEP.IronSightsAng 							= Vector(3.144, -1.412, -3.07)
SWEP.SightsPos 								= Vector(-7.875, -1.772, 0.159)
SWEP.SightsAng 								= Vector(3.144, -1.412, -3.07)
SWEP.RunSightsPos 							= Vector(8.145, -8.968, -1.969)
SWEP.RunSightsAng 							= Vector(-1.667, 66.777, 0)

SWEP.Ispackapunched 						= true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, self.nzPaPCamo)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end	


