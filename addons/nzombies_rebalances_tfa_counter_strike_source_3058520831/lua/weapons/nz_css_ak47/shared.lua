SWEP.Gun 								= ("nz_css_ak47")
SWEP.Category							= "[TFA] [NZ] CS:S"
SWEP.Author								= ""
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""
SWEP.MuzzleAttachment					= "1" 	
SWEP.ShellEjectAttachment				= "2" 	
SWEP.PrintName							= "CV-47"
SWEP.NZPaPReplacement					= "nz_css_ak47_pap"
SWEP.Slot								= 2		
SWEP.SlotPos							= 58	
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
SWEP.ViewModel							= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel							= "models/weapons/w_rif_ak47.mdl"	
SWEP.Base								= "tfa_gun_base"
SWEP.Spawnable							= false
SWEP.UseHands 							= true
SWEP.AdminSpawnable						= true
SWEP.FiresUnderwater 					= false

SWEP.Primary.Sound						= Sound("Weapon_AK47.1")
SWEP.Primary.RPM						= 600		
SWEP.Primary.Knockback          		= 0
SWEP.Primary.ClipSize					= 30		
SWEP.Primary.DefaultClip				= 210		
SWEP.Primary.KickUp						= 0.3		
SWEP.Primary.KickDown					= 0.3		
SWEP.Primary.KickHorizontal				= 0.3		
SWEP.Primary.Automatic					= true		
SWEP.Primary.Ammo						= "ar2"
SWEP.Primary.MaxAmmo 					= 210

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
SWEP.Primary.Damage						= 65
SWEP.Primary.DamageHeadshot 			= 2.6
SWEP.Primary.Spread						= .02
SWEP.Primary.IronAccuracy 				= .01

SWEP.SelectiveFire						= false

SWEP.IronSightsPos 						= Vector(-6.605, -9.414, 2.565)
SWEP.IronSightsAng 						= Vector(2.388, 0.052, 0)
SWEP.SightsPos 							= Vector(-6.605, -9.414, 2.565)
SWEP.SightsAng 							= Vector(2.388, 0.052, 0)
SWEP.RunSightsPos 						= Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng 						= Vector(6.446, 62.852, 0)

	
