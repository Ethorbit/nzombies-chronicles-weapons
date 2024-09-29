SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Micro Aerator"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M8A1"		-- Weapon name (Shown on HUD)	
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
SWEP.VMMultX = 0.9
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_m8a1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_m8a1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_m8a1.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_rifle.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 789			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Semi			= 1250			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Burst			= 1250			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 32		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 48		-- Size of a clit
SWEP.Primary.DefaultClip		= 192		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.AllowReRollAtts = true
SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"4Burst",
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(90)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 4
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns
SWEP.SubMats = {1}
SWEP.Ispackapunched = 0

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 192

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.533, -2.8, 0.819)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(6.75, -2.827, -0.375)
SWEP.InspectAng = Vector(23, 39.799, 18.7)
SWEP.IronSightsPos_RDS = Vector(-2.471, 0, 0.039)
SWEP.IronSightsAng_RDS = Vector(-0.5, 0.2, 0)
SWEP.IronSightsPos_HOL = Vector(-2.471, -2.6, -0.124)
SWEP.IronSightsAng_HOL = Vector(-0.401, 0.3, 0)
SWEP.IronSightsPos_ACOG = Vector(-2.507, -3.464, -0.124)
SWEP.IronSightsAng_ACOG = Vector(0.899, 0.1, 0)

SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "bo2_rds", pos = Vector(1.366, -0.101, 1.335), size = { x = 0.368, y = 0.368 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.839, 0.079, 3.201), angle = Angle(0, 0, 0), size = Vector(0.352, 0.352, 0.352), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["bo2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "bo2_holo", pos = Vector(-0.253, -0.101, 1.36), size = { x = 0.368, y = 0.368 }, color = Color(255, 87, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false, active = false},
	["bo2_holo"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.839, 0.079, 3.286), angle = Angle(0, 0, 0), size = Vector(0.352, 0.352, 0.352), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_acog_sprite"] = { type = "Sprite", sprite = "scope/gdcw_acog", bone = "tag_weapon", rel = "bo2_acog", pos = Vector(-0.108, -0.098, 1.049), size = { x = 1.403, y = 1.403 }, color = Color(255, 87, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_acog"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.839, 0.079, 3.44), angle = Angle(0, 0, 0), size = Vector(0.352, 0.352, 0.352), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_riflesup.mdl", bone = "tag_weapon", rel = "", pos = Vector(25.506, 0.1, 0.043), angle = Angle(0, 0, 0), size = Vector(0.352, 0.352, 0.352), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_rds","bo2_holo","bo2_acog"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_quickdraw","bo2_stock"}
	},
	[5] = {
		header = "Other",
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

	self.Primary.Damage = NZCoDDMG(130)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 42
	self.Primary.MaxAmmo = 335
	self:ClearStatCache()

	if (CLIENT) then
		if !self.Attachments then return end
		local emptyChance = math.Round(math.Rand(1, 5))
		if emptyChance == 5 then return end -- They rolled nothing	
		local randAtt = math.Round(math.Rand(3, 4))
		
		if randAtt == 4 then
			self:SetTFAAttachment(3, math.Round(math.Rand(1, 2)), true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(4, 1, true)
			end
		else
			self:SetTFAAttachment(4, 1, true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(3, math.Round(math.Rand(1, 2)), true)
			end
		end
	end

	return true
end

SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 1,
        Forward = -1,
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