SWEP.Gun 									= ("nz_css_xm1014")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "Leone YG1265 Auto Shotgun"
SWEP.NZPaPReplacement						= "nz_css_xm1014_pap"
SWEP.Slot									= 2
SWEP.SlotPos								= 74
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 30
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "shotgun"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel								= "models/weapons/w_shot_xm1014.mdl"
SWEP.Base 									= "tfa_shotty_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_XM1014.1")
SWEP.Primary.RPM							= 240
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 7
SWEP.Primary.DefaultClip					= 49
SWEP.Primary.KickUp							= 1
SWEP.Primary.KickDown						= 0.8
SWEP.Primary.KickHorizontal					= 0.6
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "buckshot"
SWEP.Primary.MaxAmmo 						= 49

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV						= 60

SWEP.ShellTime								= .34

SWEP.Primary.NumShots						= 6
SWEP.Primary.Damage							= 57
SWEP.Primary.DamageHeadshot 				= 2
SWEP.Primary.Spread							= .035
SWEP.Primary.IronAccuracy 					= .035

SWEP.IronSightsPos 							= Vector(-6.96, -4.16, 2.707)
SWEP.IronSightsAng 							= Vector(-0.139, -0.803, 0)
SWEP.SightsPos 								= Vector(-6.96, -4.16, 2.707)
SWEP.SightsAng 								= Vector(-0.139, -0.803, 0)
SWEP.RunSightsPos 							= Vector(5.748, -13.78, 4.015)
SWEP.RunSightsAng 							= Vector(-20.67, 46.023, 0)




