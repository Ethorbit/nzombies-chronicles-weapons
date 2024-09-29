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
SWEP.NZPaPName = "E-115 T-Party"
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Category				= "[TFA][nZ] Call of Duty Black Ops: The Lost Weapons"
SWEP.Author				= "blunto"
SWEP.Contact				= ""
SWEP.Purpose				= "Very underrated weapon"
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Enfield"		-- Weapon name (Shown on HUD)	
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

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_enfield.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_enfield.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = true

SWEP.Primary.Sound			= Sound("robotnik_bo1_enfield.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_bo1_aug.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 750			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_XM			= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 240		-- Bullets you start with
SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.15		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Auto"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 67	-- Base damage per bullet
SWEP.Primary.Spread		= .027	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

--nzombies stuff
SWEP.AllowReRollAtts = true
SWEP.DisableChambering = true
SWEP.Primary.MaxAmmo = 240
SWEP.Primary.DamageHeadshot = 2.5

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
	self.Primary.Damage = 112
	self.Ispackapunched = 1
	self.Primary.ClipSize = 45
	timer.Simple(0.1, function()
		self:SetClip1(45)
	end)
	self.Primary.MaxAmmo = 540
    self.Primary.DamageHeadshot = 4.0
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

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-1.632, -2.161, 0.1)
SWEP.SightsAng = Vector(0.1, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(8.079, 0, 0)
SWEP.InspectAng = Vector(17.299, 38.599, 17.799)
SWEP.IronSightsPos_RDS_N = Vector(-1.701, 0.519, 0.2)
SWEP.IronSightsAng_RDS_N = Vector(-0.201, -0.24, 0)
SWEP.IronSightsPos_REF = Vector(-1.64, 0, 0.439)
SWEP.IronSightsAng_REF = Vector(-0.201, 0, 0)
SWEP.IronSightsPos_BO1_ACOG = Vector(-1.68, 0, -0.201)
SWEP.IronSightsAng_BO1_ACOG = Vector(0.2, -0.141, 0)
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.VElements = {
	["blops_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_rds", pos = Vector(1.608, -0.051, 1.042), size = { x = 0.232, y = 0.232 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_rds"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(-1.673, 0.07, 3.753), angle = Angle(0, 0, 0), size = Vector(0.421, 0.421, 0.421), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_reflex_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_reflex", pos = Vector(-0.449, 0.029, 0.779), size = { x = 0.137, y = 0.137 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false },
	["blops_reflex"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(-2.931, -0.03, 3.753), angle = Angle(0, 0, 0), size = Vector(0.298, 0.298, 0.298), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_acog"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_susat.mdl", bone = "tag_weapon", rel = "", pos = Vector(-1.331, 0.048, 3.667), angle = Angle(0, 0, 0), size = Vector(0.405, 0.405, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_sil"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_silreg.mdl", bone = "tag_weapon", rel = "", pos = Vector(16.197, -0.02, 1.799), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  }
}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_rds_norail","blops_reflex","blops_acog"},
		order = 1,
	}
}


SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 0,
        Forward = -2,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}



SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}