--redacted
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "Bigwigian Tribe"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Thunder Rifle"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPReplacement			= "nz_tribal_sniper_pap"	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 56			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_shotgun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_annabelle.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("^npc/sniper/echo1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 45		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip			= 25	-- Bullets you start with
SWEP.Primary.Knockback = 0
SWEP.Primary.KickUp			= .1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.MaxAmmo 			= 25

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false

SWEP.data 				= {}
SWEP.data.ironsights			= 1

SWEP.TracerName = "AirboatGunHeavyTracer"
SWEP.TracerCount 		= 1

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 120	--base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2.5
SWEP.Primary.Spread		= .0001	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns

SWEP.DoMuzzleFlash = false
SWEP.MuzzleFlashEffect = nil

SWEP.ScopeScale = 0.7

SWEP.IronSightsPos = Vector(-8.521, -6.321, 3.96)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-8.521, -6.321, 3.96)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(9.027, -15.131, 0)
SWEP.RunSightsAng = Vector(-2.777, 70, 0)

SWEP.Secondary.IronFOV			= 10

SWEP.VElements = {
	["rim"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.481, -2.333, -19), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.09), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["scopeback+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-0.245, -2.291, -0.853), angle = Angle(0, 0, 180), size = Vector(0.019, 0.014, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["scopebar"] = { type = "Model", model = "models/mechanics/solid_steel/i_beam_4.mdl", bone = "ValveBiped.Pump", rel = "", pos = Vector(0.079, -0.732, -4.689), angle = Angle(0, -90, 0), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["spear"] = { type = "Model", model = "models/props_junk/harpoon002a.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-0.634, 1.751, 20.158), angle = Angle(91.327, 0, -180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scopelook++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.469, -2.306, -19.025), angle = Angle(0, 0, 0), size = Vector(0.128, 0.128, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "debug/env_cubemap_model", skin = 0, bodygroup = {} },
	["scopeback"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.488, -2.293, -15), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/props_phx/gears/rack9.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.162, 0, -9.546), angle = Angle(1.389, 0, -90.858), size = Vector(0.174, 0.174, 0.174), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["frontsight"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-0.588, -0.709, 19.965), angle = Angle(0, 0, -180), size = Vector(0.202, 0.202, 0.202), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["fronthook"] = { type = "Model", model = "models/props_junk/meathook001a.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(2.2, 0, 22.679), angle = Angle(-152.17, -86.37, 90), size = Vector(0.167, 0.321, 0.167), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["fronthook+"] = { type = "Model", model = "models/props_junk/meathook001a.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-3.622, 0.233, 23.781), angle = Angle(147.432, 92.016, 90), size = Vector(0.167, 0.321, 0.167), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scopelook+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-0.183, -2.392, 1.623), angle = Angle(0, 0, 0), size = Vector(0.135, 0.09, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["scopebar+"] = { type = "Model", model = "models/mechanics/solid_steel/i_beam_4.mdl", bone = "ValveBiped.Pump", rel = "", pos = Vector(0.238, -0.653, -10), angle = Angle(0, -90, 0), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.4, -2.289, -15.697), angle = Angle(2.325, 0, 0), size = Vector(0.068, 0.068, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_annabelle.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-1.017, 3.006, 0.153), angle = Angle(-97.455, 90, -8.336), size = Vector(1.297, 1.297, 1.297), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scopelook"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.469, -2.306, -19), angle = Angle(0, 0, 0), size = Vector(0.135, 0.135, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.806, 8.18, -7.568) },
	["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -33.812, 0) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -18.258, 0) },
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 22.187, 0) },
	["ValveBiped.Bip01_R_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -34.302, 0) },
	["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-32.72, -51.574, 0) },
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-1.487, 4.362, 18.104), angle = Angle(22.28, -60.567, 34.377) },
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -52.16, 0) },
	["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-18.236, -30.3, 7.758) },
	["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-19.15, -40.23, -8.495) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 24.038, 0) }
}

SWEP.WElements = {
	["scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.681, 1.672, -5.43), angle = Angle(-98.858, 0, 0), size = Vector(0.092, 0.092, 0.216), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:PrimaryAttack()

	if !self:CanPrimaryAttack() then return end
	self.Owner:EmitSound( "npc/sniper/sniper1.wav", 0 )
	BaseClass.PrimaryAttack(self)
	self:EmitSound( "^npc/sniper/echo1.wav", 511 )

end