SWEP.Gun 									= ("nz_css_p228")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "228 Compact"
SWEP.NZPaPReplacement						= "nz_css_p228_pap"
SWEP.Slot									= 1
SWEP.SlotPos								= 47
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "pistol"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel								= "models/weapons/w_pist_p228.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_P228.1")
SWEP.Primary.RPM							= 400
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 13
SWEP.Primary.DefaultClip					= 104
SWEP.Primary.KickUp							= 0.3
SWEP.Primary.KickDown						= 0.3
SWEP.Primary.KickHorizontal					= 0.3
SWEP.Primary.Automatic						= false
SWEP.Primary.Ammo							= "pistol"
SWEP.Primary.MaxAmmo 						= 104

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV						= 55	

SWEP.data 									= {}
SWEP.data.ironsights						= 1

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 29
SWEP.Primary.DamageHeadshot 				= 5
SWEP.Primary.Spread							= .023
SWEP.Primary.IronAccuracy 					= .01

SWEP.IronSightsPos 							= Vector(-5.973, -4.194, 2.96)
SWEP.IronSightsAng 							= Vector(-0.47, -0.069, -0.144)
SWEP.SightsPos 								= Vector(-5.973, -4.194, 2.96)
SWEP.SightsAng 								= Vector(-0.47, -0.069, -0.144)
SWEP.RunSightsPos 							= Vector(0, 0, 0)
SWEP.RunSightsAng 							= Vector(-9.469, -1.701, 0)
	



