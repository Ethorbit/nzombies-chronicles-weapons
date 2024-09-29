

SWEP.TracerCount = 1
SWEP.TracerName = "tfa_tracer_incendiary"
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= "A cigarette shooting revolver. How does it function? iunno"
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Cigarevolver"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPReplacement			= "nz_ff_cigarevolver_pap"
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 35			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_357.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_357.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.Primary.DamageType = DMG_BURN
SWEP.Primary.Sound			= "weapons/flaregun/fire.wav"		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 80			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip		= 54		-- Bullets you start with
SWEP.Primary.KickUp				= 3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 6	-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "357"
SWEP.Primary.MaxAmmo 			= 54

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.VElements = {
	["bullet+++"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet4", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bullet+"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet2", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bullet++"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet3", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bullet"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet1", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bullet++++"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet5", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["bullet+++++"] = { type = "Model", model = "models/pissedmeoff.mdl", bone = "Bullet6", rel = "", pos = Vector(0, 0, 0.8), angle = Angle(90, 0, 0), size = Vector(0.4, 1.631, 1.631), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.DisableChambering = true

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 118	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 3
SWEP.Primary.Spread		= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-4.68, 0, 0.56)
SWEP.IronSightsAng = Vector(0.3, -0.201, 0.899)
SWEP.SightsPos = Vector(-4.68, 0, 0.56)
SWEP.SightsAng = Vector(0.3, -0.201, 0.899)
SWEP.RunSightsPos = Vector(2.405, -17.334, -15.011)
SWEP.RunSightsAng = Vector(70, 0, 0)

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false