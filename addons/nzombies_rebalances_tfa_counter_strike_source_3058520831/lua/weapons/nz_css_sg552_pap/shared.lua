SWEP.Gun 									= ("nz_css_sg552_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2" 	
SWEP.PrintName								= "Krieg Offense"	
SWEP.NZPaPName								= "Krieg Offense"
SWEP.Slot									= 2
SWEP.SlotPos								= 58
SWEP.DrawAmmo								= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 50
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.XHair									= true
SWEP.HoldType 								= "rpg"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel								= "models/weapons/w_rif_sg552.mdl"
SWEP.Base 									= "tfa_scoped_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_SG552.1")
SWEP.Primary.RPM							= 700
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 35
SWEP.Primary.DefaultClip					= 350	
SWEP.Primary.KickUp							= .25
SWEP.Primary.KickDown						= .25
SWEP.Primary.KickHorizontal					= .075
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "ar2"
SWEP.Primary.MaxAmmo 						= 350

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.SelectiveFire							= false

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
SWEP.ReticleScale 							= 0.6

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 115
SWEP.Primary.DamageHeadshot 				= 5
SWEP.Primary.Spread							= .016
SWEP.Primary.IronAccuracy 					= .0062 


SWEP.IronSightsPos 							= Vector(-7.921, -5.974, 2.559)
SWEP.IronSightsAng 							= Vector(0, 0, 0)
SWEP.SightsPos 								= Vector(-7.921, -5.974, 2.559)
SWEP.SightsAng 								= Vector(0, 0, 0)
SWEP.RunSightsPos 							= Vector(10.786, -20, 0)
SWEP.RunSightsAng 							= Vector(-4.39, 70, 0)

SWEP.Ispackapunched 					= true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, self.nzPaPCamo)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end	


