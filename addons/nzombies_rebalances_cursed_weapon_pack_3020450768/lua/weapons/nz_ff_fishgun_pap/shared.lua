SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "[TFA] [NZ PAP] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= "Women fear me. Fish fear me. Men turn their eyes away from me as I walk. No beasts dare make a sound in my presence. I am alone on this barren earth."
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.MuzzleFlashEffect = "pap_muzzleflash"
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Bass Pro Gaming"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Bass Pro Gaming"
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 64			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
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
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_galil.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_galil.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/fishgun-1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 1000		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 88		-- Size of a clip
SWEP.Primary.DefaultClip		= 704		-- Bullets you start with
SWEP.Primary.KickUp				= 0.15		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.15		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.15		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.MaxAmmo 			= 704

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 125	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 4
SWEP.Primary.Spread		= .018	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0085 -- Ironsight accuracy, should be the same for shotguns
SWEP.FireModes = {"Auto","Semi"}
SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.362, -3.52, 2.64)
SWEP.IronSightsAng = Vector(-0.159, 0, 0)
SWEP.SightsPos = Vector(-6.362, -3.52, 2.64)
SWEP.SightsAng = Vector(-0.159, 0, 0)
SWEP.RunSightsPos = Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng = Vector(6.446, 62.852, 0)

SWEP.VElements = {
	["fish"] = { type = "Model", model = "models/props/de_inferno/goldfish.mdl", bone = "v_weapon.galil", rel = "", pos = Vector(0, 0.134, 19.596), angle = Angle(90, -90, 0), size = Vector(3.25, 1.453, 1.414), color = Color(100, 65, 52, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "v_weapon.galil", rel = "", pos = Vector(0.119, 4.991, -2.181), angle = Angle(74.164, -90, -0.116), size = Vector(0.5, 0.202, 0.5), color = Color(152, 62, 32, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxFlares.mdl", bone = "v_weapon.magazine", rel = "", pos = Vector(0, 2.596, 2.371), angle = Angle(10.272, -90, 180), size = Vector(0.5, 0.33, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["slot"] = { type = "Model", model = "models/props_wasteland/tram_leverbase01.mdl", bone = "v_weapon.galil", rel = "", pos = Vector(0.879, -0.801, 5.201), angle = Angle(-90, 0, 0), size = Vector(0.423, 0.237, 0.244), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["lever+"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "v_weapon.bolt", rel = "", pos = Vector(0.083, 0.787, -1.053), angle = Angle(0, 98.212, 161.955), size = Vector(0.435, 0.245, 0.435), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["v_weapon.galil"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.WElements = {
	["mag"] = { type = "Model", model = "models/Items/BoxFlares.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.602, 1.001, -0.653), angle = Angle(68.1, 0, 0), size = Vector(0.5, 0.33, 0.5), color = Color(152, 62, 32, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.871, 1.039, 0.419), angle = Angle(0, 0, 0), size = Vector(0.324, 0.324, 0.324), color = Color(152, 62, 32, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["fish"] = { type = "Model", model = "models/props/de_inferno/goldfish.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(24.194, 1.008, -6.685), angle = Angle(-11.344, 0, -180), size = Vector(3.25, 1.465, 1.48), color = Color(100, 65, 52, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false