SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = {
	["tag_weapon"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1.259, 0, 0) }
}
 --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque	= true
SWEP.NZPaPName = "GermanPwnage 3000+"
SWEP.UseHands				= true
SWEP.LuaShellEject			= true
SWEP.Category				= "CoD4 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "G3"		-- Weapon name (Shown on HUD)	
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

SWEP.DisableChambering = true
SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_cod4_g3.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_cod4_g3_new.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("robotnik_cod4_g3.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_cod4.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 600			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 20		-- Size of a clip
SWEP.Primary.DefaultClip		= 140		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(98)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 3
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.369, -1.489, 0.939)
SWEP.SightsAng = Vector(-0.201, 0.012, 0)
SWEP.RunSightsPos = Vector ( )
SWEP.RunSightsAng = Vector ( )
SWEP.InspectPos = Vector(10, 0, 2.519)
SWEP.InspectAng = Vector(14.5, 36.599, 30.996)
SWEP.IronSightsPos_RDS = Vector(-2.36, -1.241, 0.699)
SWEP.IronSightsAng_RDS = Vector(-2.201, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-2.36, -3.04, 0.421)
SWEP.IronSightsAng_ACOG = Vector(0.699, 0, 0)
SWEP.VElements = {
	["cod4_rds"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.141, 0.05, 3.92), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "cod4_rds", pos = Vector(1.383, -0.06, 1.22), size = { x = 0.185, y = 0.185 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["cod4_acog"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.141, 0.087, 3.92), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["cod4_acog_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "cod4_acog", pos = Vector(-3.201, -0.098, 1.041), angle = Angle(0, 180, 0), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["cod4_sil"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_silencer.mdl", bone = "tag_weapon", rel = "", pos = Vector(29.481, -0.24, 1.789), angle = Angle(0, 0, 0), size = Vector(0.635, 0.635, 0.635), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

--nzombies stuff
SWEP.Primary.MaxAmmo = 140
SWEP.AllowReRollAtts = true

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
	self.Primary.Damage = NZCoDDMG(289)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 25
	self.Primary.Automatic = true
	timer.Simple(0.1, function()
		self:SetClip1(25)
	end)

	self.Primary.MaxAmmo = 350
    self.Primary.DamageHeadshot = 6
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
		atts = {"cod4_rds","cod4_acog"}
	},
--	[4] = {
--		header = "Silencer",
--		offset = {0, 0},
--		atts = {"cod4_sil"}
--	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum","am_gib"}
	}

}
SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 0,
        Forward = 4,
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