SWEP.Gun 								= ("nz_css_tmp")
SWEP.Category							= "[TFA] [NZ] CS:S"
SWEP.Author								= ""
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""
SWEP.MuzzleAttachment					= "1" 	
SWEP.ShellEjectAttachment				= "2" 	
SWEP.PrintName							= "Schmidt Machine Pistol"		
SWEP.NZPaPReplacement					= "nz_css_tmp_pap"
SWEP.Slot								= 2			
SWEP.SlotPos							= 76		
SWEP.DrawAmmo							= true		
SWEP.DisableChambering 					= true
SWEP.DrawWeaponInfoBox					= false		
SWEP.BounceWeaponIcon   				= false	
SWEP.DrawCrosshair						= true		
SWEP.Weight								= 30		
SWEP.AutoSwitchTo						= true		
SWEP.AutoSwitchFrom						= true		
SWEP.HoldType 							= "ar2"		

SWEP.ViewModelFOV						= 55
SWEP.ViewModelFlip						= false
SWEP.ViewModel							= "models/weapons/cstrike/c_smg_tmp.mdl"	
SWEP.WorldModel							= "models/weapons/w_smg_tmp.mdl"	
SWEP.Base								= "tfa_gun_base"
SWEP.Spawnable							= false
SWEP.UseHands 							= true
SWEP.AdminSpawnable						= true
SWEP.FiresUnderwater 					= false

SWEP.Primary.Sound						= Sound("Weapon_TMP.1")		
SWEP.Primary.RPM						= 857			
SWEP.Primary.Knockback          		= 0	
SWEP.Primary.ClipSize					= 30		
SWEP.Primary.DefaultClip				= 180		
SWEP.Primary.KickUp						= 0.3		
SWEP.Primary.KickDown					= 0.3		
SWEP.Primary.KickHorizontal				= 0.3		
SWEP.Primary.Automatic					= true		
SWEP.Primary.Ammo						= "smg1"
SWEP.Primary.MaxAmmo 					= 180

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.SelectiveFire						= false

SWEP.Secondary.IronFOV					= 55		 	

SWEP.data 								= {}				
SWEP.data.ironsights					= 1

SWEP.Primary.NumShots					= 1		
SWEP.Primary.Damage						= 40	
SWEP.Primary.DamageHeadshot 			= 2.55
SWEP.Primary.Spread						= .022	
SWEP.Primary.IronAccuracy 				= .012 

SWEP.IronSightsPos 						= Vector(-6.841, 0, 2.24)
SWEP.IronSightsAng 						= Vector(1.23, 0, 0)
SWEP.SightsPos 							= Vector(-6.841, 0, 2.24)
SWEP.SightsAng 							= Vector(1.23, 0, 0)
SWEP.RunSightsPos 						= Vector(9.135, -4.999, 0)
SWEP.RunSightsAng 						= Vector(-9.282, 21.198, 0)

SWEP.DisableIdleAnimations 				= false





