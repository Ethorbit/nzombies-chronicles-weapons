SWEP.Base				= "tfa_bash_base"
SWEP.Category			= "NZ TFA Left 4 Dead" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer		= "" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "WickedRabbit" --Author Tooltip
SWEP.Contact			= "" --Contact Info Tooltip
SWEP.Purpose			= "" --Purpose Tooltip
SWEP.Instructions		= "" --Instructions Tooltip
SWEP.Spawnable			= false --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair		= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS	= false --Draw the crosshair in ironsights?
SWEP.PrintName			= "Auto Shotgun"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 3				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos			= 54			-- Position in the slot
SWEP.AutoSwitchTo		= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		-- Auto switch from if you pick up a better weapon
SWEP.NZPaPReplacement = "nz_tfa_l4d_auto_pap"
SWEP.Weight				= 60			-- This controls how "good" the weapon is for autopickup.

SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_L4D1_AUTO.1") -- This is the sound of the weapon, when you shoot.

SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 46 -- Damage, in standard damage points.
SWEP.Primary.DamageHeadshot = 1.5
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 5 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 275 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
SWEP.Shotgun = true
--Miscelaneous Sounds
SWEP.IronInSound = nil --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = nil --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
--Ammo Related
SWEP.Primary.ClipSize = 10 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 10 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "buckshot" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 1.2 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 1.0 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.8 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .6 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .045 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .04 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 1 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 2.5 --How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = 0.05 / 0.7 * (3280.84 * 16) -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.7 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 2 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.65 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.8 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.85 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.9 --Multiply the player's movespeed by this when sighting.
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/wick/weapons/l4d1/c_autoshotgun.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 53		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 
SWEP.Primary.MaxAmmo = 90

SWEP.VMPos = Vector(0, 0, 0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 1
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = {

}
--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/wick/weapons/l4d1/w_autoshotgun.mdl" --Wmodel path
SWEP.Bodygroups_W = {

}
SWEP.HoldType = "shotgun" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -2,
		Right = 1,
		Forward = 8
	},
	Ang = {
		Up = 93,
		Right = -6,
		Forward = 190
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SPRINTING]]--
SWEP.RunSightsPos = SWEP.VMPos
SWEP.RunSightsAng = SWEP.VMAng
SWEP.SafetyPos = Vector(0, -9, -6)
SWEP.SafetyAng = Vector(60, 0, 0)
SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "autoshot_run", --Number for act, String/Number for sequence
		["is_idle"] = true
	},	
}

SWEP.WalkAnimation = { 
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "autoshot_walk", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
}
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 120 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-6.56, -11.259, 4.419)
SWEP.IronSightsAng = Vector(-4.276, -2.714, 1)


--[[INSPECTION]]--
SWEP.InspectPos = Vector(5.367, -5.215, -1.688)
SWEP.InspectAng = Vector(20, 40, 10)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_AUTO.DRAW")},
		{time = 10 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTBACK")}
	},
	[ACT_VM_HOLSTER] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_AUTO.DRAW")},
		{time = 10 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTFORWARD")}
	},
	[ACT_VM_RELOAD] = {
		{time = 6 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.SHELL")}
	},
	[ACT_SHOTGUN_RELOAD_FINISH] = {
		{time = 18 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTBACK")},
		{time = 26 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTFORWARD")},
	},
	[ACT_VM_DRAW_DEPLOYED] = {
		{time = 18 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTBACK")},
		{time = 26 / 30, type = "sound", value = Sound("TFA_L4D1_AUTO.BOLTFORWARD")},
	}
}
--[[ATTACHMENTS]]--

SWEP.WElements = {
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(21.766, 0, -4.547), angle = Angle(-12.676, 0, 0), size = Vector(0.782, 0.782, 0.782), color = Color(255, 255, 255, 255), surpresslightning = false, active = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.VElements = {
	["l4d_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0, 0, 22.6), angle = Angle(90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", active = false, skin = 0, bodygroup = {} },
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0, 0, 21.327), angle = Angle(90, 90, 90), size = Vector(1.208, 1.208, 1.208), color = Color(255, 255, 255, 255), surpresslightning = false, active = false, material = "", skin = 0, bodygroup = {} }
}


SWEP.Attachments = {
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 6

SWEP.AttachmentDependencies = {}
SWEP.AttachmentExclusions = {}

SWEP.StatusLengthOverride = {
	[ACT_SHOTGUN_RELOAD_START] = 18 / 30,
	[ACT_VM_RELOAD] = 4 / 30,
	["reload_start_grip"] = 18 / 30,
	["reload_loop_grip"] = 4 / 30,
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) }
}



SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashDamage = 25
SWEP.Secondary.BashDelay = 0.15

DEFINE_BASECLASS(SWEP.Base)