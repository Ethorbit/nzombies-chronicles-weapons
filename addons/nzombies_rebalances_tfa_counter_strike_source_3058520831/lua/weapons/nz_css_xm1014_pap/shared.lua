SWEP.Gun 									= ("nz_css_xm1014_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "YG1265 Spreadsheet"
SWEP.NZPaPName								= "YG1265 Spreadsheet"
SWEP.Slot									= 2
SWEP.SlotPos								= 74
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "shotgun"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel								= "models/weapons/w_shot_xm1014.mdl"
SWEP.Base 									= "tfa_shotty_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_XM1014.1")
SWEP.Primary.RPM							= 342
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 12
SWEP.Primary.DefaultClip					= 120
SWEP.Primary.KickUp							= 0.8
SWEP.Primary.KickDown						= 0.4
SWEP.Primary.KickHorizontal					= 0.2
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "buckshot"
SWEP.Primary.MaxAmmo 						= 120

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV						= 60

SWEP.ShellTime								= .28

SWEP.Primary.NumShots						= 13
SWEP.Primary.Damage							= 114
SWEP.Primary.DamageHeadshot 				= 4
SWEP.Primary.Spread							= .02
SWEP.Primary.IronAccuracy 					= .02

SWEP.IronSightsPos 							= Vector(-6.96, -4.16, 2.707)
SWEP.IronSightsAng 							= Vector(-0.139, -0.803, 0)
SWEP.SightsPos 								= Vector(-6.96, -4.16, 2.707)
SWEP.SightsAng 								= Vector(-0.139, -0.803, 0)
SWEP.RunSightsPos 							= Vector(5.748, -13.78, 4.015)
SWEP.RunSightsAng 							= Vector(-20.67, 46.023, 0)

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


