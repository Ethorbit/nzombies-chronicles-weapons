if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "VGUI/hud/tfa_h3_beam_rifle_swep" )
		
	killicon.Add( "tfa_h3_beam_rifle_swep", "vgui/hud/tfa_h3_beam_rifle_swep", color_white )
end

-- Variables that are used on both client and server
SWEP.Gun = ("tfa_h3_beam_rifle_swep") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] Halo 3"
SWEP.Author						= "Stan"
SWEP.Contact					= "Don't"
SWEP.Purpose					= "Finish the fight..."
SWEP.Instructions				= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Type-50 Sniper Rifle System"		-- Weapon name (Shown on HUD)
SWEP.Type					= "Beam Rifle"
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "crossbow"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 45
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/halo_3_beam_rifle.mdl"	-- Weapon view model
SWEP.UseHands				= true
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.ShowWorldModel         = false
SWEP.Base 				= "tfa_scoped_base"

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2.977, 1.07, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-21.284, 3.368, -18.042) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.592, -6.582, 6.415) }
}

SWEP.Primary.SpreadMultiplierMax = 40 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 20 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 20 --How much the spread recovers, per second.

SWEP.DisableChambering = true
SWEP.DisableChamberingDefault = true

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= nil		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 140		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip		= 120	-- Bullets you start with
SWEP.Primary.KickUp				= 0.2				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.AmmoTypeStrings	= {["SniperPenetratedRound"] = "Ionized Hydrogen"}

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false

SWEP.DisableChambering = true

SWEP.Secondary.ScopeZoom			= 7

if CLIENT then
	SWEP.Secondary.ScopeTable = {
		scopetex = surface and surface.GetTextureID("scopes/beam_rifle") or 0,
		reticletex = surface and surface.GetTextureID("crosshairs/beam_reticle") or 0
	}
	SWEP.ScopeScale 			= 2
	SWEP.ReticleScale 			= 1
end

SWEP.ScopeOverlayThreshold  = 0.3

SWEP.MuzzleFlashEffect = "beam_rifle_muzzle"
SWEP.ImpactEffect = "beam_rifle_hit"
SWEP.ImpactDecal  = "fadingscorch"

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.8
SWEP.ReticleScale 			= 0.15

SWEP.TracerCount = 1
SWEP.TracerName = "beam_rifle"

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 100	--base damage per bullet
SWEP.Primary.Spread		= 0.001	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.001 -- ironsight accuracy, should be the same for shotguns

SWEP.IronSightTime = 0.75

-- enter iron sight info and bone mod info below

SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.VElements = {
	["element_name"] = { type = "Model", model = "models/props_combine/combine_fence01a.mdl", bone = "body", rel = "", pos = Vector(17.121, -0.217, 13.581), angle = Angle(-35.496, 1.202, 180), size = Vector(0.059, 0.059, 0.059), color = Color(255, 100, 255, 37), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/h3beamrifle.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.325, 1.368, -2.001), angle = Angle(110.977, -141.314, 52.583), size = Vector(0.912, 0.912, 0.912), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("beam rifle/Beam Rifle Scope In x1.mp3")
	end
	
	if self.Owner:KeyReleased(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("beam rifle/beam Rifle Scope Out.mp3")
	end	
end


local sp = game.SinglePlayer()
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("beam rifle/fire"..math.random(1,4)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end