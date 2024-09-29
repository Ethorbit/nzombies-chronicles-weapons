SWEP.Gun 									= ("nz_css_glock_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Kobra-Zero"
SWEP.NZPaPName								= "Kobra-Zero"
SWEP.Slot									= 1
SWEP.SlotPos								= 41
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
SWEP.ViewModel								= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel								= "models/weapons/w_pist_glock18.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_Glock.1")
SWEP.Primary.RPM							= 1200
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 19
SWEP.Primary.DefaultClip					= 171
SWEP.Primary.KickUp							= 0.075
SWEP.Primary.KickDown						= 0.075
SWEP.Primary.KickHorizontal					= 0.075
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "pistol"
SWEP.Primary.MaxAmmo 						= 171

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
SWEP.Primary.Damage							= 119
SWEP.Primary.DamageHeadshot 				= 3
SWEP.Primary.Spread							= .009
SWEP.Primary.IronAccuracy 					= .00765
SWEP.SelectiveFire							= false

SWEP.IronSightsPos 							= Vector(-5.781, -3.082, 2.68)
SWEP.IronSightsAng 							= Vector(0.824, 0, 0)
SWEP.SightsPos 								= Vector(-5.781, -3.082, 2.68)
SWEP.SightsAng 								= Vector(0.824, 0, 0)
SWEP.RunSightsPos 							= Vector(6.736, -2.495, 0)
SWEP.RunSightsAng 							= Vector(-9.343, 12.324, 0)

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


