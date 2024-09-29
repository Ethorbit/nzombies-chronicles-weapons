
SWEP.Category				= "TCoMW: Future"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "2129 Authoritarian Government"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "The Vaporizer"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 52			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "physgun"
SWEP.DoMuzzleFlash = false
SWEP.MuzzleFlashEffect = nil
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_physcannon.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_physics.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/irifle/irifle_fire2.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 30		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip			= 100	-- Bullets you start with
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "Battery"
SWEP.DisableChambering = true
SWEP.TracerName = "ToolTracer"
SWEP.TracerCount = 1
SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.GlassP = -15
SWEP.DamageType = DMG_DISSOLVE
SWEP.Secondary.IronFOV = 75
SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 400	--base damage per bullet
SWEP.Primary.Spread		= .0001	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns
-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-12.36, 0, 8.239)
SWEP.IronSightsAng = Vector(-4, 0, 0)
SWEP.SightsPos = Vector(-12.36, 0, 8.239)
SWEP.SightsAng = Vector(-4, 0, 0)
SWEP.RunSightsPos = Vector(13.868, -12.744, -2.05)
SWEP.RunSightsAng = Vector(-4.435, 62.558, 0)

SWEP.VElements = {
	["handle"] = { type = "Model", model = "models/props_wasteland/panel_leverHandle001a.mdl", bone = "Base", rel = "", pos = Vector(11.793, 3.364, -1.066), angle = Angle(-180, 77.393, -2.935), size = Vector(0.697, 0.697, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["heatsink"] = { type = "Model", model = "models/Items/battery.mdl", bone = "Base", rel = "", pos = Vector(0.159, -2.418, -4.146), angle = Angle(0, 90, 0), size = Vector(0.76, 1.024, 0.76), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["cover1"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "Base", rel = "", pos = Vector(0.079, -1.216, 7.769), angle = Angle(0, 0, 90), size = Vector(0.5, 0.388, 0.497), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_citadel001", skin = 0, bodygroup = {} },
	["glass+"] = { type = "Model", model = "models/props_combine/combine_window001.mdl", bone = "Base", rel = "", pos = Vector(3.128, 0.871, 15.024), angle = Angle(SWEP.GlassP, 45, 0), size = Vector(0.1, 0.05, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["cover1++"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "Base", rel = "", pos = Vector(5.046, 1.95, 8.722), angle = Angle(0, -90, 90), size = Vector(0.286, 0.335, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_citadel001", skin = 0, bodygroup = {} },
	["warning"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "square", rel = "", pos = Vector(0, 0.085, 0), angle = Angle(-47.667, -90, 0), size = Vector(0.032, 0.032, 0.032), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["glass"] = { type = "Model", model = "models/props_combine/combine_window001.mdl", bone = "Base", rel = "", pos = Vector(0, 0.284, 15.024), angle = Angle(SWEP.GlassP, 90, 0), size = Vector(0.1, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["plating"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "Base", rel = "", pos = Vector(5.705, -1.326, -0.505), angle = Angle(1.965, 30, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["hex"] = { type = "Model", model = "models/hunter/geometric/hex1x1.mdl", bone = "Base", rel = "", pos = Vector(0.172, 1.253, -5.605), angle = Angle(0, -30, 0), size = Vector(0.094, 0.094, 0.094), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_citadel001", skin = 0, bodygroup = {} },
	["glass++"] = { type = "Model", model = "models/props_combine/combine_window001.mdl", bone = "Base", rel = "", pos = Vector(-3.089, 0.871, 15.024), angle = Angle(SWEP.GlassP, 135, 0), size = Vector(0.1, 0.05, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["cover1+"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "Base", rel = "", pos = Vector(3.855, -0.587, 8.722), angle = Angle(0, -45, 90), size = Vector(0.286, 0.335, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_citadel001", skin = 0, bodygroup = {} },
	["vent"] = { type = "Model", model = "models/props/cs_assault/wall_vent.mdl", bone = "Base", rel = "", pos = Vector(0.162, -2.29, -1.078), angle = Angle(0, 90, 0), size = Vector(0.108, 0.108, 0.187), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bar"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "Base", rel = "", pos = Vector(9.434, 2.993, -0.991), angle = Angle(0, -100.163, 0), size = Vector(0.876, 0.876, 0.876), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["Doodad_2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Doodad_4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Prong_B"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Doodad_3"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Prong_A"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Doodad_1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
