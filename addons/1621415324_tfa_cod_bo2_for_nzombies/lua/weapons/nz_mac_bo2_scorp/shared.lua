SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-0.5,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Evolved Death Stalker"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through

SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Manufacturer = nil
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Scorpion EVO"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.SubMats = {3}
SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_scorpion.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_scorpion.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_scorpion.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_smg.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 1250			-- This is in Rounds Per Minute
SWEP.Primary.RPM_R			= 1893			-- Jeebus Christ
SWEP.Primary.ClipSize			= 32		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 42		-- Size of a clip
SWEP.Primary.DefaultClip		= 256		-- Bullets you start with
SWEP.Primary.MaxAmmo = 256
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto"}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(75)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 4
SWEP.Primary.Spread		= .017	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.886, -3.547, 0.959)
SWEP.SightsAng = Vector(0.2, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(12.352, -4.415, 3.2)
SWEP.InspectAng = Vector(15.8, 33.099, 22.6)
SWEP.IronSightsPos_RDS = Vector(-2.859, -1.596, 0.319)
SWEP.IronSightsAng_RDS = Vector(0.6, 0.3, 0)
SWEP.IronSightsPos_HOL = Vector(-2.859, -1.596, 0.319)
SWEP.IronSightsAng_HOL = Vector(0.4, 0.4, 0)
SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "bo2_rds", pos = Vector(1.287, -0.101, 1.35), size = { x = 0.189, y = 0.189 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.925, 0.129, 3.549), angle = Angle(0, 0, 0), size = Vector(0.358, 0.358, 0.358), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["bo2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "bo2_holo", pos = Vector(0.145, -0.101, 1.389), size = { x = 0.411, y = 0.411 }, color = Color(255, 103, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_holo"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.925, 0.129, 3.549), angle = Angle(0, 0, 0), size = Vector(0.358, 0.358, 0.358), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_riflesup.mdl", bone = "tag_weapon", rel = "", pos = Vector(21.566, 0.27, 0.791), angle = Angle(0, 0, 0), size = Vector(0.439, 0.439, 0.439), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }

}

SWEP.Attachments = {
	[2] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_rds","bo2_holo"}
	},
	[3] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_longbarrel"}
	},
	[4] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_quickdraw","bo2_stock","bo2_rapidfire"}
	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_dualmag"}
		},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = NZCoDDMG(135)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 40
	self.Primary.MaxAmmo = 320
        self.Primary.DamageHeadshot = 5
	self.FireModes = {"Automatic"}
	self:ClearStatCache()
	return true
end

function SWEP:NZMaxAmmo()
	self:SetClip1(self.Primary.ClipSize)
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = -8.5,
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

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}