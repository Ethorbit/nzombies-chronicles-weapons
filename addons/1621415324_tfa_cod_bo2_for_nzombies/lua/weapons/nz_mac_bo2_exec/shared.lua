SWEP.Category				= "CoD BO2 nzombies"
SWEP.NZPaPName = "Voice of Justice"
SWEP.UseHands			= true
SWEP.Type	= "Pistol"
SWEP.DisableChambering	= true
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Executioner"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 25			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Primary.Knockback = 0
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_executioner1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_executioner.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.VMMultX = 0.75
SWEP.Primary.Sound			= Sound("mac_bo2_exec.Single")		-- script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("mac_bo2_shotgun.Silenced")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 468		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip		= 75	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.8	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 
SWEP.ShellTime			= .55

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.AllowReRollAtts = true
SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= NZCoDDMG(57.5)	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .020	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

SWEP.Ispackapunched = 0
-- function SWEP:PreDrawViewModel( vm )
-- if self.Ispackapunched == 1 then
-- 		self.Owner:GetViewModel():SetSubMaterial(1, "bo2/zombie/pap_camo.vmt")
-- else
-- 		self.Owner:GetViewModel():SetSubMaterial(1, nil)
-- end
-- end
SWEP.SubMats = {2}

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 40

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.201, 0, 0)
SWEP.SightsAng = Vector(-0.5, -0.101, 0)
SWEP.RunSightsPos = Vector()
SWEP.RunSightsAng = Vector()
SWEP.InspectPos = Vector(10.437, -7.771, 0)
SWEP.InspectAng = Vector(14.399, 43.299, 14.855)
SWEP.IronSightsPos_RDS = Vector(-2.131, 0, -0.788)
SWEP.IronSightsAng_RDS = Vector(-0.5, 0.1, 0)

SWEP.VElements = {
	["bo2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "bo2_rds", pos = Vector(1.521, -0.181, 1.36), size = { x = 0.287, y = 0.287 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["bo2_rds"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_pistolsight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0.629, 0.159, 3.746), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["bo2_sil"] = { type = "Model", model = "models/weapons/_bo2_attach/mac_bo2_pistolsil.mdl", bone = "tag_weapon", rel = "", pos = Vector(17.743, 0.129, 1.929), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }

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
	[6] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"sg_slug","sg_frag"}
	}

}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"

	self.Primary.Damage = NZCoDDMG(152.5)
        self.Primary.NumShots = 12
	self.Ispackapunched = 1
	self.Primary.ClipSize = 5
	self.Primary.MaxAmmo = 100
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
        Up = 1,
        Right = 1,
        Forward = -13,
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