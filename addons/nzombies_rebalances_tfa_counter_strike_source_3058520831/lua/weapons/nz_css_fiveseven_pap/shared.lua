SWEP.Gun 						= ("nz_css_fiveseven_pap")
SWEP.Category					= "[TFA] [NZ PAP] CS:S"
SWEP.Author						= ""
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1"
SWEP.MuzzleFlashEffect 			= "pap_muzzleflash"
SWEP.ShellEjectAttachment		= "2" 
SWEP.PrintName					= "USG-Rebel"	
SWEP.NZPaPName					= "USG-Rebel"
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
SWEP.Primary.RPM				= 750		
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 30		
SWEP.Primary.DefaultClip		= 210		
SWEP.Primary.KickUp				= 0.15		
SWEP.Primary.KickDown			= 0.15		
SWEP.Primary.KickHorizontal		= 0.15		
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
SWEP.Primary.Damage				= 99	
SWEP.Primary.DamageHeadshot		= 6
SWEP.Primary.Spread				= .020	
SWEP.Primary.IronAccuracy 		= .010 

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