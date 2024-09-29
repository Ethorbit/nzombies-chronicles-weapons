
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author = "SweptThrone"
SWEP.Manufacturer = "2129 Authoritarian Government"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Civilian Defender"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPReplacement			= "nz_future_defender_pap"
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 45			-- Position in the slot
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
SWEP.ViewModel				= "models/weapons/c_pistol.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("^npc/turret_floor/shoot" .. math.random(1,3) .. ".wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 300			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 72		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.MaxAmmo 			= 72

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.TracerCount = 1
SWEP.TracerName = "ToolTracer"

SWEP.DisableChambering = true

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 35	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2.5
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.ReloadSound = Sound("weapons/pistol/pistol_reload1.wav")
-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6, 0, 2.92)
SWEP.IronSightsAng = Vector(0.6, -1.101, 0)
SWEP.SightsPos = Vector(-6, 0, 2.92)
SWEP.SightsAng = Vector(0.6, -1.101, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)
SWEP.DisableIdleAnimations = false

SWEP.VElements = {
	["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, 0.326, -5.461), angle = Angle(0, 90, 0), size = Vector(0.5, 0.458, 0.894), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["muzzle"] = { type = "Model", model = "models/Items/combine_rifle_ammo01.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, 0.321, 3.21), angle = Angle(0, 0, 0), size = Vector(0.405, 0.537, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "ValveBiped.clip", rel = "", pos = Vector(-0.245, 0.451, -0.082), angle = Angle(-90, 0, 0), size = Vector(0.5, 1.049, 0.193), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["button"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0.238, -0.222, -5.956), angle = Angle(-90, 90, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}