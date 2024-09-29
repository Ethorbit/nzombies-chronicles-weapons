SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Locked Glock"		-- Weapon name (Shown on HUD)	
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

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_glock18.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/glock/glock18-1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 400			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Burst				= 1200
SWEP.Primary.ClipSize			= 18		-- Size of a clip
SWEP.Primary.DefaultClip		= 18		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.FireModes = {"3Burst"}
SWEP.DefaultFireMode     = "3Burst"
SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 30	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .019 -- Ironsight accuracy, should be the same for shotguns
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
SWEP.AllowSprintAttack = true