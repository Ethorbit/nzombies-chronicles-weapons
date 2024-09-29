SWEP.Base					= "tfa_gun_base"
SWEP.Category				= "nZ Chyvachok Guns"
SWEP.Manufacturer 			= "Unknown"
SWEP.Author					= "Chyvachok" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Purpose Tooltip
SWEP.Instructions			= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= false --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS 		= false --Draw the crosshair in ironsights?
SWEP.PrintName				= "Heavy Laser Rifle"		-- Weapon name (Shown on HUD)
SWEP.Slot					= 3				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 5			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter if enabled in the GUI.
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight					= 80			-- This controls how "good" the weapon is for autopickup.
SWEP.Type					= "Sniper Rifle"

SWEP.AutoIconAngle 			= Angle(0, 0, 0)

--[[WEAPON HANDLING]]--

--Firing related
SWEP.Primary.Sound 					= Sound("TFA.Weapon.Chyvachok_Heavy_Laser.Shoot")	-- This is the sound of the weapon, when you shoot.
SWEP.LowAmmoSound 					= Sound("TFA.LowAmmo.SciFi")
SWEP.LastAmmoSound 					= Sound("TFA.LowAmmo.SciFi_Dry")
SWEP.Primary.SilencedSound 			= nil				-- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier 	= 2		--Change the amount of something this gun can penetrate through
SWEP.Primary.Damage					= 180 	-- Damage, in standard damage points.
SWEP.Primary.NumShots				= 1		--The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic				= false	-- Automatic/Semi Auto
SWEP.Primary.RPM               	 	= 600	-- This is in Rounds Per Minute / RPM
SWEP.FiresUnderwater 				= true

SWEP.Primary.DamageTypeHandled 		= true -- true will handle damagetype in base
SWEP.Primary.DamageType         	= bit.bor( DMG_ENERGYBEAM, DMG_AIRBOAT ) -- See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.DamageTypeBurner       = bit.bor( DMG_ENERGYBEAM, DMG_AIRBOAT, DMG_BURN ) -- See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.

SWEP.Primary.MaxAmmo = 250

-- Selective Fire Stuff
SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DisableBurstFire	= false --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev

--Ammo Related
SWEP.Primary.ClipSize			= 60		-- This is the size of a clip
SWEP.Primary.DefaultClip		= 120		-- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo				= "ar2"		-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption 	= 3
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.DisableChambering			= true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp				= 0.24
SWEP.Primary.KickDown 			= 0.15
SWEP.Primary.KickHorizontal		= 0.27
SWEP.Primary.StaticRecoilFactor = 0.45

--Firing Cone Related

SWEP.Primary.Spread				= 0.001
SWEP.Primary.IronAccuracy 		= 0.0001

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax 	= 1.5 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 1/3.5 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 3 --How much the spread recovers, per second.
SWEP.IronRecoilMultiplier 			= 0.85

--Range Related
SWEP.Primary.Range 				= -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff 		= -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

--Penetration Related

SWEP.MaxPenetrationCounter		= 0 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier= 0.5 			--Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchRecoilMultiplier= 0.65		--Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.JumpRecoilMultiplier= 1.3  		--Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.WallRecoilMultiplier= 1.1  		--Multiply recoil by this factor when we're changing state e.g. not completely ironsighted.  This is proportional, not inversely.
SWEP.ChangeStateRecoilMultiplier= 1.3  	--Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier= 1		--Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.ChangeStateAccuracyMultiplier= 1 	--Less is more.  A change of state is when we're in the progress of doing something, like crouching or ironsighting.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.JumpAccuracyMultiplier= 1			--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.WalkAccuracyMultiplier= 1			--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.IronSightTime = 0.3 				--The time to enter ironsights/exit it.
SWEP.NearWallTime = 0.25 				--The time to pull up  your weapon or put it back down
SWEP.ToCrouchTime = 0.05 				--The time it takes to enter crouching state
SWEP.WeaponLength = 40 					--Almost 3 feet.  This should be how far the weapon sticks out from the player.  This is used for calculating the nearwall trace.
SWEP.MoveSpeed = 1 						--Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.8 			--Multiply the player's movespeed by this when sighting.
SWEP.SprintFOVOffset = 3.75 			--Add this onto the FOV when we're sprinting.
SWEP.Primary.Knockback = 0

--[[PROJECTILES]]--

