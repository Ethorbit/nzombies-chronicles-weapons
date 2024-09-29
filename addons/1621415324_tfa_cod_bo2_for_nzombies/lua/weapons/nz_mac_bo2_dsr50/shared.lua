SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Dead Specimen Reactor 5000"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.LuaShellEject	= false
SWEP.Type	= "Anti-Material Rifle"
SWEP.Manufacturer = "DSR Precision"
SWEP.FireModeName = "Bolt-Action"
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "DSR 50"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.VMMultX = 1.5
SWEP.ScopeLegacyOrientation = true

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 65
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_dsr50.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_dsr50.mdl"	-- Weapon world model
SWEP.Base				= "tfa_3dscoped_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_dsr50.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 825			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 4		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 48	-- Bullets you start with
SWEP.Primary.KickUp				= 2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(675)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 10
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0
-- function SWEP:PreDrawViewModel( vm )
-- if self.Ispackapunched == 1 then
-- 		self.Owner:GetViewModel():SetSubMaterial(0, "bo2/zombie/pap_camo.vmt")
-- else
-- 		self.Owner:GetViewModel():SetSubMaterial(0, nil)
-- end
-- end

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 48

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = NZCoDDMG(1000)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 8
	self.Primary.MaxAmmo = 96
        self.Primary.DamageHeadshot = 10
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.VMPos = Vector(0.7, 1.5, -0.5)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-4.54, -6.5, 1.39)
SWEP.SightsAng = Vector(0.72, 0.1, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(8, -2, 2)
SWEP.InspectAng = Vector(10, 40, 10)
SWEP.IronSightsPos_ACOG = Vector(-3.82, -4.731, 1.258)
SWEP.IronSightsAng_ACOG = Vector(0.2, 0.1, 0)
SWEP.IronSightsPos_DB = Vector(-3.781, -9.058, 1.402)
SWEP.IronSightsAng_DB = Vector(0.3, 0.8, 0)
SWEP.VElements = {
	["original_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "", pos = Vector(-2.763, 0, 4.655), angle = Angle(0, 180, 0), size = Vector(0.266, 0.266, 0.266), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = true },
	["bo2_acog_sprite"] = { type = "Sprite", sprite = "scope/gdcw_acog", bone = "tag_weapon", rel = "bo2_acog", pos = Vector(-0.633, -0.105, 1.125), size = { x = 1.54, y = 1.54 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_acog"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.414, 0.1, 3.2), angle = Angle(0, 0, 0), size = Vector(0.377, 0.377, 0.377), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_dualband_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "bo2_dualband", pos = Vector(-1.747, -0.12, 0.986), angle = Angle(0, 180, 0), size = Vector(0.196, 0.196, 0.196), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["bo2_dualband"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_dualband.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.414, 0.1, 3.2), angle = Angle(0, 0, 0), size = Vector(0.377, 0.377, 0.377), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_cpu"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_balcpu.mdl", bone = "tag_weapon", rel = "", pos = Vector(-1.132, 0.1, 5.16), angle = Angle(0, 0, 0), size = Vector(0.224, 0.224, 0.224), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}


--[[SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_acog","bo2_dualband","bo2_cpu"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_fastmag"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj","am_gib"}
	}
}]]



SWEP.Offset = {
        Pos = {
        Up = -2,
        Right = 1,
        Forward = 5,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.PumpAction = {
	["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
	["value"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
}


SWEP.ScopeReticule = ("scope/scope_dsr50")

local ceedee = {}

SWEP.RTMaterialOverride = -1 --the number of the texture, which you subtract from GetAttachment

SWEP.RTOpaque = true

local g36
if surface then
	g36 = surface.GetTextureID("scope/gdcw_scopesight") --the texture you vant to use
end
SWEP.Secondary.ScopeZoom = 8 --IMPORTANT BIT
SWEP.RTScopeAttachment = 3
SWEP.ScopeAngleTransforms = {{"P",-1.1}}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}