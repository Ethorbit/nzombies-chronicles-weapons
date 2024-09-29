SWEP.Gun						= ("nz_css_dualelites_pap")
SWEP.Category					= "[TFA] [NZ PAP] CS:S"
SWEP.Author						= ""
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	
SWEP.MuzzleFlashEffect 			= "pap_muzzleflash"
SWEP.ShellEjectAttachment		= "3" 	
SWEP.PrintName					= "92-Flora & Soi"			
SWEP.NZPaPName					= "92-Flora & Soi"
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
SWEP.Primary.RPM				= 900			
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 42		
SWEP.Primary.DefaultClip		= 378		
SWEP.Primary.KickUp				= 0.26		
SWEP.Primary.KickDown			= 0.26		
SWEP.Primary.KickHorizontal		= 0.26		
SWEP.Primary.Automatic			= true		
SWEP.Primary.Ammo				= "pistol"
SWEP.Primary.MaxAmmo 			= 378

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
SWEP.Primary.Damage				= 100	
SWEP.Primary.DamageHeadshot		= 2.45
SWEP.Primary.Spread				= .027	
SWEP.Primary.IronAccuracy 		= .027 

SWEP.IronSightsPos 				= Vector(0, 0, 0)
SWEP.IronSightsAng 				= Vector(0, 0, 0)
SWEP.SightsPos 					= Vector(0, 0, 0)
SWEP.SightsAng 					= Vector(0, 0, 0)
SWEP.RunSightsPos 				= Vector(0, 0, 2.131)
SWEP.RunSightsAng 				= Vector(-13.771, 0, 0)

SWEP.Akimbo 					= true

SWEP.Ispackapunched 			= true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, self.nzPaPCamo)
            vm:SetSubMaterial(1, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end