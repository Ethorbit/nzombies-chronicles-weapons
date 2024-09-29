SWEP.UseHands				= true
SWEP.Type				= "Sniper Rifle"
SWEP.FireModeName = "Bolt-Action"
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.NZPaPName = "5C0P30F7H3D34D"
SWEP.Category				= "CoD4 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "R700"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 25			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "rpg"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.ScopeLegacyOrientation = true

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_cod4_r700.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_cod4_r700.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_3dscoped_base"
SWEP.Shotgun			= true
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("robotnik_cod4_m40a3.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 500		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6			-- Size of a clip
SWEP.Primary.DefaultClip		= 48	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.8	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 
SWEP.ShellTime			= .5

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= NZCoDDMG(218)	-- Base damage per bullet
SWEP.Primary.DamageHeadshot = 8
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-4.219, 0, 1.52)
SWEP.SightsAng = Vector(0.8, 0.5, 0)
SWEP.RunSightsPos = Vector( )
SWEP.RunSightsAng = Vector( )
SWEP.InspectPos = Vector(4.264, -4.226, 0.488)
SWEP.InspectAng = Vector(11.6, 38.4, 7.927)
SWEP.IronSightsPos_ACOG = Vector(-4.228, -3.096, 1.159)
SWEP.IronSightsAng_ACOG = Vector(1.6, 0.3, 0)

SWEP.VElements = {
	["original_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "", pos = Vector(-10.117, -0.002, 3.309), angle = Angle(0, 180, 0), size = Vector(0.266, 0.266, 0.266), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, active = true },
	["cod4_acog_rtcircle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "tag_weapon", rel = "cod4_acog", pos = Vector(-3.888, -0.11, 1.299), angle = Angle(0, 180, 0), size = Vector(0.305, 0.305, 0.305), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {},active = false },
	["cod4_acog"] = { type = "Model", model = "models/weapons/_cod4_attach/robotnik_cod4_acog.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.217, 0.098, 2.299), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false }
}

--nzombies stuff
SWEP.Primary.MaxAmmo = 48
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
	self.Primary.Damage = NZCoDDMG(465)
	self.Ispackapunched = 1
	self.Primary.ClipSize = 9
	timer.Simple(0.1, function()
		self:SetClip1(9)
	end)
	self.SequenceRateOverride = {[ACT_VM_RELOAD] = 3, [ACT_VM_RELOAD_EMPTY] = 3} --Like above but changes animation length to a target
	self.SequenceRateOverrideScaled = {[ACT_VM_RELOAD] = 3, [ACT_VM_RELOAD_EMPTY] = 3} --Like above but scales animation length rather than being absolute
	self.Primary.MaxAmmo = 117
    self.Primary.DamageHeadshot = 11
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
		atts = {"cod4_acog"}
	},
	[5] = {
		header = "Ammo",
		offset = {0, 0},
		atts = {"am_match","am_magnum"}
	}

}
SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 0,
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
SWEP.PumpAction = {
	["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
	["value"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
}
local ceedee = {}

SWEP.RTMaterialOverride = -1 --the number of the texture, which you subtract from GetAttachment

SWEP.RTOpaque = true

local g36
if surface then
	g36 = surface.GetTextureID("scope/gdcw_scopesight") --the texture you vant to use
end
SWEP.Secondary.ScopeZoom = 8 --IMPORTANT BIT
SWEP.RTScopeAttachment = 0
SWEP.ScopeAngleTransforms = {}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}



SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}