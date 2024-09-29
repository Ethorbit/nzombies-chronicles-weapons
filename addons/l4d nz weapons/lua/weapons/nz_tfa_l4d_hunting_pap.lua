SWEP.Base				= "tfa_3dbash_base"
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
SWEP.NZPaPName = "Ruger ANGST-14"
SWEP.PrintName			= "Ruger ANGST-14"
SWEP.Slot = 3				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos			= 54			-- Position in the slot
SWEP.AutoSwitchTo		= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 60			-- This controls how "good" the weapon is for autopickup.


--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_L4D1_HUNT.1") -- This is the sound of the weapon, when you shoot.

SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 185 -- Damage, in standard damage points.
SWEP.Primary.DamageHeadshot = 6
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 480 -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Displayed = 65 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = "TFA_L4D1_SNIPER.ZOOMIN" --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = "TFA_L4D1_UZI.HELPHANDRET" --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
--Ammo Related
SWEP.Primary.ClipSize = 25 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 10 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "SniperPenetratedRound" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 1.0 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.8 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.4 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .5 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .001 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0003 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 5 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 1.75 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4 --How much the spread recovers, per second. Example val: 3
--Range Related
--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = .0003 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.8 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.95 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.9 --Multiply the player's movespeed by this when sighting.
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/wick/weapons/l4d1/c_huntingrifle.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 52		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 
SWEP.Primary.MaxAmmo = 250

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
SWEP.WorldModel			= "models/wick/weapons/l4d1/w_huntingrifle.mdl" --Wmodel path
SWEP.Bodygroups_W = {

}
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -2,
		Right = 1,
		Forward = 8
	},
	Ang = {
		Up = 94,
		Right = -6,
		Forward = 185
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SPRINTING]]--
SWEP.RunSightsPos = SWEP.VMPos
SWEP.RunSightsAng = SWEP.VMAng
SWEP.SafetyPos = Vector(0, -7.428, -5.353)
SWEP.SafetyAng = Vector(60, 0, 0)
SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sniper_run", --Number for act, String/Number for sequence
		["is_idle"] = true
	},	
}

SWEP.WalkAnimation = { 
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sniper_walk", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
}
--[[IRONSIGHTS]]--
SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.IronSightsPos = Vector(-4.381, 0, 2.4)
SWEP.IronSightsAng = Vector(-1.1, -3.1, 0)

SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.

--[[INSPECTION]]--
SWEP.InspectPos = Vector(3.119, -5, -1)
SWEP.InspectAng = Vector(15, 30, 7.6)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0
--Shell eject override
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellModel = "models/hdweapons/rifleshell.mdl"
SWEP.LuaShellScale = math.pow(0.5 / 1.236636, 1 / 3)

SWEP.Secondary.UseACOG = true




--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_SNIPER.DRAW")},
	},
	[ACT_VM_HOLSTER] = {
		{time = 0, type = "sound", value = Sound("TFA_L4D1_SNIPER.DRAW")},
	},
	[ACT_VM_RELOAD] = {
		{time = 15 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPOUT")},
		{time = 58 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPIN")},
		{time = 75 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPLOCKED")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 15 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPOUT")},
		{time = 58 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPIN")},
		{time = 75 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPLOCKED")},
		{time = 98 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BUTTON")},
	},
	[ACT_VM_DRAW_DEPLOYED] = {
		{time = 23 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPIN")},
		{time = 38 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPLOCKED")},
		{time = 62 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BOLTBACK")},
		{time = 76 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BOLTFORWARD")},
		{time = 98 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.CLIPLOCKED")},
	},
	[ACT_VM_FIDGET] = {
		{time = 28 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BOLTBACK")},
		{time = 38 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BOLTFORWARD")},
		{time = 57 / 30, type = "sound", value = Sound("TFA_L4D1_SNIPER.BUTTON")},
	}
	
}
--[[ATTACHMENTS]]--

SWEP.RTMaterialOverride = -1 --the number of the texture, which you subtract from GetAttachment

SWEP.RTOpaque = true

SWEP.ScopeLegacyOrientation = true

SWEP.VElements = {
	["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(-0, -5.487, 2.5), angle = Angle(-90, 0, -90), size = Vector(0.425, 0.425, 0.425), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} },
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(-0.89, -3.721, 16.844), angle = Angle(90, 90, 90), size = Vector(1.006, 1.006, 1.006), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["l4d_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(-0.88, -3.567, 18.437), angle = Angle(90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} }
}


SWEP.WElements = {
	["l4d_laser"] = { type = "Model", model = "models/wick/weapons/l4d1/light.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(18.315, -0.422, -6.064), angle = Angle(-10.447, 2.171, 180), size = Vector(1.047, 1.047, 1.047), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", active = false, skin = 0, bodygroup = {} }
}


SWEP.Attachments = {
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 6


SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) }
}


SWEP.Secondary.ScopeZoom = 8 --IMPORTANT BIT
SWEP.RTScopeAttachment = 0
SWEP.ScopeAngleTransforms = {}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}

SWEP.WorldModelBoneMods = {
}


SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 5 / 30
}

DEFINE_BASECLASS(SWEP.Base)