--SWEP.ProjectileEntity 		= nil
--SWEP.ProjectileVelocity		= 3000
--SWEP.ProjectileModel 		= "models/dav0r/hoverball.mdl"

--[[VIEWMODEL]]--

SWEP.ViewModel				= "models/weapons/chyvachok/c_heavy_laser.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 68		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.MaterialTable 			= nil 		-- Make sure the viewmodel and the worldmodel have the same material ids.  Next, fill this in with your desired submaterials.
SWEP.UseHands 				= true 	-- Use gmod c_arms system.
SWEP.VMPos = Vector(0.000, 0.000, 0.000)
SWEP.VMAng = Vector(0, 0, 0)


SWEP.VMBodyGroups = nil

--[[WORLDMODEL]]--
SWEP.WorldModel				= "models/weapons/chyvachok/w_heavy_laser.mdl"		-- Weapon world model path

SWEP.WMBodyGroups = nil--{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

SWEP.HoldType 				= "ar2"		-- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 0,
        Forward = 0,
        },
        Ang = {
        Up = 0,
        Right = 0,
        Forward = 0,
        },
		Scale = 1
}

SWEP.ThirdPersonReloadDisable=false --Disable third person reload?  True disables.

--[[SCOPES]]--

SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction			= false  --Unscope/sight after you shoot?
SWEP.Scoped				= true  --Draw a scope overlay?

SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.

SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

--GDCW Overlay Options.  Only choose one.

SWEP.Secondary.UseACOG			= false	 --Overlay option
SWEP.Secondary.UseMilDot		= false			 --Overlay option
SWEP.Secondary.UseSVD			= false		 --Overlay option
SWEP.Secondary.UseParabolic		= false		 --Overlay option
SWEP.Secondary.UseElcan			= false	 --Overlay option
SWEP.Secondary.UseGreenDuplex	= false		 --Overlay option

-- Clientside only
-- Defines custom scope overlay
if CLIENT then
	SWEP.Secondary.ScopeTable = {
	["ScopeMaterial"] =  Material("scope/heavylaser_squarescope", "smooth"),
	["ScopeBorder"] = color_black,
	["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 0, ["s"] = 1 }
}
end

--[[SHOTGUN CODE]]--

SWEP.Shotgun = false --Enable shotgun style reloading.

SWEP.ShellTime			= .35 -- For shotguns, how long it takes to insert a shell.

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(5, -5, 0)
SWEP.RunSightsAng = Vector(-15, 45, 0)

--[[IRONSIGHTS]]--

SWEP.data 				= {}
SWEP.data.ironsights			= 1 --Enable Ironsights
SWEP.Secondary.IronFOV			= 10				-- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

SWEP.IronSightsPos = Vector(-5.801, -5, 2.109)
SWEP.IronSightsAng = Vector(-0.339, -0.325, 0)

SWEP.InspectPos = Vector(6, -10, 0)
SWEP.InspectAng = Vector(15, 45, 22.5)

--[[VIEWMODEL ANIMATION HANDLING]]--

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=true --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=true --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?
SWEP.SprintBobMult=1.5 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this > 1 probably for sprinting.
SWEP.IronBobMult=0  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.IronBobMultWalk=0.2  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS!!!!11111oneONEELEVEN


--[[VIEWMODEL BLOWBACK]]--
SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG    

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation

--MDL Animations Below

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{ ["time"] = 16 / 30, ["type"] = "sound", ["value"] = Sound("TFA.Weapon.Chyvachok_Heavy_Laser.Cellout") },
		{ ["time"] = 45 / 30, ["type"] = "sound", ["value"] = Sound("TFA.Weapon.Chyvachok_Heavy_Laser.Cellin") },
	},
}

--[[VIEWMODEL PROCEDURAL ANIMATION]]--

SWEP.DoProceduralReload = false--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?

--[[HOLDTYPES]]--

SWEP.IronSightHoldTypeOverride=""  --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride=""  --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.

--[[ANIMATION]]--

SWEP.ForceDryFireOff = true --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = false --Disables empty fire animations.  Set to false to enable them.

--If you really want, you can remove things from SWEP.actlist and manually enable animations and set their lengths.

SWEP.SequenceEnabled = {} --Self explanitory.  This can forcefully enable or disable a certain ACT_VM
SWEP.SequenceLength = {}  --This controls the length of a certain ACT_VM
SWEP.SequenceLengthOverride={} --Override this if you want to change the length of a sequence but not the next idle

