SWEP.Gun 									= ("nz_css_awp")					
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1" 	
SWEP.ShellEjectAttachment					= "2" 	
SWEP.PrintName								= "Magnum Sniper Rifle"		
SWEP.NZPaPReplacement						= "nz_css_awp_pap"
SWEP.Slot									= 3				
SWEP.SlotPos								= 52			
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
SWEP.ViewModel								= "models/weapons/cstrike/c_snip_awp.mdl"	
SWEP.WorldModel								= "models/weapons/w_snip_awp.mdl"	
SWEP.Base 									= "tfa_scoped_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_AWP.1")		
SWEP.Primary.RPM							= 41		
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 10		
SWEP.Primary.DefaultClip					= 60	
SWEP.Primary.KickUp							= 1				
SWEP.Primary.KickDown						= 1			
SWEP.Primary.KickHorizontal					= 1		
SWEP.Primary.Automatic						= false		
SWEP.Primary.Ammo							= "SniperPenetratedRound"
SWEP.Primary.MaxAmmo 						= 60

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom					= 9	
SWEP.Secondary.UseParabolic					= false	
SWEP.Secondary.UseACOG						= false
SWEP.Secondary.UseMilDot					= true		
SWEP.Secondary.UseSVD						= false	
SWEP.Secondary.UseElcan						= false
SWEP.Secondary.UseGreenDuplex				= false	

SWEP.data 									= {}				
SWEP.data.ironsights						= 1
SWEP.ScopeScale 							= 0.7

SWEP.Primary.NumShots						= 1		
SWEP.Primary.Damage							= 150	
SWEP.Primary.DamageHeadshot 				= 5
SWEP.Primary.Spread							= .01	
SWEP.Primary.IronAccuracy 					= .0001 
SWEP.BoltAction								= true

SWEP.IronSightsPos 							= Vector(-7.722, 0.827, 2.079)
SWEP.IronSightsAng 							= Vector(0.892, -0.81, -2.309)
SWEP.SightsPos 								= Vector(-7.722, 0.827, 2.079)
SWEP.SightsAng 								= Vector(0.892, -0.81, -2.309)
SWEP.RunSightsPos 							= Vector(13.868, -12.744, -2.05)
SWEP.RunSightsAng 							= Vector(-4.435, 62.558, 0)