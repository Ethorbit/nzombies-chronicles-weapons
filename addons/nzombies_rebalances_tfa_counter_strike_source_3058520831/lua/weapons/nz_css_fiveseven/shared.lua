SWEP.Gun 						= ("nz_css_fiveseven")
SWEP.Category					= "[TFA] [NZ] CS:S"
SWEP.Author						= ""
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1"
SWEP.ShellEjectAttachment		= "2" 
SWEP.PrintName					= "ES Five-SeveN"	
SWEP.NZPaPReplacement			= "nz_css_fiveseven_pap"
SWEP.Slot						= 1		
SWEP.SlotPos					= 39
SWEP.DrawAmmo					= true	
SWEP.DisableChambering 			= true
SWEP.DrawWeaponInfoBox			= false	
SWEP.BounceWeaponIcon   		= false	
SWEP.DrawCrosshair				= true
SWEP.Weight						= 30
SWEP.AutoSwitchTo				= true
SWEP.AutoSwitchFrom				= true
SWEP.HoldType 					= "pistol"

SWEP.ViewModelFOV				= 55
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel					= "models/weapons/w_pist_fiveseven.mdl"
SWEP.Base						= "tfa_gun_base"
SWEP.Spawnable					= false		
SWEP.UseHands 					= true		
SWEP.AdminSpawnable				= true		
SWEP.FiresUnderwater 			= false		

SWEP.Primary.Sound				= Sound("Weapon_FiveSeven.1")		
SWEP.Primary.RPM				= 400		
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 20		
SWEP.Primary.DefaultClip		= 120		
SWEP.Primary.KickUp				= 0.3		
SWEP.Primary.KickDown			= 0.3		
SWEP.Primary.KickHorizontal		= 0.3		
SWEP.Primary.Automatic			= false		
SWEP.Primary.Ammo				= "pistol"
SWEP.Primary.MaxAmmo 			= 100

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 55		

SWEP.data 						= {}				
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots			= 1		
SWEP.Primary.Damage				= 24	
SWEP.Primary.DamageHeadshot		= 2
SWEP.Primary.Spread				= .025	
SWEP.Primary.IronAccuracy 		= .015 

SWEP.IronSightsPos 				= Vector(-5.961, -3.412, 3.039)
SWEP.IronSightsAng 				= Vector(-0.353, 0, 0)
SWEP.SightsPos 					= Vector(-5.961, -3.412, 3.039)
SWEP.SightsAng 					= Vector(-0.353, 0, 0)
SWEP.RunSightsPos 				= Vector(0, 0, 0)
SWEP.RunSightsAng 				= Vector(-9.469, -1.701, 0)

	
SWEP.BlowbackEnabled 			= true
SWEP.Blowback_Only_Iron 		= true 
SWEP.BlowbackVector 			= Vector(0,-6,1) 
SWEP.BlowbackBoneMods 			= {
["v_weapon.FIVESEVEN_SLIDE"] 	= { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.875), angle = Angle(0, 0, 0) }
}
SWEP.BlowbackVector				 = Vector(0,-2,0)
SWEP.Blowback_PistolMode		 = true 