SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-0.5,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = {
	["j_bolt"] = { scale = Vector(1, 1, 1), pos = Vector(-2.715, 0, 0), angle = Angle(0, 0, 0) },
	["j_carry_handle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 21.049) }
}
 --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "R115 Resonator"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "RPK"		-- Weapon name (Shown on HUD)	
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
SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_rpk.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_rpk.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.VMMultX = 0.8
SWEP.Primary.Sound			= Sound("robotnik_bo1_rpk.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 750			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 100		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 113		-- Size of a clip
SWEP.Primary.DefaultClip		= 400		-- Bullets you start with
SWEP.Primary.KickUp				= 0.4		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.4		-- Maximum up recoil (stock)
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
SWEP.Primary.Damage		= NZCoDDMG(110)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 3
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 400

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.189, -1.441, 0.68)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(6.518, -3.945, 0.6)
SWEP.InspectAng = Vector(17.6, 32.9, 18.399)
SWEP.IronSightsPos_RDS_N = Vector(-2.199, 1.12, 0.239)
SWEP.IronSightsAng_RDS_N = Vector(0.1, 0, 0)
SWEP.IronSightsPos_REF = Vector(-2.161, -0.08, -0.08)
SWEP.IronSightsAng_REF = Vector(0.419, 0.039, 0)
SWEP.IronSightsPos_BO1_ACOG = Vector(-2.08, 0, 0.319)
SWEP.IronSightsAng_BO1_ACOG = Vector(0.899, 0.899, 0)
SWEP.VElements = {
	["blops_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_view", rel = "blops_rds", pos = Vector(2.153, -0.01, 1.559), size = { x = 0.264, y = 0.264 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_rds"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_kobra.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.677, 0.019, 2.4), angle = Angle(0, 0, 0), size = Vector(0.451, 0.451, 0.451), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_siderail"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_akrail.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.423, -0.164, 0.469), angle = Angle(0, 0, 0), size = Vector(0.485, 0.485, 0.485), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_reflex_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_reflex", pos = Vector(0.435, 0.039, 1.041), size = { x = 0.218, y = 0.218 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false },
	["blops_reflex"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_reflex.mdl", bone = "tag_weapon", rel = "blops_siderail", pos = Vector(-0.795, 0.1, 2.71), angle = Angle(0, 0, 0), size = Vector(0.405, 0.405, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_pka"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_pka.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.871, 0, 2.572), angle = Angle(0, 0, 0), size = Vector(0.451, 0.451, 0.451), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_pka_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_pka", pos = Vector(-1.726, 0.009, 1.2), angle = Angle(0, 180, 0), size = Vector(0.268, 0.268, 0.268), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_rds_norail","blops_reflex","blops_pka"}
	},
	[5] = {
		header = "Mags",
		offset = {0, 0},
		atts = {"blops_xtendedmag_mdl","blops_dualmag"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum","am_gib"}
	}
}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"

	self.Ispackapunched = 1
	self.Primary.Damage = NZCoDDMG(155)
	self.Primary.ClipSize = 125
	self.Primary.MaxAmmo = 500
        self.Primary.DamageHeadshot = 3
	self:ClearStatCache()

	if (CLIENT) then
		if !self.Attachments then return end
		local emptyChance = math.Round(math.Rand(1, 3))
		if emptyChance == 3 then return end -- They rolled nothing	
		local randAtt = math.Round(math.Rand(3, 4))
		
		if randAtt == 4 then
			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(3, 1, true)
			end
		else
			self:SetTFAAttachment(3, 1, true)
		end
	end

	return true
end


SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 1,
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