--redacted
SWEP.Category				= "TCoMW: Tribal"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = ""SWEP.Manufacturer = "Bigwigian Tribe"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Holy Handgun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 56			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_357.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("^weapons/mortar/mortar_fire1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 120		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip			= 100	-- Bullets you start with
SWEP.Primary.KickUp			= .1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "pistol"

--SWEP.DoMuzzleFlash = false
--SWEP.MuzzleFlashEffect = nil

--[[SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	]]

SWEP.data 				= {}
SWEP.data.ironsights			= 1
--SWEP.ScopeScale 			= 0.7

SWEP.TracerName = "AR2Tracer"
SWEP.TracerCount 		= 1

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 20	--base damage per bullet
SWEP.Primary.Spread		= .0001	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns

SWEP.Secondary.IronFOV			= 65

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-3.6, 0, 1.6)
SWEP.IronSightsAng = Vector(-0.7, 3.7, 0)
SWEP.SightsPos = Vector(-3.6, 0, 1.6)
SWEP.SightsAng = Vector(-0.7, 3.7, 0)
SWEP.RunSightsPos = Vector(3.2, -8.641, -13.28)
SWEP.RunSightsAng = Vector(58.599, -14.801, 0)

SWEP.VElements = {
	["hook"] = { type = "Model", model = "models/props_junk/meathook001a.mdl", bone = "Python", rel = "", pos = Vector(-0.724, 1.393, 7.915), angle = Angle(0, 0.633, -124.071), size = Vector(0.165, 0.165, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["skull"] = { type = "Model", model = "models/Gibs/HGIBS.mdl", bone = "Python", rel = "", pos = Vector(-0.322, 0.272, -1.999), angle = Angle(-96.504, 90.725, 1.478), size = Vector(0.246, 0.246, 0.246), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sight"] = { type = "Model", model = "models/props_c17/tools_wrench01a.mdl", bone = "Python", rel = "", pos = Vector(-1.145, -0.109, 5.413), angle = Angle(0, -26.732, 0), size = Vector(0.112, 0.112, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sight+"] = { type = "Model", model = "models/props_c17/tools_wrench01a.mdl", bone = "Python", rel = "", pos = Vector(-0.117, -0.45, -2.404), angle = Angle(0, 180, 0), size = Vector(0.112, 0.112, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_annabelle.mdl", bone = "Python", rel = "", pos = Vector(-1.211, 1.57, 1.491), angle = Angle(-108.95, 84.06, -5.843), size = Vector(0.3, 0.742, 0.963), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-4.776, -7.046, -12.025) },
	["Python"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(8.312, -25.473, 6.166) }
}

SWEP.WElements = {
	["gun"] = { type = "Model", model = "models/weapons/w_annabelle.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.866, 2.338, -3.497), angle = Angle(166.688, -23.861, 27.52), size = Vector(0.259, 1.06, 1.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ShowWorldModel = false

DEFINE_BASECLASS( SWEP.Base )

function SWEP:PrimaryAttack()

	if !self:CanPrimaryAttack() then return end
	BaseClass.PrimaryAttack(self)
	self:EmitSound( "^weapons/ar1/ar1_dist2.wav", 511 )

end
