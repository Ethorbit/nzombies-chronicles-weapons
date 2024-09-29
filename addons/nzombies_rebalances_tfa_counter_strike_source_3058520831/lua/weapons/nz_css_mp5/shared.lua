SWEP.Gun 									= ("nz_css_mp5")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "K&M Sub-Machine Gun"
SWEP.NZPaPReplacement						= "nz_css_mp5_pap"
SWEP.Slot									= 2
SWEP.SlotPos								= 72
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "smg"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel								= "models/weapons/w_smg_mp5.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_MP5Navy.1")
SWEP.Primary.RPM							= 750
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 30
SWEP.Primary.DefaultClip					= 180
SWEP.Primary.KickUp							= 0.3
SWEP.Primary.KickDown						= 0.3
SWEP.Primary.KickHorizontal					= 0.3
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "smg1"
SWEP.Primary.MaxAmmo 						= 180

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
SWEP.Primary.Damage							= 51
SWEP.Primary.DamageHeadshot 				= 2
SWEP.Primary.Spread							= .025
SWEP.Primary.IronAccuracy 					= .015

SWEP.SelectiveFire							= false

SWEP.IronSightsPos 							= Vector(-5.321, 0, 1.84)
SWEP.IronSightsAng 							= Vector(1.149, 0.023, 0)
SWEP.SightsPos	 							= Vector(-5.321, 0, 1.84)
SWEP.SightsAng 								= Vector(1.149, 0.023, 0)
SWEP.RunSightsPos 							= Vector(5.748, -9.686, 0)
SWEP.RunSightsAng 							= Vector(-6.974, 49.881, -5.237)




