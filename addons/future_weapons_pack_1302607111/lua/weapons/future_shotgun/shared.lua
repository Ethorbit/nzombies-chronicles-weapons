
SWEP.Category				= "TCoMW: Future"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "2129 Authoritarian Government"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Tactical Shotgun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 72			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_smg1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("^npc/strider/strider_minigun.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 180			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 12		-- Size of a clip
SWEP.Primary.DefaultClip		= 60		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 12		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 10-- Base damage per bullet
SWEP.Primary.Spread		= .1	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns
SWEP.TracerName = "AR2Tracer"
SWEP.TracerCount = 1
SWEP.SelectiveFire		= false
SWEP.Primary.ReloadSound = Sound("weapons/ar2/npc_ar2_reload.wav")
-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.441, 0, 2.88)
SWEP.IronSightsAng = Vector(-1.201, -0.101, 0)
SWEP.SightsPos = Vector(-6.441, 0, 2.88)
SWEP.SightsAng = Vector(-1.201, -0.101, 0)
SWEP.RunSightsPos = Vector(5.748, -9.686, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-3.033, 1.348, -1.221), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.355, 0), angle = Angle(0, -15.959, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -15.296, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(9.468, -55.467, -75.236) }
}

SWEP.Primary.Range = 500 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = .8
SWEP.DisableChambering = true
SWEP.DoProceduralReload = true--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 2

SWEP.VElements = {
	--["shell++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(2.625, 2.549, -2.672), angle = Angle(130.848, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/Items/combine_rifle_cartridge01.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 4.454, -0.797), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/Items/combine_rifle_cartridge01.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0.093, 1.021, -9.705), angle = Angle(-90, 90, 180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	--["box"] = { type = "Model", model = "models/Items/357ammo.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(3.025, 5.632, -3.425), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	--["shell+++++++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(1.488, 0.219, -2.672), angle = Angle(90, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	--["shell+++++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(2.132, 1.067, -2.672), angle = Angle(96.462, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0.079, -3.32, 0), angle = Angle(-1.806, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	--["shell+"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(3.046, 3.201, -2.672), angle = Angle(152.945, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	--["shell++++++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(1.893, 0.615, -2.672), angle = Angle(90, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	--["shell++++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(2.132, 1.626, -2.672), angle = Angle(108.81, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	--["shell+++"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(2.384, 2.078, -2.672), angle = Angle(119.481, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/props_combine/suit_charger001.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -0.304, -3.047), angle = Angle(0, 0, 0), size = Vector(0.196, 0.196, 0.519), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	--["shell"] = { type = "Model", model = "models/weapons/shotgun_shell.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(3.048, 3.684, -2.597), angle = Angle(180, 0, 0), size = Vector(0.365, 0.404, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["muzzle"] = { type = "Model", model = "models/dav0r/thruster.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -0.278, 9.005), angle = Angle(0, 180, 0), size = Vector(0.5, 0.5, 1.684), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/dav0r/hoverball", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS(SWEP.Base)

function SWEP:PrimaryAttack()

	if self:Clip1() == 0 then
		self:Reload()
	else
		BaseClass.PrimaryAttack(self)
	end

end