--[[EFFECTS]]--

--Muzzle Flash

SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.MuzzleAttachmentRaw 		= nil 		--This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.ShellAttachment			= nil 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.DoMuzzleFlash 				= true --Do a muzzle flash?
SWEP.CustomMuzzleFlash 			= false --Disable muzzle anim events and use our custom flashes?
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect 			= "tfa_c_heavy_laser_muzzle" --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.MuzzleFlashEffectBurner 	= "tfa_c_heavy_laser_burner_muzzle" --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.

--Shell eject override

SWEP.LuaShellEject = false
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = nil --Defaults to blowback

--Tracer Stuff

SWEP.TracerCount 					= 1
SWEP.TracerName 					= "tfa_c_heavy_laser_tracer"
SWEP.TracerNameBurner 				= "tfa_c_heavy_laser_burner_tracer"
SWEP.TracerLua 						= true
SWEP.TracerDelay					= 0

--Impact Effects

SWEP.ImpactEffect 					= "tfa_c_heavy_laser_impact"
SWEP.ImpactEffectBurner 			= "tfa_c_heavy_laser_burner_impact"
SWEP.ImpactDecal 					= "FadingScorch"

--[[RENDER TARGET]]--

SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.

SWEP.RTOpaque = false -- Do you want your render target to be opaque?

SWEP.RTCode = nil

--[[AKIMBO]]--

SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right


--[[MISC INFO FOR MODELERS]]--

--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all


ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--

--[[Stuff you SHOULD NOT touch after this]]--

--Allowed VAnimations.  These are autodetected, so not really needed except as an extra precaution.  Do NOT change these, unless absolutely necessary.

SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=false
SWEP.CanDrawAnimateSilenced=false
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=true
SWEP.CanIdleAnimateEmpty=false
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=false
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=false
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=false
SWEP.CanSilencerDetachAnimate=false

--Misc

SWEP.ShouldDrawAmmoHUD=false--THIS IS PROCEDURALLY CHANGED AND SHOULD NOT BE TWEAKED.  BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.
SWEP.DefaultFOV=90 --BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.

--Disable secondary crap

SWEP.Secondary.ClipSize			= 0					-- Size of a clip
SWEP.Secondary.DefaultClip			= 0					-- Default ammo to give...
SWEP.Secondary.Automatic			= false					-- Automatic/Semi Auto
SWEP.Secondary.Ammo			= "none" -- Self explanitory, ammo type.

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "tfa_c_heavylaser_sunbeam" }, order = 1 },
}

local myredcol = Color(255,255,255,255)
SWEP.VElements = {
["ammohud"] = { type = "Quad", bone = "Heavy_Laser", rel = "", pos = Vector(-10.212, 0.0, 5.235), angle = Angle(0, -90, 60), size = 0.025, draw_func = function()
        if !ALIENFONT then
            surface.CreateFont("ALIENFONT",{
                font = "Digital-7", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
                size = 40,
                weight = 15,
                blursize = 0,
                scanlines = 0,
                antialias = false,
                underline = false,
                italic = false,
                strikeout = false,
                symbol = false,
                rotary = false,
                shadow = false,
                additive = false,
                outline = false            
            })
            ALIENFONT = "ALIENFONT"
        end
        local ply = LocalPlayer()
        if !IsValid(ply) then return end
        self = ply:GetActiveWeapon()
        if !IsValid(self) then return end
        local str = tostring(self:Clip1())
        while string.len(str)<2 do
            str = "0"..str
        end
        render.PushFilterMin( TEXFILTER.ANISOTROPIC )
        render.PushFilterMag( TEXFILTER.ANISOTROPIC )
       
		if self:Clip1() >= 10 then
		 draw.SimpleText( string.sub(str,1,1), ALIENFONT, -10.5, -21, myredcol, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
		end
		
		if self:Clip1() >= 10 then
			draw.SimpleText( string.sub(str,2,2), ALIENFONT, 10.5, -21, myredcol, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
		else
			draw.SimpleText( string.sub(str,2,2), ALIENFONT, 10.5, -21, myredcol, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
		end   
       
        render.PopFilterMin( )
        render.PopFilterMag( )
    end}
}

--Convar support

SWEP.ConDamageMultiplier = 1

SWEP.Base = "tfa_gun_base"

DEFINE_BASECLASS( SWEP.Base )