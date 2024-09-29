SWEP.Gun 									= ("nz_css_p90")
SWEP.Category								= "[TFA] [NZ] CS:S"
SWEP.Author									= ""
SWEP.Contact								= ""
SWEP.Purpose								= ""
SWEP.Instructions							= ""
SWEP.MuzzleAttachment						= "1"
SWEP.ShellEjectAttachment					= "2"
SWEP.PrintName								= "ES C90"
SWEP.NZPaPReplacement						= "nz_css_p90_pap"
SWEP.Slot									= 2
SWEP.SlotPos								= 74
SWEP.DrawAmmo								= true
SWEP.DisableChambering 						= true
SWEP.DrawWeaponInfoBox						= false
SWEP.BounceWeaponIcon   					= false
SWEP.DrawCrosshair							= true
SWEP.Weight									= 50
SWEP.AutoSwitchTo							= true
SWEP.AutoSwitchFrom							= true
SWEP.HoldType 								= "rpg"

SWEP.ViewModelFOV							= 55
SWEP.ViewModelFlip							= false
SWEP.ViewModel								= "models/weapons/cstrike/c_smg_p90.mdl"
SWEP.WorldModel								= "models/weapons/w_smg_p90.mdl"
SWEP.Base 									= "tfa_scoped_base"
SWEP.Spawnable								= false
SWEP.UseHands 								= true
SWEP.AdminSpawnable							= true

SWEP.Primary.Sound							= Sound("Weapon_P90.1")
SWEP.Primary.RPM							= 857
SWEP.Primary.Knockback          			= 0
SWEP.Primary.ClipSize						= 50
SWEP.Primary.DefaultClip					= 250
SWEP.Primary.KickUp							= .3
SWEP.Primary.KickDown						= .2
SWEP.Primary.KickHorizontal					= .3
SWEP.Primary.Automatic						= true
SWEP.Primary.Ammo							= "smg1"
SWEP.Primary.MaxAmmo 						= 250

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.SelectiveFire							= false

SWEP.Secondary.ScopeZoom					= 3	
SWEP.Secondary.UseACOG						= false
SWEP.Secondary.UseMilDot					= false		
SWEP.Secondary.UseSVD						= false	
SWEP.Secondary.UseParabolic					= false	
SWEP.Secondary.UseElcan						= false
SWEP.Secondary.UseGreenDuplex				= false
SWEP.Secondary.UseAimpoint					= true	

SWEP.data 									= {}
SWEP.data.ironsights						= 1
SWEP.ScopeScale 							= 0.5

SWEP.Primary.NumShots						= 1
SWEP.Primary.Damage							= 49
SWEP.Primary.DamageHeadshot 				= 2
SWEP.Primary.Spread							= .025
SWEP.Primary.IronAccuracy 					= .01

SWEP.IronSightsPos 							= Vector(-5.696, -17.286, 2.18)
SWEP.IronSightsAng 							= Vector(0, -1.25, 0)
SWEP.SightsPos 								= Vector(-5.696, -17.286, 2.18)
SWEP.SightsAng 								= Vector(0, -1.25, 0)
SWEP.RunSightsPos 							= Vector(5.75, -6.941, 0)
SWEP.RunSightsAng 							= Vector(-6.974, 49.881, -5.237)




