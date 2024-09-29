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
SWEP.NZPaPName = "Skullcrusher"
SWEP.UseHands	= true
SWEP.DisableChambering = true
SWEP.LuaShellEject	= true
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M16"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/c_bo1_m16a1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_m16a1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.AllowReRollAtts = true
SWEP.VMPos = Vector(0,0,-0.7)

SWEP.Primary.Sound			= Sound("robotnik_bo1_commando.Single")		-- Script that calls the primary fire sound
SWEP.Primary.Sound_SIL			= Sound("robotnik_bo1_commando.Silenced")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 937			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Burst			= 937			-- This is in Rounds Per Minute
SWEP.Primary.RPM_Semi			= 937			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.ClipSize_XM		= 45		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
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
	"3Burst",
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(85)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 4
SWEP.Primary.Spread		= .030	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.Ispackapunched = 0
-- function SWEP:PreDrawViewModel( vm )
-- 	if self.Ispackapunched == 1 then
-- 			self.Owner:GetViewModel():SetSubMaterial(0, "bo1/zombie/pap_camo.vmt")
-- 	else
-- 			self.Owner:GetViewModel():SetSubMaterial(0, "bo1/weapons/m16/m16.vmt")
-- 	end
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
SWEP.SightsPos = Vector(-2.868, -3.76, 0.739)
SWEP.SightsAng = Vector(0.8, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(8.52, 0, 1.879)
SWEP.InspectAng = Vector(4.099, 40.4, 12.5)
SWEP.IronSightsPos_RDS = Vector(-2.889, 0, 0.739)
SWEP.IronSightsAng_RDS = Vector(1.24, 0, 0)
SWEP.IronSightsPos_REF = Vector(-2.921, -2, 1)
SWEP.IronSightsAng_REF = Vector(-0.5, -0.401, 0)
SWEP.IronSightsPos_BO1_ACOG = Vector(-2.746, -2.129, 0.41)
SWEP.IronSightsAng_BO1_ACOG = Vector(1.799, 1.299, 0)

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}


SWEP.VElements = {
	["blops_rds_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_rds", pos = Vector(1.878, -0.06, 1.223), size = { x = 0.132, y = 0.132 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_rds"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_rds.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.764, 0.086, 3.487), angle = Angle(0, 0, 0), size = Vector(0.476, 0.476, 0.476), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_reflex_sprite"] = { type = "Sprite", sprite = "sprites/redglow2", bone = "tag_weapon", rel = "blops_reflex", pos = Vector(-1.917, 0.039, 1.19), size = { x = 0.12, y = 0.12 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false,active = false},
	["blops_reflex"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(1.764, -0.03, 3.487), angle = Angle(0, 0, 0), size = Vector(0.444, 0.444, 0.444), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["blops_acog"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(2.499, 0, 3.411), angle = Angle(0, 0, 0), size = Vector(0.402, 0.402, 0.402), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false  },
	["blops_acog_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "blops_acog", pos = Vector(-2.82, 0, 1.1), angle = Angle(0, 180, 0), size = Vector(0.263, 0.263, 0.263), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false  },
	["blops_sil"] = { type = "Model", model = "models/weapons/_bo1_attach/robotnik_bo1_silreg.mdl", bone = "tag_weapon", rel = "", pos = Vector(26.191, 0, 1.368), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false   }

}


SWEP.Attachments = {
	[3] = {
		header = "Sight",
		offset = {0, 0},
		atts = {"blops_rds","blops_reflex","blops_acog"},
		order = 1,
	},
	[4] = {
		header = "Silencer",
		offset = {0, 0},
		atts = {"blops_sil"},
		order = 2,
	},
	[5] = {
		header = "Mags",
		offset = {0, 0},
		atts = {"blops_xtendedmag_mdl","blops_dualmag"},
		order = 3,
	},
	[2] = {
		header = "ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum"},
		order = 4,
	}
}

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = NZCoDDMG(125)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 30

	self.Primary.MaxAmmo = 270
    self.Primary.DamageHeadshot = 5
	self.FireModes = {"Automatic"}
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

-- function SWEP:FireAnimationEvent(pos, ang, event, options)
-- 	-- Disables animation based muzzle event
-- 	if ( event == 21 ) then return true end	

-- 	--if self.Ispackapunched == 1 then
-- 		-- Disable thirdperson muzzle flash
-- 		if ( event == 5001 ) then
-- 			local data = EffectData()
-- 			data:SetEntity( self.Owner:GetViewModel() )
-- 			data:SetScale(0)
-- 			util.Effect( "GunshipMuzzleFlash", data )
-- 		return true end
-- 	--end

-- end

SWEP.Offset = {
        Pos = {
        Up = 0,
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