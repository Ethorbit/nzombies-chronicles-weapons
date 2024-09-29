SWEP.Gun						= ("nz_css_dualelites")
SWEP.Category					= "[TFA] [NZ] CS:S"
SWEP.Author						= ""
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	
SWEP.ShellEjectAttachment		= "3" 	
SWEP.PrintName					= ".40 Dual Elites"			
SWEP.NZPaPReplacement			= "nz_css_dualelites_pap"
SWEP.Slot						= 1				
SWEP.SlotPos					= 37			
SWEP.DrawAmmo					= true		
SWEP.DisableChambering 			= true
SWEP.DrawWeaponInfoBox			= false		
SWEP.BounceWeaponIcon   		= false	
SWEP.DrawCrosshair				= true		
SWEP.Weight						= 30			
SWEP.AutoSwitchTo				= true		
SWEP.AutoSwitchFrom				= true		
SWEP.HoldType 					= "duel"		

SWEP.ViewModelFOV				= 55
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/cstrike/c_pist_elite.mdl"	
SWEP.WorldModel					= "models/weapons/w_pist_elite.mdl"	
SWEP.Base						= "tfa_gun_base"
SWEP.Spawnable					= false
SWEP.UseHands 					= true
SWEP.AdminSpawnable				= true
SWEP.FiresUnderwater 			= false

SWEP.Primary.Sound				= Sound("Weapon_ELITE.1")		
SWEP.Primary.RPM				= 750 			
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 30		
SWEP.Primary.DefaultClip		= 150		
SWEP.Primary.KickUp				= 0.3		
SWEP.Primary.KickDown			= 0.3		
SWEP.Primary.KickHorizontal		= 0.3		
SWEP.Primary.Automatic			= false		
SWEP.Primary.Ammo				= "pistol"
SWEP.Primary.MaxAmmo 			= 150

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 0		

SWEP.data 						= {}				
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		
SWEP.Primary.Damage				= 43	
SWEP.Primary.DamageHeadshot		= 2
SWEP.Primary.Spread				= .025	
SWEP.Primary.IronAccuracy 		= .025 

SWEP.IronSightsPos 				= Vector(0, 0, 0)
SWEP.IronSightsAng 				= Vector(0, 0, 0)
SWEP.SightsPos 					= Vector(0, 0, 0)
SWEP.SightsAng 					= Vector(0, 0, 0)
SWEP.RunSightsPos 				= Vector(0, 0, 2.131)
SWEP.RunSightsAng 				= Vector(-13.771, 0, 0)

SWEP.Akimbo 					= true

