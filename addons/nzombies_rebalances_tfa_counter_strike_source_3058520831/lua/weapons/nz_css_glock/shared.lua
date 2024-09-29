SWEP.Gun 									= ("nz_css_glock")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "9×19mm Sidearm"
SWEP.NZPaPReplacement						= "nz_css_glock_pap"
SWEP.Slot									= 1
SWEP.SlotPos								= 41
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
SWEP.ViewModel								= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel								= "models/weapons/w_pist_glock18.mdl"
SWEP.Base									= "tfa_gun_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true
SWEP.FiresUnderwater 						= false

SWEP.Primary.Sound							= Sound("Weapon_Glock.1")
SWEP.Primary.RPM							= 400
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 17
SWEP.Primary.DefaultClip					= 102
SWEP.Primary.KickUp							= 0.3
SWEP.Primary.KickDown						= 0.3
SWEP.Primary.KickHorizontal					= 0.3
SWEP.Primary.Automatic						= false
SWEP.Primary.Ammo							= "pistol"
SWEP.Primary.MaxAmmo 						= 102

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
SWEP.Primary.Damage							= 37
SWEP.Primary.DamageHeadshot 				= 3
SWEP.Primary.Spread							= .025
SWEP.Primary.IronAccuracy 					= .019
SWEP.SelectiveFire							= false

SWEP.IronSightsPos 							= Vector(-5.781, -3.082, 2.68)
SWEP.IronSightsAng 							= Vector(0.824, 0, 0)
SWEP.SightsPos 								= Vector(-5.781, -3.082, 2.68)
SWEP.SightsAng 								= Vector(0.824, 0, 0)
SWEP.RunSightsPos 							= Vector(6.736, -2.495, 0)
SWEP.RunSightsAng 							= Vector(-9.343, 12.324, 0)


