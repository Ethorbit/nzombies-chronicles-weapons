SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 0
SWEP.TracerName = ""
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Akimbo"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "duel"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_elite.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.Akimbo = true
SWEP.Primary.Sound			= Sound("weapons/p228/p228-1.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 400			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 30		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 32	-- Base damage per bullet
SWEP.Primary.Spread		= .023	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .013 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.973, -4.194, 2.96)
SWEP.IronSightsAng = Vector(-0.47, -0.069, -0.144)
SWEP.SightsPos = Vector(-5.973, -4.194, 2.96)
SWEP.SightsAng = Vector(-0.47, -0.069, -0.144)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)
	

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true