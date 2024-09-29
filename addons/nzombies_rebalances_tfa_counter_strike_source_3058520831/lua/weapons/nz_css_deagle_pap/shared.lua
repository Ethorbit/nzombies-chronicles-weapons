SWEP.Gun 								= ("nz_css_deagle")
SWEP.Category							= "[TFA] [NZ PAP] CS:S"
SWEP.Author								= ""
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""
SWEP.MuzzleAttachment					= "1"
SWEP.MuzzleFlashEffect 					= "pap_muzzleflash"
SWEP.ShellEjectAttachment				= "2"
SWEP.PrintName							= "Global Nightblitz"
SWEP.NZPaPName							= "Global Nightblitz"
SWEP.Slot								= 1	
SWEP.SlotPos							= 35
SWEP.DrawAmmo							= true
SWEP.DisableChambering 					= true
SWEP.DrawWeaponInfoBox					= false
SWEP.BounceWeaponIcon   				= false	
SWEP.DrawCrosshair						= true
SWEP.Weight								= 30
SWEP.AutoSwitchTo						= true
SWEP.AutoSwitchFrom						= true
SWEP.HoldType 							= "pistol"

SWEP.ViewModelFOV						= 55
SWEP.ViewModelFlip						= false
SWEP.ViewModel							= "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel							= "models/weapons/w_pist_deagle.mdl"
SWEP.Base								= "tfa_gun_base"
SWEP.Spawnable							= false
SWEP.UseHands 							= true
SWEP.AdminSpawnable						= true
SWEP.FiresUnderwater 					= false

SWEP.Primary.Sound						= Sound("Weapon_DEagle.1")	
SWEP.Primary.RPM						= 684
SWEP.Primary.Knockback          		= 0
SWEP.Primary.ClipSize					= 13
SWEP.Primary.DefaultClip				= 117	
SWEP.Primary.KickUp						= 1		
SWEP.Primary.KickDown					= 0.2		
SWEP.Primary.KickHorizontal				= 0.5		
SWEP.Primary.Automatic					= false	
SWEP.Primary.Ammo						= "357"
SWEP.Primary.MaxAmmo 					= 117

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV					= 65	

SWEP.data 								= {}
SWEP.data.ironsights					= 1

SWEP.Primary.NumShots					= 1	
SWEP.Primary.Damage						= 234
SWEP.Primary.DamageHeadshot 			= 5
SWEP.Primary.Spread						= .01
SWEP.Primary.IronAccuracy 				= .008

SWEP.IronSightsPos 						= Vector(-6.361, -5.579, 1.919)
SWEP.IronSightsAng 						= Vector(0.718, 0, 0)
SWEP.SightsPos 							= Vector(-6.361, -5.579, 1.919)
SWEP.SightsAng 							= Vector(0.718, 0, 0)
SWEP.RunSightsPos 						= Vector(2.405, -17.334, -15.011)
SWEP.RunSightsAng 						= Vector(70, 0, 0)
	
SWEP.BlowbackEnabled 					= true
SWEP.Blowback_Only_Iron 				= true
SWEP.BlowbackVector 					= Vector(0,-6,1)

SWEP.BlowbackBoneMods 					= {
	["v_weapon.Deagle_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.75), angle = Angle(0, 0, 0) }
}

SWEP.BlowbackVector 					= Vector(0,-2,0)
SWEP.Blowback_PistolMode 				= true

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
