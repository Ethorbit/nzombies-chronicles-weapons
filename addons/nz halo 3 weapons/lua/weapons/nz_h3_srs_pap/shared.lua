if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_sr_swep" )
	
	killicon.Add( "tfa_h3_sr_swep", "vgui/hud/h3_sr_swep", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun = ("nz_h3_srs_pap") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] [NZ PAP] Halo 3"
SWEP.Author					= "Stan"
SWEP.Contact				= "Don't"
SWEP.Purpose				= "Ain't that a bitch?"
SWEP.Instructions			= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Epsilon's Charm"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Epsilon's Charm"
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
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 47
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/halo_3_sniper_rifle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/sniper.mdl"	-- Weapon world model
SWEP.UseHands				= true
SWEP.ShowWorldModel         = false
SWEP.Base 					= "tfa_gun_base"

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

SWEP.Spawnable				= false
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound				= nil		
SWEP.Primary.SilencedSound 		= Sound("")
SWEP.Primary.RPM				= 150		-- This is in Rounds Per Minute
SWEP.Primary.Knockback          = 0
SWEP.Primary.ClipSize			= 3		-- Size of a clip
SWEP.Primary.DefaultClip		= 36	-- Bullets you start with
SWEP.Primary.KickUp				= 0.2				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.0			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0047	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.MaxAmmo 			= 36

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.AmmoTypeStrings	= {["SniperPenetratedRound"] = "14.5x114mm APFSDS"}

SWEP.CanBeSilenced		= false

SWEP.Scoped 					= true

SWEP.Secondary.ScopeZoom		= 6
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.DisableChambering = true

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.9
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 525	--base damage per bullet
SWEP.Primary.DamageHeadshot		= 7.00
SWEP.Primary.Spread		= 0.0045	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.00005 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector(-4.282, -19.073, -0.731)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.Primary.Range 					= 104987 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff 			= 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.CustomMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 					= "h3_sniper_muzzle"

SWEP.TracerName 						= "halo_sniper_bullet_tracer" --Change to a string of your tracer name,or lua effect if chosen
SWEP.TracerCount 						= 1 --0 disables, otherwise, 1 in X chance
SWEP.ImpactEffect 						= "halo_sniper_impact"--Impact Effect

SWEP.VElements = {
	["element_name"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "body", rel = "", pos = Vector(-0.324, 0.61, 3.578), angle = Angle(-37.973, -0.561, 0), size = Vector(0.013, 0.025, 0.013), color = Color(0, 255, 176, 170), surpresslightning = true, material = "models/screenspace", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/sniper.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20.719, 1.309, -6.369), angle = Angle(180, -88.395, 14.696), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

if CLIENT then
	SWEP.Secondary.ScopeTable = {
		scopetex = surface and surface.GetTextureID("scopes/halo3_sniper") or 0,
		reticletex = surface and surface.GetTextureID("crosshairs/sniper_h3") or 0
	}
	SWEP.ScopeScale 			= 0.7
	SWEP.ReticleScale 			= 0.15
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("sniper/sniperfire"..math.random(1,6)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("sniper/zoom_in.wav")
	end
	
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("sniper/zoom_out.wav")
	end	
end