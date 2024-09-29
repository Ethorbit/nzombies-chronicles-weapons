if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_smg_swep_odst" )
	
	killicon.Add( "tfa_h3_smg_swep_odst", "vgui/hud/h3_smg_swep_odst", color_white )
end

-- Variables that are used on both client and server
SWEP.Gun = ("nz_h3_smg_stalker") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] [NZ PAP] Halo 3"
SWEP.Author					= "Stan"
SWEP.Contact				= "Don't"
SWEP.Purpose				= "An example of what was."
SWEP.Instructions			= "Point and shoot at any alien son of a bitch"
SWEP.PrintName				= "Ideal Vista"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Ideal Vista"
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

SWEP.ViewModelFOV				= 62
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/halo_3_smg_odst.mdl"	-- Weapon view model
SWEP.WorldModel					= "models/smg_stalkin.mdl"	-- Weapon world model
SWEP.ShowWorldModel         	= false
SWEP.Base 						= "tfa_gun_base"
SWEP.UseHands					= true
SWEP.ViewModelBoneMods = {
	["body"] = { scale = Vector(1, 1, 1), pos = Vector(-8.648, 0.059, -0.463), angle = Angle(-1.93, 0, 0) }
}

    SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, "techh3/invis_t")
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, self.nzPaPCamo)
            vm:SetSubMaterial(4, nil)
            vm:SetSubMaterial(5, nil)
        else
            vm:SetSubMaterial(0, "techh3/invis_t")
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, nil)
            vm:SetSubMaterial(4, nil)
        end
    end

SWEP.Spawnable					= false
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil		
SWEP.Primary.SilencedSound 		= nil
SWEP.Primary.RPM				= 1170		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 60		-- Size of a clip
SWEP.Primary.Knockback          = 0
SWEP.Primary.DefaultClip		= 360		-- Bullets you start with
SWEP.Primary.KickUp				= 0.045				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.0117			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true	-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.MaxAmmo 			= 360

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Scoped						= true
SWEP.DefaultSilenced			= true

SWEP.Secondary.ScopeZoom		= 2
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
SWEP.Primary.Damage		= 100	--base damage per bullet
SWEP.Primary.DamageHeadshot		= 3
SWEP.Primary.Spread		= 0.0095	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.0075 -- ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax = 2.438 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.1359 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 0.804 --How much the spread recovers, per second.

-- enter iron sight info and bone mod info below

SWEP.data 					= {}
SWEP.data.ironsights		= 1

if CLIENT then
	SWEP.Secondary.ScopeTable = {
		scopetex = surface and surface.GetTextureID("scopes/smg_scope") or 0,
		reticletex = surface and surface.GetTextureID("crosshairs/smg") or 0
	}
	SWEP.ScopeScale 				= 0.8
	SWEP.ReticleScale 				= 0.25
end

SWEP.AmmoTypeStrings		= {["smg1"] = "M443 Caseless FMJ"}

SWEP.Secondary.IronFOV		= 60	-- How much you 'zoom' in. Less is more! 	

SWEP.data 					= {}
SWEP.data.ironsights		= 1

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/halo_3/smg_sil_w.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.197, 0.515, 2.454), angle = Angle(165.759, -0.99, 0), size = Vector(1.062, 1.062, 1.062), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.IronSightsPos = Vector(-3.504, -20, 0.232)
SWEP.IronSightsAng = Vector(0, -2.619, 0)
SWEP.RunSightsPos = Vector(4, -4.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.Secondary.BashDamage = 150
SWEP.Secondary.BashSound = nil

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("smg/smg"..math.random(1,3)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("smg/magnum_zoom_in.wav")
	end
	
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("smg/magnum_zoom_out.wav")
	end	
end