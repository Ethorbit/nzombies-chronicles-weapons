SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.NZPaPName = "Infused Arbalest"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.FireModeName = "Bolt-Action"
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Ballista"		-- Weapon name (Shown on HUD)	
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
SWEP.ScopeLegacyOrientation = true

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_ballista.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_ballista.mdl"	-- Weapon world model
SWEP.Base				= "tfa_3dscoped_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.VMMultX = 1.3
SWEP.Primary.Sound			= Sound("mac_bo2_ballista.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_sniper.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 350			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 10		-- Size of a clip
SWEP.Primary.DefaultClip		= 64		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(150)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 6
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_acog","bo2_dualband","bo2_irons","bo2_cpu"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}


SWEP.Ispackapunched = 0

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Initialize(...)
	if (CLIENT) then
		self:SetTFAAttachment(3, 3, false)
	end

	return BaseClass.Initialize(self, ...)
end

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 64

function SWEP:OnPaP()
	if (CLIENT) then
		self:SetTFAAttachment(3, 0, false)
	end

	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = NZCoDDMG(300)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 10
	self.Primary.MaxAmmo = 120
    self.Primary.DamageHeadshot = 10
	self:ClearStatCache()
end

-- Enter iron sight info and bone mod info below
SWEP.VMPos = Vector(-0.5, 2, -0.6)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-3.634, -4.5, 0.605)
SWEP.SightsAng = Vector(0.48, 0.43, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(6, -6, 1.5)
SWEP.InspectAng = Vector(15, 45, 10)
SWEP.IronSightsPos_IRON = Vector(-3.674, -4, 1.299)
SWEP.IronSightsAng_IRON = Vector(0.3, 0, 0)
SWEP.IronSightsPos_DB = Vector(-4.152, -6.481, 0.3)
SWEP.IronSightsAng_DB = Vector(1.5, 0.5, 0)
SWEP.IronSightsPos_ACOG = Vector(-4.166, -4.64, 0.407)
SWEP.IronSightsAng_ACOG = Vector(0.5, 0, 0)
SWEP.VElements = {
	["original_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "", pos = Vector(-0.301, 0, 4.889), angle = Angle(0, 180, 0), size = Vector(0.328, 0.328, 0.328), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = true },
	["bo2_dualband_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "bo2_dualband", pos = Vector(-1.711, -0.101, 1.003), angle = Angle(0, 180, 0), size = Vector(0.221, 0.221, 0.221), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["bo2_dualband"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_dualband.mdl", bone = "tag_weapon", rel = "", pos = Vector(4.55, 0.119, 3.506), angle = Angle(0, 0, 0), size = Vector(0.382, 0.382, 0.382), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_acog_sprite"] = { type = "Sprite", sprite = "scope/gdcw_acog", bone = "tag_weapon", rel = "bo2_acog", pos = Vector(-0.629, -0.101, 1.123), size = { x = 1.395, y = 1.395 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_acog"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(4.55, 0.098, 3.336), angle = Angle(0, 0, 0), size = Vector(0.382, 0.382, 0.382), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_cpu"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_balcpu.mdl", bone = "tag_weapon", rel = "", pos = Vector(4.522, 0, 5.293), angle = Angle(0, 0, 0), size = Vector(0.314, 0.314, 0.314), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_snipersil2.mdl", bone = "tag_weapon", rel = "", pos = Vector(32.886, 0.1, 0.936), angle = Angle(0, 0, 0), size = Vector(0.453, 0.453, 0.453), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

SWEP.WElements = nil --Export from SWEP Creation Kit.  For each item that can/will be toggled, set active=false in its individual table

	--[ORDER] = = { atts = { "si_eotech" }, sel = 0 }
	--sel allows you to have an attachment pre-selected, and is used internally by the base to show which attachment is selected in each category.
--[[SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_acog","bo2_dualband","bo2_irons","bo2_cpu"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}]]


SWEP.Offset = {
        Pos = {
        Up = -2,
        Right = 0,
        Forward = 6,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}
SWEP.ScopeReticule = ("scope/scope_ballista")
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

local ceedee = {}

SWEP.RTMaterialOverride = -1 --the number of the texture, which you subtract from GetAttachment

SWEP.RTOpaque = true

local g36
if surface then
	g36 = surface.GetTextureID("scope/gdcw_scopesight") --the texture you vant to use
end
SWEP.Secondary.ScopeZoom = 8 --IMPORTANT BIT
SWEP.RTScopeAttachment = 0
SWEP.ScopeAngleTransforms = {}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}


SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}