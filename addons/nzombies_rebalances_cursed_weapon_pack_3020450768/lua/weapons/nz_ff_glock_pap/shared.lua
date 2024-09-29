SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "[TFA] [NZ PAP] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.MuzzleFlashEffect = "pap_muzzleflash"
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Chastity Polymer"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Chastity Polymer"
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 41			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
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
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_glock18.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/glock/glock18-1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 400			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Burst				= 1400
SWEP.Primary.ClipSize			= 36		-- Size of a clip
SWEP.Primary.DefaultClip		= 288		-- Bullets you start with
SWEP.Primary.KickUp				= 0.055		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.055		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.055		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.MaxAmmo 			= 288

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.FireModes = {"3Burst"}
SWEP.DefaultFireMode     = "3Burst"
SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 88	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2.5
SWEP.Primary.Spread		= .0075	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0055 -- Ironsight accuracy, should be the same for shotguns
SWEP.SelectiveFire		= true
SWEP.OnlyBurstFire = true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.781, -3.082, 2.68)
SWEP.IronSightsAng = Vector(0.824, 0, 0)
SWEP.SightsPos = Vector(-5.781, -3.082, 2.68)
SWEP.SightsAng = Vector(0.824, 0, 0)
SWEP.RunSightsPos = Vector(6.736, -2.495, 0)
SWEP.RunSightsAng = Vector(-9.343, 12.324, 0)

SWEP.VElements = {
	["locked"] = { type = "Model", model = "models/props_wasteland/prison_padlock001a.mdl", bone = "v_weapon.Glock_Parent", rel = "", pos = Vector(-3.382, -2.804, 0.469), angle = Angle(-5.606, -15.896, -78.519), size = Vector(0.395, 0.395, 0.395), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "v_weapon.Glock_Parent", rel = "", pos = Vector(-2.912, -4.074, 0.637), angle = Angle(178.453, 73.75, -92.459), size = Vector(0.293, 0.293, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false