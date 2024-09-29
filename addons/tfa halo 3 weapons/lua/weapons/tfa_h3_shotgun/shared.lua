SWEP.Gun = ("h3_shotgun") -- must be the name of your swep but NO CAPITALS!
if CLIENT then
SWEP.WepSelectIcon		= surface.GetTextureID( "VGUI/hud/h3_shotgun" )
	
	killicon.Add( "tfa_h3_shotgun", "VGUI/hud/h3_shotgun", color_white )
end

-- Variables that are used on both client and server

SWEP.Category				= "[TFA] Halo 3"
SWEP.Author					= "Stan"
SWEP.Contact				= "Don't"
SWEP.Purpose				= "Finish the fight..."
SWEP.Instructions			= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment		= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 		-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M90 CAWS"	-- Weapon name (Shown on HUD)	
SWEP.Slot					= 2			-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight					= 30		-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/halo_3_shotgun_idle_fixed.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"	-- Weapon world model
SWEP.UseHands				= true
SWEP.ShowWorldModel         = false
SWEP.Base 					= "tfa_bash_base"

SWEP.ViewModelBoneMods = {
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(-11.466, 0.537, 1.800), angle = Angle(1.22, 1.286, -1.13) }
}

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound				= nil		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 50		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6			-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 5			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.5		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.5		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.Shotgun 						= true
SWEP.FireModeName 					= "Pump Action"

SWEP.Primary.Range 					= 16*164.042*3 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff 			= 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.ShellTime					= .5

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 

SWEP.Primary.NumShots			= 10		-- how many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 30		-- base damage per bullet
SWEP.Primary.Spread				= 0.06		-- define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy 		= 0.06		-- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax 	= 3.8 		--How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 1.49 	--What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 5.6012 		--How much the spread recovers, per second.

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos 				= Vector(-3.175, 0, 0.36)
SWEP.IronSightsAng 				= Vector(-0.834, -1.578, 0)

SWEP.RunSightsPos 				= Vector(0, 0, -4.54)
SWEP.RunSightsAng 				= Vector(-8.122, 23.347, -18.331)

SWEP.InspectPos 				= Vector(6.298, -4.651, -0.378)
SWEP.InspectAng 				= Vector(23.938, 34.273, 18.905)


SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/shotty.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.708, 0.564, -3.878), angle = Angle(0, 91, -167.538), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


SWEP.LuaShellEffect 	= "ShotgunShellEject"

SWEP.AmmoTypeStrings	= {["buckshot"] = "Soellkraft 8-Gauge Shell"}
SWEP.Type 				= "Shotgun"

SWEP.DisableChambering = true

SWEP.MuzzleFlashEffect = "h3_sniper_muzzle"

SWEP.Secondary.BashDamage = 50
SWEP.Secondary.BashSound = Sound("shotgun/sg_melee"..math.random(1,3)..".wav")

SWEP.DisableIdleAnimations = false

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("shotgun/fire/shotgun_primary_"..math.random(1,3)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Deploy()
    
    self.Weapon:EmitSound("shotgun/sg_ready"..math.random(1,3)..".wav")
    
    BaseClass.Deploy( self )
end