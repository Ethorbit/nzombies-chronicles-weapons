SWEP.Base				= "tfa_bash_base"
SWEP.Category			= "NZ TFA Left 4 Dead PAP" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer		= "" --Gun Manufactrer (e.g. Hoeckler and Koch )
function SWEP:OnPaP()
   return true
end
SWEP.Author				= "WickedRabbit" --Author Tooltip
SWEP.Contact			= "" --Contact Info Tooltip
SWEP.Purpose			= "" --Purpose Tooltip
SWEP.Instructions		= "" --Instructions Tooltip
SWEP.Spawnable			= false --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair		= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS	= false --Draw the crosshair in ironsights?
SWEP.NZPaPName = "CI-Manager"		-- Weapon name (Shown on HUD)
SWEP.PrintName			= "CI-Manager"
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos			= 54			-- Position in the slot
SWEP.AutoSwitchTo		= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 60			-- This controls how "good" the weapon is for autopickup.

SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models


--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_L4D1_UZI.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("TFA_L4D1_UZI.S") -- This is the sound of the weapon, when you shoot.

SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 120 -- Damage, in standard damage points.
SWEP.Primary.DamageHeadshot = 2
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = DMG_BULLET --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 1 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM = 1250 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = "wick/weapons/l4d1/smg/gunother/smg_helpinghandextend.wav" --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = "wick/weapons/l4d1/smg/gunother/smg_helpinghandretract.wav" --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff

--Ammo Related
SWEP.Primary.ClipSize = 75 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 11 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "smg1" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = .2 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = .3 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .5 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .015 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 4 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.6 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 5 --How much the spread recovers, per second. Example val: 3
--Range Related
--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.65 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.8 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.95 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.9 --Multiply the player's movespeed by this when sighting.
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/wick/weapons/l4d1/c_smg.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 50			-- This controls how big the viewmodel looks.  Less is more.
SWEP.UseHands = true --Use gmod c_arms system.

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end
SWEP.Primary.MaxAmmo = 825

SWEP.Bodygroups_V = {

}
--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/wick/weapons/l4d1/w_smg.mdl" --Wmodel path
SWEP.Bodygroups_W = {

}
SWEP.HoldType = "pistol" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -2,
		Right = 1,
		Forward = 8
	},
	Ang = {
		Up = 90,
		Right = -6,
		Forward = 178
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SPRINTING]]--
SWEP.SafetyPos = Vector(0, 0, 1.968)
SWEP.SafetyAng = Vector(-11.105, 0.596, -1.361)
SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "smg_run", --Number for act, String/Number for sequence
		["is_idle"] = true
	},	
}

SWEP.WalkAnimation = { 
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "smg_walk", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
}
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 75 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-7.2, 0, 2.4)
SWEP.IronSightsAng = Vector(-1.2, -4.6, 0)

SWEP.SelectiveFire = true --Allow selecting your firemode?
--Change to a text value to override it

--[[INSPECTION]]--
SWEP.InspectPos = Vector(10.338, -4.04, 0.211)
SWEP.InspectAng = Vector(1.194, 33.731, 0)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.2 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.2 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_UZI.DRAW")},
		{time = 0.55, type = "sound", value = Sound("TFA_L4D1_UZI.FULLAUTO")},
	},
	[ACT_VM_HOLSTER] = {
		{time = 0.2, type = "sound", value = Sound("TFA_L4D1_UZI.FULLAUTO")},
		{time = 0.55, type = "sound", value = Sound("TFA_L4D1_UZI.DRAW")},
	},
	[ACT_VM_DRAW_DEPLOYED] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_UZI.DRAW")},
		{time = 22 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPIN")},
		{time = 37 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPLOCKED")},
		{time = 65 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEBACK")},
		{time = 74 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEFORWARD")},
		{time = 95 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.FULLAUTO")},
	},
	[ACT_VM_RELOAD] = {
		{time = 0 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.HELPHANDEX")},
		{time = 3 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPOUT")},
		{time = 32 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPIN")},
		{time = 47 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPLOCKED")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 0 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.HELPHANDEX")},
		{time = 3 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPOUT")},
		{time = 32 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPIN")},
		{time = 47 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.CLIPLOCKED")},
		{time = 74 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEBACK")},
		{time = 82 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEFORWARD")},
	},
	[ACT_VM_FIREMODE] = {
		{time = 1 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.HELPHANDEX")},
		{time = 15 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.FULLAUTO")},
	},
	[ACT_VM_FIDGET] = {
		{time = 1 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.HELPHANDEX")},
		{time = 29 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEBACK")},
		{time = 39 / 30, type = "sound", value = Sound("TFA_L4D1_UZI.SIDEFORWARD")},
	},
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) }
}


SWEP.Secondary.BashDamage = 15
SWEP.Secondary.BashDelay = 0.4
SWEP.Secondary.BashLength = 70

SWEP.Secondary.ClipSize			= 0					-- Size of a clip
SWEP.Secondary.DefaultClip			= 0					-- Default ammo to give...
SWEP.Secondary.Automatic			= false					-- Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none" -- Self explanitory, ammo type.

--Convar support

SWEP.VElements = {
	["l4d_sil"] = { type = "Model", model = "models/wick/weapons/l4d1/att_silencer.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.237, -4.331, 11.439), angle = Angle(90, 90, 22.965), size = Vector(0.964, 0.964, 0.964), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0, -2.662, 7.168), angle = Angle(90, 90, 90), size = Vector(1.011, 1.011, 1.011), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["l4d_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0, -2.613, 10.659), angle = Angle(90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} }
}

SWEP.WElements = {
	["l4d_sil"] = { type = "Model", model = "models/wick/weapons/l4d1/att_silencer.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(13.123, 1.12, -4.811), angle = Angle(-10.997, 0, 42.34), size = Vector(0.716, 0.716, 0.716), color = Color(255, 255, 255, 255), surpresslightning = false, active = false, material = "", skin = 0, bodygroup = {} },
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.175, 0.92, -2.609), angle = Angle(-12.961, 1.605, 39.859), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, active = false, material = "", skin = 0, bodygroup = {} },
	["l4d_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.329, 0.824, -2.734), angle = Angle(-10.997, 0, 42.34), size = Vector(0.716, 0.716, 0.716), color = Color(255, 255, 255, 255), surpresslightning = false, active = false, material = "", skin = 0, bodygroup = {} },
}

SWEP.Attachments = {
}

SWEP.AttachmentDependencies = {}
SWEP.AttachmentExclusions = {}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 6

SWEP.MuzzleAttachmentSilenced = 2

SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashDamage = 25
SWEP.Secondary.BashDelay = 0.15

SWEP.MuzzleFlashEffect = "tfa_muzzleflash_smg"


SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 64 / 30,
	[ACT_VM_RELOAD_EMPTY] = 64 / 30
}