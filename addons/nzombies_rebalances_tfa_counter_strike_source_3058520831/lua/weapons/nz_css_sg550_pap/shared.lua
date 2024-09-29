SWEP.Gun 									= ("nz_css_sg550_pap")
SWEP.Category								= "[TFA] [NZ PAP] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.MuzzleFlashEffect 						= "pap_muzzleflash"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Counter-Snipe"
SWEP.NZPaPName								= "Counter-Snipe"
SWEP.Slot									= 3
SWEP.SlotPos								= 6
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= false
SWEP.Weight									= 50
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.XHair									= false
SWEP.HoldType 								= "rpg"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_snip_sg550.mdl"
SWEP.WorldModel								= "models/weapons/w_snip_sg550.mdl"
SWEP.Base 									= "tfa_scoped_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_SG550.1")
SWEP.Primary.RPM							= 520
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 24
SWEP.Primary.DefaultClip					= 240
SWEP.Primary.KickUp							= 0.2
SWEP.Primary.KickDown						= 0.2
SWEP.Primary.KickHorizontal					= 0.2
SWEP.OnlyBurstFire							= true
SWEP.BurstFireCount							= 2
SWEP.Primary.BurstDelay						= 0.22
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "ar2"
SWEP.Primary.MaxAmmo 						= 240

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom					= 8	
SWEP.Secondary.UseACOG						= false
SWEP.Secondary.UseMilDot					= true		
SWEP.Secondary.UseSVD						= false	
SWEP.Secondary.UseParabolic					= false	
SWEP.Secondary.UseElcan						= false
SWEP.Secondary.UseGreenDuplex				= false	

SWEP.data 									= {}
SWEP.data.ironsights						= 1
SWEP.ScopeScale 							= 0.7

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 150
SWEP.Primary.DamageHeadshot 				= 4
SWEP.Primary.Spread							= .0025
SWEP.Primary.IronAccuracy 					= .00075

SWEP.IronSightsPos 							= Vector(-7.401, -5.94, 1.279)
SWEP.IronSightsAng 							= Vector(1.18, 0, 0)
SWEP.SightsPos 								= Vector(-7.401, -5.94, 1.279)
SWEP.SightsAng 								= Vector(1.18, 0, 0)
SWEP.RunSightsPos 							= Vector(10.786, -18.347, 0)
SWEP.RunSightsAng 							= Vector(-7.982, 70, 0)
	
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


