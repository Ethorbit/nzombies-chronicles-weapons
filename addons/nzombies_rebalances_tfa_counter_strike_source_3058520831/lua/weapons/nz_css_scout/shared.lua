SWEP.Gun 						= ("nz_css_scout")					
SWEP.Category					= "[TFA] [NZ] CS:S"
SWEP.Author						= ""
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	
SWEP.ShellEjectAttachment		= "2" 	
SWEP.PrintName					= "Schmidt Scout"			
SWEP.NZPaPReplacement			= "nz_css_scout_pap"
SWEP.Slot						= 3				
SWEP.SlotPos					= 56			
SWEP.DrawAmmo					= true		
SWEP.DisableChambering 			= true
SWEP.DrawWeaponInfoBox			= false		
SWEP.BounceWeaponIcon   		= false	
SWEP.DrawCrosshair				= false		
SWEP.Weight						= 50			
SWEP.AutoSwitchTo				= true		
SWEP.AutoSwitchFrom				= true		
SWEP.XHair						= false		
SWEP.HoldType 					= "rpg"

SWEP.ViewModelFOV				= 55
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/cstrike/c_snip_scout.mdl"	
SWEP.WorldModel					= "models/weapons/w_snip_scout.mdl"	
SWEP.Base 						= "tfa_scoped_base"
SWEP.Spawnable					= false
SWEP.UseHands 					= true
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= Sound("Weapon_Scout.1")		
SWEP.Primary.RPM				= 48		
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 10		
SWEP.Primary.DefaultClip		= 60	
SWEP.Primary.KickUp				= 1				
SWEP.Primary.KickDown			= 1			
SWEP.Primary.KickHorizontal		= 1		
SWEP.Primary.Automatic			= false		
SWEP.Primary.Ammo				= "SniperPenetratedRound"
SWEP.Primary.MaxAmmo 			= 60

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom		= 8	
SWEP.Secondary.UseACOG			= false 
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 						= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 				= 0.7

SWEP.Primary.NumShots			= 1		
SWEP.Primary.Damage				= 120
SWEP.Primary.DamageHeadshot 	= 4	
SWEP.Primary.Spread				= .01	
SWEP.Primary.IronAccuracy 		= .0001 
SWEP.BoltAction	=	true

SWEP.IronSightsPos 				= Vector(-6.72, -3.826, 3)
SWEP.IronSightsAng 				= Vector(0.809, -0.25, -1.542)
SWEP.SightsPos 					= Vector(-6.72, -3.826, 3)
SWEP.SightsAng 					= Vector(0.809, -0.25, -1.542)
SWEP.RunSightsPos 				= Vector(9.027, -15.131, 0)
SWEP.RunSightsAng 				= Vector(-2.777, 70, 0)


