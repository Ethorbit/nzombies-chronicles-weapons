
SWEP.Category				= "TCoMW: Future"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "2129 Authoritarian Government"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Civil Control Device"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 58			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false --should have left it as original, and let everybody do as little change to the coding as necessary. 
	--But no, you just had to go and screw with the viewmodel.
	--goddammit, you're making me spend a lot of time fixing this mess.
SWEP.ViewModel				= "models/weapons/c_irifle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.Base				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/mortar/mortar_explode3.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 666			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Burst				= 1200
SWEP.Primary.BurstDelay				= 0.25
SWEP.Primary.ClipSize			= 60		-- Size of a clip
SWEP.Primary.DefaultClip		= 240		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 24	-- Base damage per bullet
SWEP.Primary.Spread		= .05	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.TracerName = "AR2Tracer"
SWEP.TracerCount = 1

SWEP.Secondary.ScopeZoom			= 15
SWEP.Secondary.IronFOV = 50
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true	

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.841, 0, 1.039)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-5.841, 0, 1.039)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng = Vector(6.446, 62.852, 0)

SWEP.VElements = {
	["lens+"] = { type = "Model", model = "models/maxofs2d/lamp_flashlight.mdl", bone = "Base", rel = "", pos = Vector(0, -3.122, 6.165), angle = Angle(90, 0, 0), size = Vector(0.173, 0.173, 0.173), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["muzzle"] = { type = "Model", model = "models/maxofs2d/hover_propeller.mdl", bone = "Base", rel = "", pos = Vector(0, -0.066, 15.949), angle = Angle(0, 0, 0), size = Vector(0.136, 0.136, 0.453), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["heatvent"] = { type = "Model", model = "models/props_combine/combine_fence01a.mdl", bone = "Base", rel = "", pos = Vector(0.4, -0.477, 2.857), angle = Angle(0, 90, 0), size = Vector(0.054, 0.054, 0.054), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["battery"] = { type = "Model", model = "models/props_combine/combine_mine01.mdl", bone = "Shell1", rel = "", pos = Vector(0, 0, -1.198), angle = Angle(0, 0, 180), size = Vector(0.068, 0.068, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["lens"] = { type = "Model", model = "models/maxofs2d/lamp_flashlight.mdl", bone = "Base", rel = "", pos = Vector(0, -3.122, -0.484), angle = Angle(-90, 0, 0), size = Vector(0.119, 0.119, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shield+"] = { type = "Model", model = "models/props_combine/combine_barricade_short01a.mdl", bone = "Base", rel = "", pos = Vector(3.125, 1.2, 14.489), angle = Angle(90, -90, 0), size = Vector(0.07, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/props_phx2/garbage_metalcan001a.mdl", bone = "Base", rel = "", pos = Vector(0, -3.145, 2.71), angle = Angle(0, 0, 180), size = Vector(0.5, 0.5, 1.217), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 3, bodygroup = {[1] = 1} },
	["battery+"] = { type = "Model", model = "models/props_combine/combine_mine01.mdl", bone = "Shell2", rel = "", pos = Vector(0, 0, -1.121), angle = Angle(0, 0, 180), size = Vector(0.068, 0.068, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["shield"] = { type = "Model", model = "models/props_combine/combine_barricade_short01a.mdl", bone = "Base", rel = "", pos = Vector(1.059, -2.11, 13.647), angle = Angle(90, 90, 0), size = Vector(0.07, 0.064, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}