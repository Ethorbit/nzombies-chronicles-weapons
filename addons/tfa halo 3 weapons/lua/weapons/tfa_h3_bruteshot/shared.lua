if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_bruteshot" )
		
	killicon.Add( "tfa_h3_bruteshot", "vgui/hud/h3_bruteshot", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun 						= ("tfa_h3_bruteshot") -- must be the name of your swep but NO CAPITALS!
SWEP.Category					= "[TFA] Halo 3"
SWEP.Author						= "Stan"
SWEP.Contact					= ""
SWEP.Purpose					= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment		= "2" 		-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName					= "Type-25 Grenade Launcher"		-- Weapon name (Shown on HUD)	
SWEP.Slot						= 2			-- Slot in the weapon selection menu
SWEP.SlotPos					= 4			-- Position in the slot
SWEP.DrawAmmo					= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair				= true		-- Set false if you want no crosshair from hip
SWEP.Weight						= 30		-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo				= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom				= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair						= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction					= false		-- Is this a bolt action rifle?
SWEP.HoldType 					= "shotgun"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV				= 40
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/halo_3_bruteshot.mdl"	-- Weapon view model
SWEP.WorldModel					= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.ShowWorldModel         	= false
SWEP.UseHands					= true
SWEP.Base 						= "tfa_bash_base"

SWEP.ViewModelBoneMods = {
	["bipod"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-22.129, 0, 0) },
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(-4.011, 1, -0.502), angle = Angle(0, 0, 0) }
}

SWEP.Spawnable					= true
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil 			-- script that calls the primary fire sound
SWEP.Primary.RPM				= 240		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip		= 120	-- Bullets you start with
SWEP.Primary.KickUp				= 0.1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.0			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.01	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo				= "slam"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Primary.NumShots			= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 170		--base damage per bullet
SWEP.Primary.Spread				= 0.01		--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy 		= 0.01 	-- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax 	= 0.05 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 0.05 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 0.05 --How much the spread recovers, per second.

SWEP.Primary.Round 				= nil
SWEP.DisableChambering 			= true

-- enter iron sight info and bone mod info below

SWEP.Secondary.IronFOV		= 60	-- How much you 'zoom' in. Less is more! 	

SWEP.data 					= {}
SWEP.data.ironsights		= 0

SWEP.IronSightsPos = Vector(-9.641, 20, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/brute_shot.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.972, -0.188, 5.221), angle = Angle(-12.525, 90.983, 137.893), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.AmmoTypeStrings	= {["slam"] = "Type-25 Exotic/High-Explosive Antipersonnel Grenade"}
SWEP.Type = "Bruteshot"

SWEP.ProjectileEntity = "tfa_bruteshot_ent" --Entity to shoot
SWEP.ProjectileVelocity = 5000 --Entity to shoot's velocity
SWEP.ProjectileModel = nil --Entity to shoot's model
SWEP.MuzzleFlashEffect = "spike_muzzle1"

SWEP.Secondary.BashDamage = 50
SWEP.Secondary.BashSound = nil

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("bruteshot/bruteshot_fire"..math.random(1,4)..".wav"))
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

	self:EmitSoundNet(Sound("bruteshot/fp_cr_melee10"..math.random(1,3)..".wav"))
	return BaseClass.AltAttack(self,...)
end

function SWEP:BashAnim(...)
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:ViewPunch(Angle(3,8,0))
	return BaseClass.BashAnim(self,...)
end
