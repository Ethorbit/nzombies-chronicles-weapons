SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "nil" -- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.NZPaPName = "China Beach"
SWEP.DisableChambering = true
SWEP.LuaShellEjectDelay = 1.6	
SWEP.FireModeName = "Pump-Action"
SWEP.UseHands		= true
SWEP.LuaShellEject	= true
SWEP.Primary.Knockback = 0
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_silenced"
SWEP.Type 			= "Grenade Launcher"
SWEP.Category				= "CoD BO nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "China Lake"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 25			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"	-- how others view you carrying the weapon
SWEP.VMMultX = 1.2

-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.ProjectileEntity = "tfa_exp_contact" 
SWEP.ProjectileVelocity = 9000 --Entity to shoot's velocity
SWEP.ProjectileRadius = NZCoDRadius(7.62)

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo1_chinalake.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo1_chinalake.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("robotnik_bo1_chinalake.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 21		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2			-- Size of a clip
SWEP.Primary.DefaultClip		= 20	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.8	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "AirboatGun"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 90		-- How much you 'zoom' in. Less is more! 
SWEP.ShellTime			= .9

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= NZCoDDMG(650)	-- Base damage per bullet
SWEP.Primary.Spread		= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

function SWEP:NZMaxAmmo() -- fonction pour les achats de balles et "munition max"

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 20 -- nombre de balles en réserve

SWEP.Ispackapunched = 0 -- info pour le camouflage du pack a punch
-- function SWEP:PreDrawViewModel( vm ) -- fonction pour mettre le camouflage du pack a punch
-- 	if self.Ispackapunched == 1 then
-- 		self.Owner:GetViewModel():SetSubMaterial(0, "bo1/zombie/pap_camo.vmt")
-- 	else
-- 		self.Owner:GetViewModel():SetSubMaterial(0, nil)
-- 	end
-- end

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Ispackapunched = 1 -- info pour le camouflage du pack a punch
	self.Primary.Damage = NZCoDDMG(1050) -- changement des dégats pour le pack a punch
	self.Primary.ClipSize = 5 -- changement du chargeur pour le pack a punch
	self.Primary.MaxAmmo = 40 -- changement des balles en réserve pour le pack a punch
	self.Primary.RPM = 30
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.36, -5.401, -1.759)
SWEP.SightsAng = Vector(6.599, 0.3, 0)
SWEP.RunSightsPos = Vector()
SWEP.RunSightsAng = Vector()
SWEP.InspectPos = Vector(6.76, 0, 0.8)
SWEP.InspectAng = Vector(7.099, 31.2, 9.3)



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
        Forward = -1,
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