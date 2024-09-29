if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_smg_swep" )
	
	killicon.Add( "tfa_h3_smg_swep", "vgui/hud/h3_smg_swep", color_white )
end

-- Variables that are used on both client and server
SWEP.Gun = ("nz_h3_smg") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] [NZ PAP] Halo 3"
SWEP.Author					= "Stan"
SWEP.Contact				= "Don't"
SWEP.Purpose				= "ilovebees"
SWEP.Instructions			= "ilovebees"
SWEP.PrintName				= "Beekeeper's Delight"
SWEP.NZPaPName				= "Beekeeper's Delight"		
SWEP.Slot					= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 1			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight					= 30		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV				= 40
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/halo_3_smg.mdl"	-- Weapon view model
SWEP.WorldModel					= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.ShowWorldModel         	= false
SWEP.Base 						= "tfa_bash_base"
SWEP.UseHands					= true
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(6.678, -0.04, -6.47), angle = Angle(-20.132, -24.269, 12.93) },
	["mag"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -0.866), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.345, -0.156, 1.125), angle = Angle(0, 0, 0) },
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.528, -0.755), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-1.649, 0.652, -0.692), angle = Angle(-22.359, 0, 0) }
}

    SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, "techh3/invis_t")
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, self.nzPaPCamo)
        else
            vm:SetSubMaterial(0, "techh3/invis_t")
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, nil)
        end
    end

SWEP.Spawnable					= false
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil		-- script that calls the primary fire sound
SWEP.Primary.SilencedSound 		= nil
SWEP.Primary.RPM				= 1200		-- This is in Rounds Per Minute
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 120		-- Size of a clip
SWEP.Primary.DefaultClip		= 600	-- Bullets you start with
SWEP.Primary.KickUp				= 0.085				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.070			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true	-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.MaxAmmo 			= 600

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom			= 2
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.AllowSprintAttack = false

SWEP.DisableChambering = true

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 90	--base damage per bullet
SWEP.Primary.DamageHeadshot			= 2.4
SWEP.Primary.Spread		= 0.015	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.008 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.data 					= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 1.1
SWEP.ReticleScale 			= 0.6

SWEP.AmmoTypeStrings		= {["smg1"] = "M443 Caseless FMJ"}

SWEP.Secondary.IronFOV		= 60	-- How much you 'zoom' in. Less is more! 	

SWEP.data 					= {}
SWEP.data.ironsights		= 1

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/smg.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.405, 1.389, -1.03), angle = Angle(-101.407, -6.745, 84.292), size = Vector(1.496, 1.496, 1.496), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.IronSightsPos = Vector(-4.788, -4.182, 1.279)
SWEP.IronSightsAng = Vector(0.039, -2.238, 0.81)

SWEP.RunSightsPos = Vector(4, -4.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.MuzzleFlashEffect = "h3_smg_muzzle"

SWEP.Secondary.BashDamage = 150
SWEP.Secondary.BashSound = nil

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("smg/fire"..math.random(1,3)..".wav"))
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

	self:EmitSoundNet(Sound("smg/smg_melee"..math.random(1,3)..".wav"))
	return BaseClass.AltAttack(self,...)
end

function SWEP:BashAnim(...)
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:ViewPunch(Angle(3,8,0))
	return BaseClass.BashAnim(self,...)
end