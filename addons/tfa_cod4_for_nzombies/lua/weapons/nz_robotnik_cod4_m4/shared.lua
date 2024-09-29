SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-0.75,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands			= true
SWEP.LuaShellEject		= true
SWEP.RTOpaque			= true
SWEP.NZPaPName = "Mutilator4000A1X"

SWEP.Category				= "CoD4 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M4A1"		-- Weapon name (Shown on HUD)	
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

SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_cod4_m4a1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_cod4_m4a1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_cod4_m4a1.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_cod4.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 857			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 270		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto",
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(121)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 1.5
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.905, -3.36, 0.098)
SWEP.SightsAng = Vector(0.1, 0, 0)
SWEP.RunSightsPos = Vector ( )
SWEP.RunSightsAng = Vector ( )
SWEP.InspectPos = Vector(4.86, 0, -0.281)
SWEP.InspectAng = Vector(14.199, 19, 11.258)
SWEP.IronSightsPos_RDS = Vector(-2.881, -1.033, 0.839)
SWEP.IronSightsAng_RDS = Vector(-1.201, 0.1, 0)
SWEP.IronSightsPos_AIM = Vector(-2.881, 0, 1.08)
SWEP.IronSightsAng_AIM = Vector(0.1, 0, 0)
SWEP.IronSightsPos_HOL = Vector(-2.921, -2.035, 0.625)
SWEP.IronSightsAng_HOL = Vector(0.1, -0.101, 0)
SWEP.IronSightsPos_ACOG = Vector(-2.879, -3.28, 0.8)
SWEP.IronSightsAng_ACOG = Vector(0.6, 0.6, 0)
SWEP.VElements = {
	["cod4_rds"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.289, 0.079, 3.312), angle = Angle(0, 0, 0), size = Vector(0.368, 0.368, 0.368), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "cod4_rds", pos = Vector(1.376, -0.051, 1.149), size = { x = 0.211, y = 0.211 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["cod4_aimpoint"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_aimpoint.mdl", bone = "tag_weapon", rel = "", pos = Vector(1, 0.039, 3.269), angle = Angle(0, 0, 0), size = Vector(0.342, 0.342, 0.342), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_aimpoint_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "cod4_aimpoint", pos = Vector(1.376, -0.013, 0.72), size = { x = 0.211, y = 0.211 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["cod4_holo"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(0.995, -0.046, 3.273), angle = Angle(0, 0, 0), size = Vector(0.342, 0.342, 0.342), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "cod4_holo", pos = Vector(-0.35, 0.097, 1.179), size = { x = 0.23, y = 0.23 }, color = Color(255, 77, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["cod4_acog_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "cod4_acog", pos = Vector(-3.03, -0.094, 0.976), angle = Angle(0, 180, 0), size = Vector(0.238, 0.238, 0.238), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["cod4_acog"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.623, 0.14, 3.266), angle = Angle(0, 0, 0), size = Vector(0.381, 0.381, 0.381), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_sil"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_silencer.mdl", bone = "tag_weapon", rel = "", pos = Vector(24.434, -0.231, 2), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}
--nzombies stuff
SWEP.Primary.MaxAmmo = 270
SWEP.AllowReRollAtts = true
SWEP.DisableChambering = true

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end
--PaP stuff
function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = NZCoDDMG(230)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 40
	timer.Simple(0.1, function()
		self:SetClip1(40)
	end)
	self.Primary.MaxAmmo = 600
    self.Primary.DamageHeadshot = 2.5
	self:ClearStatCache()

	if (CLIENT) then
		if !self.Attachments then return end
		local emptyChance = math.Round(math.Rand(1, 5))
		if emptyChance == 5 then return end -- They rolled nothing	
		local randAtt = math.Round(math.Rand(3, 4))
		
		if randAtt == 4 then
			self:SetTFAAttachment(4, 1, true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(3, math.Round(math.Rand(1, 2)), true)
			end
		else
			self:SetTFAAttachment(3, math.Round(math.Rand(1, 2)), true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(4, 1, true)
			end
		end
	end

	return true
end

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
--		atts = {"cod4_rds","cod4_aimpoint","cod4_holo","cod4_acog"}
		atts = {"cod4_aimpoint","cod4_holo"}
	},
--	[4] = {
--		header = "Silencer",
--		offset = {0, 0},
--		atts = {"cod4_sil"}
--	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum"}
	}

}
SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 2,
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