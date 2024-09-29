
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "2129 Authoritarian Government"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Military Overwatch Rifle"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPReplacement			= "nz_future_overwatch_pap"
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 52			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"
SWEP.DoMuzzleFlash = false
SWEP.MuzzleFlashEffect = nil
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_awp.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/gauss/fire1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 50		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip			= 60	-- Bullets you start with
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.MaxAmmo 			= 60

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom			= 9	
SWEP.Secondary.UseParabolic		= false	-- Choose your scope type, 
SWEP.Secondary.UseACOG			= false
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.TracerCount = 1
SWEP.TracerName = "ToolTracer"

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 145	--base damage per bullet
SWEP.Primary.DamageHeadshot 	= 3
SWEP.Primary.Spread		= .01	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns
SWEP.BoltAction	=	true
-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-4.961, 0, 0.839)
SWEP.IronSightsAng = Vector(3.7, 0, 0)
SWEP.SightsPos = Vector(-4.961, 0, 0.839)
SWEP.SightsAng = Vector(3.7, 0, 0)
SWEP.RunSightsPos = Vector(13.868, -12.744, -2.05)
SWEP.RunSightsAng = Vector(-4.435, 62.558, 0)

SWEP.InspectPos = Vector(14.199, -10.12, -0.84)
SWEP.InspectAng = Vector(8.899, 69.199, 0)

SWEP.VElements = {
	["scope"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(-2.247, -5.974, -4.38), angle = Angle(90, -90, 0), size = Vector(0.337, 0.337, 0.337), color = Color(0, 143, 132, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["top"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, -6.815, -7.206), angle = Angle(-90, 0, 0), size = Vector(0.196, 0.097, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/Gibs/helicopter_brokenpiece_05_tailfan.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(-1.14, -5.032, 14.317), angle = Angle(-90, 90, 0), size = Vector(0.068, 0.068, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, -0.649, 0.804), angle = Angle(121.417, -90, -0.449), size = Vector(0.323, 0.323, 0.323), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0.079, -2.418, 8.361), angle = Angle(0, 90, -180), size = Vector(0.151, 0.034, 0.145), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bolt"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "v_weapon.awm_bolt_action", rel = "", pos = Vector(0, 0.483, 0), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/dav0r/hoverball", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxFlares.mdl", bone = "v_weapon.awm_clip", rel = "", pos = Vector(0, 0.638, -1.691), angle = Angle(0, -90, 0), size = Vector(0.245, 0.316, 0.412), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/dav0r/hoverball", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
