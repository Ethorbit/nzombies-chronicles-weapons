if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_spiker_swep" )
		
	killicon.Add( "tfa_h3_spiker_swep", "vgui/hud/h3_spiker_swep", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun 					= ("tfa_h3_spiker_swep") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] Halo 3"
SWEP.Author					= "Stan"
SWEP.Contact				= "Don't"
SWEP.Purpose				= "Finish the fight..."
SWEP.Instructions			= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Type-25 Carbine"		-- Weapon name (Shown on HUD)	
SWEP.Slot					= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight					= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true	-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 40
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_smg_spikerh3.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.UseHands				= true
SWEP.ShowWorldModel         = false
SWEP.Base 					= "tfa_bash_base"
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(-0.443, 0, 0), angle = Angle(8.461, 25.983, 0) },
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-32.535, 14.664, 0) },
	["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(4.38, 15.965, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(6.112, -18.23, -5.468) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 16.635, 0) },
	["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.09, 0), angle = Angle(7.548, -1.621, -16.439) },
	["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(-0.159, -0.149, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(4.298, 0.672, -2.119), angle = Angle(1.404, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.057, -0.332, -0.072), angle = Angle(4.335, -21.149, 0) },
	["ValveBiped.Bip01_R_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(13.621, 12.791, 0) },
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(-2.128, 0.652, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(-0.208, 0, 0), angle = Angle(-1.384, 33.137, -29.048) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(8.439, -23.195, -8.568) }
}

SWEP.Spawnable					= true
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil		
SWEP.Primary.RPM				= 480		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 40		-- Size of a clip
SWEP.Primary.DefaultClip		= 120	-- Bullets you start with
SWEP.Primary.KickUp				= 0.501				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.14			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.221	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true	-- Automatic/Semi Auto
SWEP.Primary.Ammo				= "357"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70	-- How much you 'zoom' in. Less is more!

SWEP.Secondary.ScopeZoom		= 5	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 1.2
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 30	--base damage per bullet
SWEP.Primary.Spread		= 0.0241	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.00912 -- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax 	= 2.401 		--How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 2.49			--What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 5.6012 		--How much the spread recovers, per second.

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.361, -6.982, -0.16)
SWEP.IronSightsAng = Vector(-0.015, 1.539, 0)

SWEP.RunSightsPos = Vector(0, -5.964, -9.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/spiker.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.322, 1.363, -0.777), angle = Angle(180, -89.125, 14.458), size = Vector(1.041, 1.041, 1.041), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.AmmoTypeStrings	= {["357"] = "Superheated Metallic Spikes"}
SWEP.Type = "Spiker"

SWEP.DisableChambering = true

SWEP.MuzzleFlashEffect = "spike_muzzle1"
SWEP.TracerName = "spike1"
SWEP.TracerCount = 1
SWEP.ImpactEffect = "spike_hit1"

SWEP.Secondary.BashDamage = 50
SWEP.Secondary.BashSound = nil

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("spiker/spike_rifle"..math.random(1,6)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

local l_CT = CurTime
local sp = game.SinglePlayer()
function SWEP:AltAttack(...)
	if self:GetStat("Secondary.CanBash") == false then return end
	if not self:OwnerIsValid() then return end
	if l_CT() < self:GetNextSecondaryFire() then return end
	local stat = self:GetStatus()
	if ( not TFA.Enum.ReadyStatus[stat] ) and not self.Secondary.BashInterrupt then return end
	if ( stat == TFA.Enum.STATUS_BASHING ) and self.Secondary.BashInterrupt then return end
	if self:IsSafety() then return end
	if self:GetHolding() then return end
	local enabled, act = self:ChooseBashAnim()

	if not enabled then return end

	self:EmitSoundNet(Sound("spiker/spike_melee"..math.random(1,3)..".wav"))
	return BaseClass.AltAttack(self,...)
end

function SWEP:BashAnim(...)
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:ViewPunch(Angle(3,8,0))
	return BaseClass.BashAnim(self,...)
end