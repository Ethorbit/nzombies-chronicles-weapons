SWEP.Gun 								= ("nz_css_ump45_pap")
SWEP.Category							= "[TFA] [NZ PAP] CS:S"
SWEP.Author								= ""
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""
SWEP.MuzzleAttachment					= "1" 
SWEP.MuzzleFlashEffect 					= "pap_muzzleflash"
SWEP.ShellEjectAttachment				= "2" 	
SWEP.PrintName							= "Condition-45"	
SWEP.NZPaPName							= "Condition-45"
SWEP.Slot								= 2				
SWEP.SlotPos							= 78		
SWEP.DrawAmmo							= true	
SWEP.DisableChambering 					= true
SWEP.DrawWeaponInfoBox					= false	
SWEP.BounceWeaponIcon   				= false
SWEP.DrawCrosshair						= true		
SWEP.Weight								= 30			
SWEP.AutoSwitchTo						= true		
SWEP.AutoSwitchFrom						= true		
SWEP.HoldType 							= "smg"		

SWEP.ViewModelFOV						= 55
SWEP.ViewModelFlip						= false
SWEP.ViewModel							= "models/weapons/cstrike/c_smg_ump45.mdl"	
SWEP.WorldModel							= "models/weapons/w_smg_ump45.mdl"	
SWEP.Base								= "tfa_gun_base"
SWEP.Spawnable							= false
SWEP.UseHands 							= true
SWEP.AdminSpawnable						= true
SWEP.FiresUnderwater 					= false

SWEP.Primary.Sound						= Sound("Weapon_UMP45.1")		
SWEP.Primary.RPM						= 666		
SWEP.Primary.Knockback          		= 0	
SWEP.Primary.ClipSize					= 30		
SWEP.Primary.DefaultClip				= 270		
SWEP.Primary.KickUp						= 0.095		
SWEP.Primary.KickDown					= 0.095
SWEP.Primary.KickHorizontal				= 0.095	
SWEP.Primary.Automatic					= true	
SWEP.Primary.Ammo						= "smg1"
SWEP.Primary.MaxAmmo 					= 270

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV					= 55		

SWEP.data 								= {}				
SWEP.data.ironsights					= 1

SWEP.Primary.NumShots					= 1		
SWEP.Primary.Damage						= 106	
SWEP.Primary.DamageHeadshot 			= 4
SWEP.Primary.Spread						= .0085	
SWEP.Primary.IronAccuracy 				= .0065 

SWEP.SelectiveFire						= false

SWEP.IronSightsPos 						= Vector(-8.754, -5.351, 4.219)
SWEP.IronSightsAng						= Vector(-1.331, -0.28, -2.112)
SWEP.SightsPos 							= Vector(-8.754, -5.351, 4.219)
SWEP.SightsAng 							= Vector(-1.331, -0.28, -2.112)
SWEP.RunSightsPos 						= Vector(8.135, -7.776, 0)
SWEP.RunSightsAng 						= Vector(-5.575, 39.759, 0)

SWEP.Ispackapunched 					= true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, self.nzPaPCamo)
            vm:SetSubMaterial(1, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end	

