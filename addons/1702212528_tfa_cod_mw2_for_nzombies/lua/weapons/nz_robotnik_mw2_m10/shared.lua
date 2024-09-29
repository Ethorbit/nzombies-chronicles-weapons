SWEP.Blowback_Shell_Effect = "ShotgunShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG   
SWEP.LuaShellEject	= true 
SWEP.UseHands				= true
SWEP.Category				= "CoD MW2 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M1014"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 25			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.NZPaPName = "nu7sh07"
SWEP.Primary.Knockback = 0

SWEP.Primary.DamageRange = NZCoDRange(8)

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_mw2_m1014.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_mw2_m1014_new.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.AllowReRollAtts = true
SWEP.VMMultX = 1.1
SWEP.Primary.Sound			= Sound("robotnik_mw2_m1014.Single")		-- script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_mw2_shotgun.Silenced")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 350		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8 		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 12		-- Size of a clip
SWEP.Primary.DefaultClip		= 56		-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 2			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1			-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 
SWEP.ShellTime			= .5

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 80	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .020	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

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

SWEP.Primary.MaxAmmo = 95

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.106, -3.921, 1.5)
SWEP.SightsAng = Vector(0.2, 0, 0)
SWEP.RunSightsPos = Vector()
SWEP.RunSightsAng = Vector()
SWEP.InspectPos = Vector(2.941, -1.589, 2.16)
SWEP.InspectAng = Vector(-0.5, 14.5, 12.199)
SWEP.IronSightsPos_RDS = Vector(-3.12, 0, 0.8)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)
SWEP.IronSightsPos_HOL = Vector(-3.132, -3.401, 0.759)
SWEP.IronSightsAng_HOL = Vector(-0.201, 0, 0)


SWEP.VElements = {
	["mw2_sil"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_silencer.mdl", bone = "tag_weapon", rel = "", pos = Vector(24.381, 0, -0.477), angle = Angle(0, 0, 0), size = Vector(0.657, 0.657, 0.657), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false },
	["mw2_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "mw2_rds", pos = Vector(1.149, 0, 1.208), size = { x = 0.19, y = 0.19 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active= false },
	["mw2_rds"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0.009, 1.692), angle = Angle(0, 0, 0), size = Vector(0.474, 0.474, 0.474), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false  },
	["mw2_holo_sprite"] = { type = "Sprite", sprite = "cw2/reticles/eotech_reddot", bone = "tag_weapon", rel = "mw2_holo", pos = Vector(-0.908, 0.019, 1.279), size = { x = 0.131, y = 0.131 }, color = Color(255, 0, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active= false },
	["mw2_holo"] = { type = "Model", model = "models/weapons/_mw2_attach/robotnik_mw2_holo.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0.009, 1.692), angle = Angle(0, 0, 0), size = Vector(0.474, 0.474, 0.474), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active= false  }

}

SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"mw2_rds","mw2_holo"}
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"mw2_sil"}
	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"sg_slug","sg_frag","mw2_fmj","mw2_xtendedmag"}
	}

}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"

	self.Ispackapunched = 1
	self.Primary.Damage = 120
	self.Primary.ClipSize = 12
	self.Primary.MaxAmmo = 115
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

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}
SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 3,
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