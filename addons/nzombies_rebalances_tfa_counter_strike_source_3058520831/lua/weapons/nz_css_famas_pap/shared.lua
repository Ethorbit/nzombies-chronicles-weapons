SWEP.Gun 									= ("nz_css_famas_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Deleted-MAS"
SWEP.NZPaPName								= "Deleted-MAS"
SWEP.Slot									= 2	
SWEP.SlotPos								= 62
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
SWEP.ViewModel								= "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel								= "models/weapons/w_rif_famas.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_FAMAS.1")
SWEP.Primary.RPM							= 828
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 50
SWEP.Primary.DefaultClip					= 450
SWEP.Primary.KickUp							= 0.16
SWEP.Primary.KickDown						= 0.16
SWEP.Primary.KickHorizontal					= 0.16
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
SWEP.Primary.Damage							= 120
SWEP.Primary.DamageHeadshot 				= 3.75
SWEP.Primary.Spread							= .0085
SWEP.Primary.IronAccuracy			 		= .005
SWEP.SelectiveFire							= false

SWEP.IronSightsPos 							= Vector(-6.24, -3.324, 1.138)
SWEP.IronSightsAng 							= Vector(0.187, 0, -0.433)
SWEP.SightsPos 								= Vector(-6.24, -3.324, 1.138)
SWEP.SightsAng 								= Vector(0.187, 0, -0.433)
SWEP.RunSightsPos 							= Vector(8.27, -5.498, 0.243)
SWEP.RunSightsAng 							= Vector(-7.789, 51.139, 0)

SWEP.Ispackapunched 						= true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, self.nzPaPCamo)
            vm:SetSubMaterial(1, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end	


