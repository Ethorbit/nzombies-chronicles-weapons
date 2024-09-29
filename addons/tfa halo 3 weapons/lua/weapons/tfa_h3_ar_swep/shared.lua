if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "VGUI/hud/tfa_h3_ar_swep" )
	
	killicon.Add( "tfa_h3_ar_swep", "vgui/hud/tfa_h3_ar_swep", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun 						= ("tfa_h3_ar_swep") -- must be the name of your swep but NO CAPITALS!
SWEP.Category					= "[TFA] Halo 3"
SWEP.Author						= "Stan"
SWEP.Contact					= "Don't"
SWEP.Purpose					= "Finish the fight..."
SWEP.Instructions				= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment		= "2" 		-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName					= "MA5C"	-- Weapon name (Shown on HUD)	
SWEP.Slot						= 2			-- Slot in the weapon selection menu
SWEP.SlotPos					= 4			-- Position in the slot
SWEP.AutoDetectMuzzleAttachment = false
SWEP.DrawAmmo					= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair				= true		-- set false if you want no crosshair
SWEP.Weight						= 30		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo				= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom				= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 					= "ar2"		-- how others view you carrying the weapon
SWEP.XHair						= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction					= false
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/halo_3_ar_rifle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.ShowWorldModel         = false
SWEP.Base 					= "tfa_bash_base"
SWEP.UseHands				= true
SWEP.ViewModelBoneMods 		= {
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.505, 12.767, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.35, 0.595, -0.654), angle = Angle(0, 0, 0) },
	["bolt"] = { scale = Vector(0.824, 0.824, 0.824), pos = Vector(0, 0, -0.426), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2.323, 0.488, 12.692) },
	["mag"] = { scale = Vector(1, 1, 1), pos = Vector(0.089, 0.05, 0.328), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.202, 9.772, 0) },
	["body"] = { scale = Vector(0.939, 0.939, 0.939), pos = Vector(-2.406, 1.121, 0.27), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -1.826, 0) }
}

SWEP.Spawnable					= true
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil -- script that calls the primary fire sound
SWEP.Primary.SilencedSound 		= Sound("")
SWEP.Primary.RPM				= 650		-- This is in Rounds Per Minute
SWEP.DisableChambering 			= true
SWEP.Primary.ReloadSound		= Sound("assault_rifle/assault_"..math.random(1,2)..".wav")
SWEP.Primary.ClipSize			= 32		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.05		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false

--[[SWEP.Secondary.ScopeZoom		= 1.1	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false--]]

SWEP.AmmoTypeStrings	= {["ar2"] = "M118 7.62x51mm FMJ-AP"}
SWEP.Type = "Assault Rifle"

SWEP.ScopeScale 			= 0.4
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots		= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage			= 20	--base damage per bullet
SWEP.Primary.Spread			= 0.03	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy 	= 0.01 -- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax 	= 3.8 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 0.21 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 1.592 --How much the spread recovers, per second.

-- enter iron sight info and bone mod info below

SWEP.Secondary.IronFOV		= 60	-- How much you 'zoom' in. Less is more!

SWEP.data 					= {}
SWEP.data.ironsights		= 1

SWEP.IronSightsPos = Vector(-3.641, 0, -0.801)
SWEP.IronSightsAng = Vector(0, -1.451, 0)

SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.MuzzleFlashEffect = "h3_ar_muzzle"

SWEP.VElements = {
	["numbers"] = { type = "Quad", bone = "body", rel = "", pos = Vector(-1.578, 0.052, 7.364), angle = Angle(-180, 89.846, -58.662), size = 0.00575, draw_func = nil}
}

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/ar.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.814, 0.989, -3.757), angle = Angle(1.626, 90.38, -166.256), size = Vector(1.228, 1.228, 1.228), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Secondary.BashDamage = 50
SWEP.Secondary.BashSound = nil

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Initialize()
	BaseClass.Initialize( self )

	if CLIENT then
		self.VElements["numbers"].draw_func = function( weapon )
			local clip = weapon:Clip1()
			local display = "32"
			if clip < 10 then 
				display = "0"..clip
			else
				display = clip
			end
			draw.SimpleText(display, "Halo3WepAmmo", 0, 0, Color(0,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
		end
	end
end

local sp = game.SinglePlayer()
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("assault_rifle/ar_fire_"..math.random(1,3)..".wav"))
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




--[[function SWEP:DetectionHUD(trace)

	if trace.Entity and trace.Entity:IsNPC() || trace.Entity:IsPlayer() then
		color = Color(255,0,0,255)
	else
		color = Color( 0, 161, 255, 255 )
	end
	
	surface.SetTexture(surface.GetTextureID("crosshairs/ar_h3"))
	surface.SetDrawColor( color )
	surface.DrawTexturedRect( ScrW()/2 - 41, ScrH()/2 - 41, 80, 80 )

end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:DrawHUD( ... )

	if self.Owner:InVehicle() then return end

	local Trace = {}
	Trace.start = self.Owner:GetShootPos()
	Trace.endpos = Trace.start + (self.Owner:GetAimVector() * 1800)
	Trace.filter = { self.Owner, self.Weapon, 0 }
	Trace.mask = MASK_SHOT
	local tr = util.TraceLine(Trace)
	
	if self.InspectingProgress < 0.25 then
		self:DetectionHUD(tr)
	end
    
    return BaseClass.DrawHUD(self,...)
end--]]