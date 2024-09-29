SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "[TFA] [NZ PAP] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= "extended extended extended mag"
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.MuzzleFlashEffect = "pap_muzzleflash"
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Mag Razer"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Mag Razer"
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 74			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "rpg"
SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, self.nzPaPCamo)
            vm:SetSubMaterial(1, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_smg_p90.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg_p90.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/p90/p90-1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 1200		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 125		-- Size of a clip
SWEP.Primary.DefaultClip			= 625	-- Bullets you start with
SWEP.Primary.KickUp			= .075				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .05			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .075		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"
SWEP.Primary.MaxAmmo 			= 625

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.SelectiveFire		= true

SWEP.Secondary.ScopeZoom			= 3	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false
SWEP.Secondary.UseAimpoint		= true	

SWEP.data 				= {}
SWEP.data.ironsights			= 0
SWEP.ScopeScale 			= 0.5

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 110	--base damage per bullet
SWEP.Primary.DamageHeadshot 	= 4.7
SWEP.Primary.Spread		= .0065	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0045 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.696, -17.286, 2.18)
SWEP.IronSightsAng = Vector(0, -1.25, 0)
SWEP.SightsPos = Vector(-5.696, -17.286, 2.18)
SWEP.SightsAng = Vector(0, -1.25, 0)
SWEP.RunSightsPos = Vector(5.75, -6.941, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)

SWEP.SequenceTimeOverride = {
	[ACT_VM_RELOAD] = 90 / 30,
}

SWEP.ViewModelBoneMods = {
	["v_weapon.p90_Clip"] = { scale = Vector(1, 1.912, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false