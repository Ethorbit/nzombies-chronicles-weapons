SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "AR2Tracer" --nil

SWEP.TracerCount = 1
SWEP.TracerName = "AR2Tracer"
SWEP.Category				= "[TFA] [NZ] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= "A handheld combine turret. Huh, neat."
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Handheld Turret"		-- Weapon name (Shown on HUD)
SWEP.NZPaPReplacement			= "nz_ff_turret_pap"	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 72			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_smg_mp5.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg_mp5.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

sound.Add( {
	name = "SWeapon_MP5Turret.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 130,
	pitch = 100,
	sound = { "^npc/turret_floor/shoot1.wav",
            "^npc/turret_floor/shoot2.wav",
            "^npc/turret_floor/shoot1.wav" }
} )

SWEP.Primary.Sound			= Sound("SWeapon_MP5Turret.1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 750			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize 			= -1
SWEP.Primary.DefaultClip 		= 300
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"
SWEP.Primary.MaxAmmo 			= 300

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 55 -- Base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2
SWEP.Primary.Spread		= .001	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.321, 0, 1.84)
SWEP.IronSightsAng = Vector(1.149, 0.023, 0)
SWEP.SightsPos = Vector(-5.321, 0, 1.84)
SWEP.SightsAng = Vector(1.149, 0.023, 0)
SWEP.RunSightsPos = Vector(5.748, -9.686, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)

SWEP.MoveSpeed = 0.01

SWEP.EventTable = {
  [ACT_VM_RELOAD] = {
        { ["time"] = 0.55, ["type"] = "sound", ["value"] = Sound("npc/turret_floor/retract.wav") },
        { ["time"] = 1.5, ["type"] = "sound", ["value"] = Sound("npc/turret_floor/deploy.wav") },
        { ["time"] = 2, ["type"] = "sound", ["value"] = Sound("npc/turret_floor/active.wav") }
  }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.MP5_Clip"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.MP5_Clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(70.288, -90, -180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:PreDrawViewModel( vm )
	Material("models/weapons/v_models/smg_mp5/mp5_1"):SetTexture("$basetexture", "phoenix_storms/stripes")
end


function SWEP:PostDrawViewModel( vm )
	Material("models/weapons/v_models/smg_mp5/mp5_1"):SetTexture( "$basetexture", "models/weapons/v_models/smg_mp5/mp5_1" )
end

function SWEP:DrawWorldModel()
	self:SetMaterial("phoenix_storms/stripes")
	self:DrawModel()
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false