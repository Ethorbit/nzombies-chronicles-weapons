if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_odst_socom" )
	
	killicon.Add( "tfa_h3_odst_socom", "vgui/hud/h3_odst_socom", color_white )
end

-- Variables that are used on both client and server
SWEP.Gun 						= ("tfa_h3_odst_socom") -- must be the name of your swep but NO CAPITALS!
SWEP.Category					= "[TFA] Halo 3"
SWEP.Author						= "Stan"
SWEP.Contact					= "Don't"
SWEP.Purpose					= "Finish the fight..."
SWEP.Instructions				= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment			= "1" 			-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment		= "2" 			-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName					= "M6S"			-- Weapon name (Shown on HUD)	
SWEP.Slot						= 2				-- Slot in the weapon selection menu
SWEP.SlotPos					= 4				-- Position in the slot
SWEP.DrawAmmo					= true			-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false			-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= false			-- Should the weapon icon bounce?
SWEP.DrawCrosshair				= true			-- Set false if you want no crosshair from hip
SWEP.Weight						= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo				= true			-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom				= true			-- Auto switch from if you pick up a better weapon
SWEP.XHair						= true			-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction					= false			-- Is this a bolt action rifle?
SWEP.HoldType 					= "revolver"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV				= 70
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/halo_3_magnum_socom.mdl"	-- Weapon view model
SWEP.WorldModel					= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.UseHands					= true
SWEP.ShowWorldModel         	= false
SWEP.Base 						= "tfa_gun_base"
SWEP.ViewModelBoneMods = {
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(-17.257, 1.636, -0.565), angle = Angle(-3.984, 3.756, -4.073) }
}

SWEP.Spawnable					= true
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 360		-- This is in Rounds Per Minute
SWEP.DisableChambering 			= true
SWEP.Primary.ReloadSound		= Sound("magnum/magnum_reload.wav")
SWEP.Primary.ClipSize			= 12			-- Size of a clip
SWEP.Primary.DefaultClip		= 60		-- Bullets you start with
SWEP.Primary.KickUp				= 0.623		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.212		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.341		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo				= "pistol"		-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DefaultSilenced			= true
SWEP.ShellTime			= .5

SWEP.Scoped 						= true

SWEP.data 							= {}
SWEP.data.ironsights				= 1

if CLIENT then
	SWEP.Secondary.ScopeTable = {
		scopetex = surface and surface.GetTextureID("scopes/halo3_magnum") or 0,
		reticletex = surface and surface.GetTextureID("crosshairs/magnum12") or 0
	}
	SWEP.ScopeScale 				= 1
	SWEP.ReticleScale 				= 0.2
end

SWEP.Secondary.UseACOG				= false -- Choose one scope type
SWEP.Secondary.UseMilDot			= false	-- I mean it, only one
SWEP.Secondary.UseSVD				= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic			= false
SWEP.Secondary.UseElcan				= false
SWEP.Secondary.UseGreenDuplex		= false
SWEP.Secondary.UseAimpoint			= false
SWEP.Secondary.UseMatador			= false

SWEP.AmmoTypeStrings	= {["pistol"] = "12.7x40mm M225 SAP-HE"}
SWEP.Type = "M6C/SOCOM Magnum"


SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 32	--base damage per bullet
SWEP.Primary.Spread		= 0.0145	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.007124 -- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax 	= 1.8 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 0.31 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 0.592 --How much the spread recovers, per second.

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector(-2.573, -14.82, 0.79)
SWEP.IronSightsAng = Vector(0, 0.583, 0)
SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.InspectPos 					= Vector(15.519, -8.502, 1)
SWEP.InspectAng 					= Vector(36.583, 53.466, 34.472)

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/automag.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.995, 1.97, -0.638), angle = Angle(176.33, -93.298, 6.561), size = Vector(0.968, 0.968, 0.968), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(Sound("magnum h3 socom/magnum_silenced"..math.random(1,4)..".wav"))
		else
			self:EmitSound(Sound("magnum h3 socom/magnum_silenced"..math.random(1,4)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("battle_rifle/dmr_zoom_in.wav")
	end
	
	if self.Owner:KeyReleased(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("battle_rifle/dmr_zoom_out.wav")
	end	
end