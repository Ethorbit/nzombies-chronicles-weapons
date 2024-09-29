SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-4,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = false --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.UseHands				= true
SWEP.Type					= "Rocket Launcher"
SWEP.DisableChambering = true
SWEP.FireModeName = "Single Shot Launcher"
SWEP.NZPaPName = "AT115 HS"
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD MW2 nzombies"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "AT4"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.VMMultX = 0.6
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_mw2_at4_new.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_mw2_at4_new.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mw2_at4_new.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 100			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 10		-- Bullets you start with
SWEP.Primary.KickUp				= 3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "AirboatGun"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.ProjectileEntity = "tfa_exp_contact" --Entity to shoot
SWEP.ProjectileVelocity = 99999 --Entity to shoot's velocity
SWEP.ProjectileRadius = NZCoDRadius(4.5)

SWEP.Secondary.IronFOV			= 90		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.FireModes = {
	"Single"
}
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 1500	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

function SWEP:NZMaxAmmo() -- fonction pour les achats de balles et "munition max"

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 10 -- nombre de balles en réserve

SWEP.Ispackapunched = 0 -- info pour le camouflage du pack a punch
function SWEP:PreDrawViewModel( vm ) -- fonction pour mettre le camouflage du pack a punch
	if self.Ispackapunched == 1 then
		self.Owner:GetViewModel():SetSubMaterial(0, "models/xqm/lightlinesred_tool.vmt")
	else
		self.Owner:GetViewModel():SetSubMaterial(0, nil)
	end
end

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Ispackapunched = 1 -- info pour le camouflage du pack a punch
	self.Primary.Damage = 2300 -- changement des dégats pour le pack a punch
	self.Primary.ClipSize = 3 -- changement du chargeur pour le pack a punch
	self.Primary.MaxAmmo = 30 -- changement des balles en réserve pour le pack a punch
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info beloox
SWEP.SightsPos = Vector(-1.41, -4.449, -0.281) - Vector(0, 0, 0)
SWEP.SightsAng = Vector(11, -12.7, 11.628) -  Vector(9.5, -9, 0)
SWEP.RunSightsPos = Vector (1.205, 0, 0) -  Vector(0, 0, 0)
SWEP.RunSightsAng = Vector (-26.201, 30.5, -24.3) -  Vector(9.5, -9, 0)
SWEP.InspectPos = Vector(10.8, 0, 4) -  Vector(0, 0, 0)
SWEP.InspectAng = Vector(5.699, 21.1, 37.599) - Vector(9.5, -9, 0)
SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(9.5, -9, 0)


SWEP.Offset = {
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 2,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}
if GetConVar("sv_tfa_default_clip") == nil then
	print("sv_tfa_default_clip is missing!  You might've hit the lua limit.  Contact the SWEP author(s).")
else
	if GetConVar("sv_tfa_default_clip"):GetInt() != -1 then
		SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * GetConVar("sv_tfa_default_clip"):GetInt()
	end
end

if GetConVar("sv_tfa_unique_slots") != nil then
	if not (GetConVar("sv_tfa_unique_slots"):GetBool()) then 
		SWEP.SlotPos = 2
	end
end

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}