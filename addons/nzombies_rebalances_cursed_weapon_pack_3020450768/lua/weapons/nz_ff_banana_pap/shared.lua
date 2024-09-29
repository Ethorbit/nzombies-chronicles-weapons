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
SWEP.PrintName				= "The Best of the Bunch"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "The Best of the Bunch"
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
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
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_p228.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/props/cs_italy/bananna.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
sound.Add( {
	name = "SWeapon_Banana.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 130,
	pitch = {150, 150},
	sound = "weapons/p228/p228-1.wav"
} )
SWEP.Primary.Sound			= Sound("SWeapon_Banana.1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 920			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 32		-- Size of a clip
SWEP.Primary.DefaultClip		= 288		-- Bullets you start with
SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.AmmoConsumption =  2
SWEP.Primary.MaxAmmo 			= 216

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 2		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 105	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2.5
SWEP.Primary.Spread		= .065	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .065 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.973, -4.194, 2.96)
SWEP.IronSightsAng = Vector(-0.47, -0.069, -0.144)
SWEP.SightsPos = Vector(-5.973, -4.194, 2.96)
SWEP.SightsAng = Vector(-0.47, -0.069, -0.144)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)
	
SWEP.ViewModelBoneMods = {
	["v_weapon.p228_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["bananamag"] = { type = "Model", model = "models/props/cs_italy/banannagib1.mdl", bone = "v_weapon.p228_Clip", rel = "", pos = Vector(0.796, -0.995, -2.421), angle = Angle(180, 0, 90), size = Vector(0.726, 0.726, 0.726), color = Color(217, 217, 217, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["banana"] = { type = "Model", model = "models/props/cs_italy/bananna.mdl", bone = "v_weapon.p228_Parent", rel = "", pos = Vector(0.801, -3.586, -1.537), angle = Angle(180, 0, 90), size = Vector(0.727, 0.727, 0.727), color = Color(217, 217, 217, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["nana"] = { type = "Model", model = "models/props/cs_italy/bananna.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.573, 0.222, -3.235), angle = Angle(0, -87.56, 0), size = Vector(0.851, 0.851, 0.851), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ShowWorldModel = false

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false