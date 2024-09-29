SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "ShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Ultra"
SWEP.DisableChambering = true
SWEP.UseHands	= true
SWEP.LuaShellEject	= true
SWEP.Primary.Knockback = 0
SWEP.Primary.PenetrationMultiplier = 0.8 --Change the amount of something this gun can penetrate through
SWEP.IronSightTime = 0.180
SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Manufacturer = "FN Herstal"
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Five-Seven"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.VMMultX = 0.85
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_57.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_57.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.AllowReRollAtts = true
SWEP.Primary.Sound			= Sound("mac_bo2_57.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_pistol.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 750			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 20		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(125)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot     = 3.5
SWEP.Primary.Spread		= .015	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns
SWEP.SubMats = {2}
SWEP.Ispackapunched = 0
-- function SWEP:PreDrawViewModel( vm )
-- if self.Ispackapunched == 1 then
-- 		self.Owner:GetViewModel():SetSubMaterial(1, "bo2/zombie/pap_camo.vmt")
-- else
-- 		self.Owner:GetViewModel():SetSubMaterial(1, nil)
-- end
-- end

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 120

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.461, -3.296, 0.68)
SWEP.SightsAng = Vector(0.2, -0.101, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(11.519, -10.238, 1.96)
SWEP.InspectAng = Vector(22.899, 61.7, 27)
SWEP.IronSightsPos_RDS = Vector(-2.359, -2.064, 0)
SWEP.IronSightsAng_RDS = Vector(0.3, 0.5, 0)


SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "j_bolt", rel = "bo2_rds", pos = Vector(0.723, -0.12, 0.839), size = { x = 0.247, y = 0.247 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_pistolsight.mdl", bone = "j_bolt", rel = "", pos = Vector(-0.315, 0.129, 0.129), angle = Angle(0, 0, 0), size = Vector(0.328, 0.328, 0.328), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_pistolsil.mdl", bone = "tag_weapon", rel = "", pos = Vector(8.295, 0.065, 0.298), angle = Angle(0, 0, 0), size = Vector(0.328, 0.328, 0.328), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }

}


SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"bo2_rds"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"bo2_sil","bo2_longbarrel"}
	},
	[5] = {
		header = "Other",
		offset = {0, 0},
		atts = {"bo2_bigammo_nomdl","bo2_fastmag"}
	},
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","bo2_fmj"}
	}
}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	
	self.Primary.Damage = NZCoDDMG(240)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 20
	self.Primary.MaxAmmo = 200
        self.Primary.DamageHeadshot = 4
	self:ClearStatCache()

	if (CLIENT) then
		if !self.Attachments then return end
		local emptyChance = math.Round(math.Rand(1, 5))
		if emptyChance == 5 then return end -- They rolled nothing	
		local randAtt = math.Round(math.Rand(3, 4))
		
		if randAtt == 4 then
			self:SetTFAAttachment(3, 1, true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(4, 1, true)
			end
		else
			self:SetTFAAttachment(4, 1, true)

			if math.Round(math.Rand(1, 3)) == 2 then
				self:SetTFAAttachment(3, 1, true)
			end
		end
	end

	return true
end


SWEP.Offset = {
        Pos = {
        Up = 2,
        Right = 1,
        Forward = -18,
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