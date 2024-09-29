if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/hud/h3_rocket_launcher" )
	
	killicon.Add( "tfa_h3_rocket_launcher", "vgui/hud/h3_rocket_launcher", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun 						= ("nz_h3_rocket_launcher_pap") -- must be the name of your swep but NO CAPITALS!
SWEP.Category					= "[TFA] [NZ PAP] Halo 3"
SWEP.Author						= "Stan"
SWEP.Contact					= "Don't"
SWEP.Purpose					= "Forward Unto Dawn."
SWEP.Instructions				= "Point and shoot at any alien son of a bitch"
SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment		= "2" 		-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName					= "Ark's Keyes"	-- Weapon name (Shown on HUD)
SWEP.NZPaPName					= "Ark's Keyes"
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
SWEP.HoldType 					= "rpg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.ViewModelBoneMods = {
	["grip"] = { scale = Vector(1, 1, 1), pos = Vector(1.478, -0.299, 1.789), angle = Angle(0, 0, 0) }
}

SWEP.ViewModelFOV				= 40
SWEP.ViewModelFlip				= false
SWEP.ViewModel					= "models/weapons/halo_3_rocket_launcher.mdl"	-- Weapon view model
SWEP.WorldModel					= "models/rocket.mdl"	-- Weapon world model
SWEP.UseHands					= true
SWEP.ShowWorldModel				= false
SWEP.Base 						= "tfa_gun_base"
SWEP.Scoped						= true

    SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, "techh3/invis_t")
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, self.nzPaPCamo)
            vm:SetSubMaterial(4, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, "techh3/invis_t")
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, nil)
        end
    end
	
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= true

SWEP.Primary.Sound				= nil		-- script that calls the primary fire sound
SWEP.Primary.SilencedSound 		= nil
SWEP.Primary.RPM				= 200		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 4			-- Size of a clip
SWEP.Primary.DefaultClip		= 24		-- Bullets you start with
SWEP.Primary.KickUp				= 0.25			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0055		-- Maximum up recoil (stock)
SWEP.Primary.Knockback          = 0
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo				= "rpg_round"	
SWEP.Primary.MaxAmmo 			= 24

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.SelectiveFire		= true
SWEP.CanBeSilenced		= true
SWEP.AmmoTypeStrings	= {["rpg_round"] = "102mm High-Explosive Anti-Tank"}

SWEP.Primary.Round 			= ("tfa_halo2_aniv_rocket")

SWEP.DisableChambering = true
SWEP.DisableIdleAnimations = false

SWEP.Secondary.ScopeZoom			= 2
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.Secondary.ScopeTable = {
	scopetex = surface and surface.GetTextureID("crosshairs/rocket") or 0,
	reticletex = surface and surface.GetTextureID("scopes/halo3_rocket_scope") or 0
}
SWEP.ScopeScale 			= 0.15
SWEP.ReticleScale 			= 1.6

SWEP.ProjectileEntity = "tfa_h3_rpg" --Entity to shoot
SWEP.ProjectileVelocity = 5000 --Entity to shoot's velocity
SWEP.ProjectileModel = "models/items/ar2_grenade.mdl" --Entity to shoot's model

SWEP.MuzzleFlashEffect = "h3_rocket_muzzle"

SWEP.data 				= {}
SWEP.data.ironsights		= 1

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 1000	--base damage per bullet
SWEP.Primary.Spread		= 0.001	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector(-2.573, -14.82, 0.79)
SWEP.IronSightsAng = Vector(0, 0.583, 0)
SWEP.RunSightsPos = Vector(0, 0.412, 3.516)
SWEP.RunSightsAng = Vector(-14.152, -1.492, -1.239)

SWEP.Type = "Rocket Launcher"

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/rocket.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.185, 1.368, -3.904), angle = Angle(180, -83.346, 5.611), size = Vector(1.205, 1.205, 1.205), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if IsFirstTimePredicted() and not ( sp and CLIENT ) then
		if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitSound(Sound("rocket launcher/rocket_h3_"..math.random(1,4)..".wav"))
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("h2an/rocket_launcher/rocket_launcher_zoom_in.wav")
	end
	
	if self.Owner:KeyReleased(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("h2an/rocket_launcher/rocket_launcher_zoom_out.wav")
	end	
end