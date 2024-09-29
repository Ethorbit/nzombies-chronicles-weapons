SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods =  {
	["j_handle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -15.396) }
}
 --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands				= true
SWEP.LuaShellEject			= true
SWEP.Type					= "Machine Gun"
SWEP.DisableChambering		= true
SWEP.Primary.Knockback = 0
SWEP.NZPaPName = "M420 Encore"
SWEP.RTOpaque	= true
SWEP.Category				= "CoD MW2 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M240"		-- Weapon name (Shown on HUD)	
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

SWEP.AllowReRollAtts = true
SWEP.VMMultX = 1.3
SWEP.VMPos = Vector(0,0,-1)
SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_mw2_m240.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_mw2_m240_new.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_mw2_m240.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_mw2_aug.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 937			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 90		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 135		-- Size of a clip
SWEP.Primary.DefaultClip		= 450		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto",
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 68	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 1
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0
function SWEP:PreDrawViewModel( vm )
if self.Ispackapunched == 1 then
		self.Owner:GetViewModel():SetSubMaterial(1, "models/xqm/lightlinesred_tool.vmt")
else
		self.Owner:GetViewModel():SetSubMaterial(1, nil)
end
end

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 450

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.776, -1.05, 1.579) 
SWEP.SightsAng = Vector(-0.101, 0, 0) 
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(9.76, 0, -1.88)
SWEP.InspectAng = Vector(7.8, 27.7, 11.699)
SWEP.IronSightsPos_RDS = Vector(-3.5, -2.63, 1.02)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)
SWEP.IronSightsPos_HOL = Vector(-3.5, -0.681, 0.8)
SWEP.IronSightsAng_HOL = Vector(-0.401, 1.101, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.5, -0.6, 0.7)
SWEP.IronSightsAng_ACOG = Vector(0.5, 0, 0)
SWEP.IronSightsPos_TH = Vector(-3.8, -4.72, 1.186)
SWEP.IronSightsAng_TH = Vector(-0.5, -0.401, 0)
SWEP.VElements = {
	["mw2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "j_ammo_cover", rel = "mw2_rds", pos = Vector(0.732, -0.01, 1.1), size = { x = 0.276, y = 0.276 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active= false},
	["mw2_rds"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_rds.mdl", bone = "j_ammo_cover", rel = "", pos = Vector(-5.639, 0, 0.66), angle = Angle(0, 0, 0), size = Vector(0.435, 0.435, 0.435), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false },
	["mw2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "j_ammo_cover", rel = "mw2_holo", pos = Vector(-0.897, 0.019, 1.44), size = { x = 0.276, y = 0.276 }, color = Color(255, 0, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active= false},
	["mw2_holo"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_holo.mdl", bone = "j_ammo_cover", rel = "", pos = Vector(-5.639, 0, 0.735), angle = Angle(0, 0, 0), size = Vector(0.541, 0.541, 0.541), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false },
	["mw2_acog"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_acog.mdl", bone = "j_ammo_cover", rel = "", pos = Vector(-7.145, 0, 0.653), angle = Angle(0, 0, 0), size = Vector(0.493, 0.493, 0.493), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false },
	["mw2_thermal_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "j_ammo_cover", rel = "mw2_thermal", pos = Vector(-2.868, -0.024, 0.976), angle = Angle(0, 180, 0), size = Vector(0.216, 0.216, 0.216), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} ,active= false },
	["mw2_thermal"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_thermal.mdl", bone = "j_ammo_cover", rel = "", pos = Vector(-7.145, 0.019, 0.653), angle = Angle(0, 0, 0), size = Vector(0.409, 0.409, 0.409), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false  },
	["mw2_sil"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_silencer.mdl", bone = "tag_weapon", rel = "", pos = Vector(36.717, 0.2, 0.871), angle = Angle(0, 0, 0), size = Vector(0.717, 0.717, 0.717), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"mw2_rds","mw2_holo","mw2_acog","mw2_thermal"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"mw2_sil"}
	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","mw2_fmj","mw2_xtendedmag"}
	}

}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"

	self.Ispackapunched = 1
	self.Primary.Damage = 150
	self.Primary.ClipSize = 135
	self.Primary.MaxAmmo = 500
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

SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 01,
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