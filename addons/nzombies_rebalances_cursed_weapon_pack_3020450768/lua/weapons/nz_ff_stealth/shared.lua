SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShellEject"

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Stealth Pistol"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPReplacement			= "nz_ff_stealth_pap"
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
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_usp.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_usp_silencer.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

sound.Add( {
	name = "SWeapon_STealthPistol.1",
	channel = CHAN_WEAPON,
	volume = 0.5,
	level = 130,
	pitch = {75, 75},
	sound = "weapons/tmp/tmp-1.wav"
} )

SWEP.Primary.Sound			= Sound("SWeapon_STealthPistol.1")		-- Script that calls the primary fire sound
SWEP.Primary.SilencedSound = Sound("SWeapon_STealthPistol.1")
SWEP.Primary.RPM			= 400			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 18		-- Size of a clip
SWEP.Primary.DefaultClip		= 144		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.MaxAmmo 			= 144

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 28	-- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 3
SWEP.Primary.Spread		= .001	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.CanBeSilenced		= false
SWEP.Silenced	= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.89, -3.237, 2.68)
SWEP.IronSightsAng = Vector(0.087, 0.041, 0)
SWEP.SightsPos = Vector(-5.89, -3.237, 2.68)
SWEP.SightsAng = Vector(0.087, 0.041, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)

SWEP.DisableIdleAnimations = false

SWEP.VElements = {
	["laser"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "v_weapon.USP_Parent", rel = "", pos = Vector(0, -2.638, -5.427), angle = Angle(-90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["reddot"] = { type = "Model", model = "models/wystan/attachments_tfa/doctorrds.mdl", bone = "v_weapon.USP_Slide", rel = "", pos = Vector(-0.16, -0.585, 0), angle = Angle(-90, 90, 0), size = Vector(1.297, 1.297, 1.297), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false