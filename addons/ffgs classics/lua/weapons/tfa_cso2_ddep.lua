SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA CS:O" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = nil --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "Desert Phoenixes"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 1				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			-- Position in the slot
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("tfa_cso2_ddep.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = nil -- This is the sound of the weapon, when silenced.
SWEP.Primary.Damage = 200 -- Damage, in standard damage points.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 480 -- This is in Rounds Per Minute / RPM

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Osiris' Sight X2"
--SWEP.NZPaPReplacement 	= "tfa_cso2_af2011a0"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= true	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= true	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

function SWEP:Think() -- Workaround, for some reason MaxAmmo does not take effect when the weapon is equipped :/
	if (self.Primary.MaxAmmo != 140) then
		self.Primary.MaxAmmo = 140
		self:NZMaxAmmo()
	end
end

function SWEP:NZMaxAmmo()
	self:SetClip1(self.Primary.ClipSize)
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
	end
end

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Primary.Damage = self.Primary.Damage * 2
end

--Miscelaneous Sounds
SWEP.IronInSound = nil --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = nil --Sound to play when ironsighting out?  nil for default

--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it

--Ammo Related
SWEP.Primary.ClipSize = 14 -- This is the size of a clip
SWEP.Primary.DefaultClip = 130 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.MaxAmmo = 199
SWEP.Primary.Ammo = "pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp = 0.6 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.5 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.3 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.35 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related
SWEP.Primary.Spread = .03 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0035 -- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 4--How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 1 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4--How much the spread recovers, per second. Example val: 3	

--Range Related
SWEP.Primary.Range = 850 * 39.3701 * 8 / 3 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.5 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier = 0.5 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

--Movespeed
SWEP.MoveSpeed = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8 --Multiply the player's movespeed by this when sighting.

--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/tfa_cso2/c_ddep.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 75		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= true		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_cso2/w_ddep.mdl" -- Weapon world model path
SWEP.HoldType = "duel" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = 0,
		Right = 1.5,
		Forward = 3
	},
	Ang = {
		Up = -1,
		Right = -5,
		Forward = 178
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.OffsetL = {
	Pos = {
		Up = 0.3,
		Right = 2,
		Forward = 3
	},
	Ang = {
		Up = -1,
		Right = -5,
		Forward = 0
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.

--[[SCOPES]]--
SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.Scoped = false --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

--GDCW Overlay Options.  Only choose one.
SWEP.Secondary.UseACOG = false --Overlay option
SWEP.Secondary.UseMilDot = false --Overlay option
SWEP.Secondary.UseSVD = false --Overlay option
SWEP.Secondary.UseParabolic = false --Overlay option
SWEP.Secondary.UseElcan = false --Overlay option
SWEP.Secondary.UseGreenDuplex = false --Overlay option

--[[SHOTGUN CODE]]--
SWEP.Shotgun = false --Enable shotgun style reloading.
SWEP.ShotgunEmptyAnim = false --Enable emtpy reloads on shotguns?
SWEP.ShotgunEmptyAnim_Shell = true --Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShellTime = .35 -- For shotguns, how long it takes to insert a shell.

--[[SPRINTING]]--

SWEP.RunSightsPos = Vector(0, -10, -7.5)
SWEP.RunSightsAng = Vector(55, 0, 0)

--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 0 --Enable Ironsights
SWEP.Secondary.IronFOV = 70 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(6.196, 0, 2.285)
SWEP.IronSightsAng = Vector(0.843, -0.072, 0)

--[[INSPECTION]]--
SWEP.InspectPos = nil--Vector(0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = nil--Vector(0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection

--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.

--[[VIEWMODEL BLOWBACK]]--

SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(-0,-2,-0.05) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject"--Which shell effect to use

--[[VIEWMODEL PROCEDURAL ANIMATION]]--
SWEP.DoProceduralReload = false--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?


--[[HOLDTYPES]]--
SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.

--[[ANIMATION]]--

SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 3.0
}--Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceLengthOverride = {} --Changes both the status delay and the nextprimaryfire of a given animation
SWEP.SequenceRateOverride = {} --Like above but changes animation length to a target
SWEP.SequenceRateOverrideScaled = {} --Like above but scales animation length rather than being absolute

SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.3
SWEP.ProceduralHolsterPos = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng = Vector(-40, -30, 10)

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation


--[[EFFECTS]]--

--Attachments
SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "2" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = "pap_muzzleflash" --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = true --Disable automatic ejection smoke

--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = nil --The effect used for shell ejection; Defaults to that used for blowback

--Tracer Stuff
SWEP.TracerName 		= "tfa_tracer_incendiary" 	--Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 0 	--0 disables, otherwise, 1 in X chance

--Impact Effects
SWEP.ImpactEffect = nil--Impact Effect
SWEP.ImpactDecal = "FadingScorch"--Impact Decal

--[[RENDER TARGET]]--

SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = false -- Do you want your render target to be opaque?
SWEP.RTCode = nil--function(self) return end --This is the function to draw onto your rendertarget
--[[AKIMBO]]--

SWEP.Akimbo = true --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right

--SWEP.ViewModelBoneMods = {
--	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1.4, 1.0, -0.6) }
--}

DEFINE_BASECLASS( SWEP.Base )


function SWEP:Deploy( ... )
	BaseClass.Deploy( self, ... )
	timer.Simple(0.01, function()
		if not IsValid(self) then return end
		if not self:VMIV() then return end
		self:CleanParticles()
		ParticleEffectAttach( "ss_dep_fire_f", PATTACH_POINT_FOLLOW, self.OwnerViewModel, 5 )
		ParticleEffectAttach( "ss_dep_fire_f", PATTACH_POINT_FOLLOW, self.OwnerViewModel, 6 )
		ParticleEffectAttach( "ss_dep_fire_f", PATTACH_POINT_FOLLOW, self.OwnerViewModel, 7 )
		ParticleEffectAttach( "ss_dep_fire_f", PATTACH_POINT_FOLLOW, self.OwnerViewModel, 8 )
	end)
	return true
end

function SWEP:Think2( ... )
	return BaseClass.Think2( self, ... )
end

function SWEP:ChooseShootAnim( ... )
	if self:Clip1() == 2 then
		self:SendViewModelSeq( "ddep_shoot_leftlast" )
		return
	end
	return BaseClass.ChooseShootAnim(self,...)
end

function SWEP:ChooseReloadAnim( ... )
	self.AnimCycle = 0
	return BaseClass.ChooseReloadAnim(self,...)
end

function SWEP:ChooseIdleAnim( ... )
	if self:Clip1() <= 1 then return end
	return BaseClass.ChooseIdleAnim(self,...)
end

function SWEP:DrawWorldModel()
	local ply = self:GetOwner()
	if not(  IsValid(ply) and ply:IsPlayer() ) then
		self:DrawModel()
		return
	end

	if IsValid(ply) and ply.SetupBones then
		ply:SetupBones()
		ply:InvalidateBoneCache()
		self:InvalidateBoneCache()
	end

	if ( self.ShowWorldModel == nil or self.ShowWorldModel or not self:OwnerIsValid() ) then
		if game.SinglePlayer() or CLIENT then
			self:SetModel("models/weapons/tfa_cso2/w_dep.mdl")
			if IsValid(ply) and self.Offset and self.Offset.Pos and self.Offset.Ang then

				local handBone = ply:LookupBone("ValveBiped.Bip01_R_Hand")

				if handBone then
					--local pos, ang = ply:GetBonePosition(handBone)
					local pos, ang
					local mat = ply:GetBoneMatrix( handBone )
					if mat then
						pos, ang = mat:GetTranslation(), mat:GetAngles()
					else
						pos, ang = ply:GetBonePosition( handBone )
					end
					pos = pos + ang:Forward() * self.Offset.Pos.Forward + ang:Right() * self.Offset.Pos.Right + ang:Up() * self.Offset.Pos.Up
					ang:RotateAroundAxis(ang:Up(), self.Offset.Ang.Up)
					ang:RotateAroundAxis(ang:Right(), self.Offset.Ang.Right)
					ang:RotateAroundAxis(ang:Forward(), self.Offset.Ang.Forward)
					self:SetRenderOrigin(pos)
					self:SetRenderAngles(ang)
					--if self.Offset.Scale and ( !self.MyModelScale or ( self.Offset and self.MyModelScale!=self.Offset.Scale ) ) then
					self:SetModelScale(self.Offset.Scale or 1, 0)
					self.MyModelScale = self.Offset.Scale
					--end
				end
			else
				self:SetRenderOrigin(nil)
				self:SetRenderAngles(nil)

				if not self.MyModelScale or self.MyModelScale ~= 1 then
					self:SetModelScale(1, 0)
					self.MyModelScale = 1
				end
			end
		end
		self:ProcessBodygroups()
		self:DrawModel()
		if IsValid(ply) and self.OffsetL and self.OffsetL.Pos and self.OffsetL.Ang then

			local handBone = ply:LookupBone("ValveBiped.Bip01_L_Hand")

			if handBone then
				--local pos, ang = ply:GetBonePosition(handBone)
				local pos, ang
				local mat = ply:GetBoneMatrix( handBone )
				if mat then
					pos, ang = mat:GetTranslation(), mat:GetAngles()
				else
					pos, ang = ply:GetBonePosition( handBone )
				end
				pos = pos + ang:Forward() * self.OffsetL.Pos.Forward + ang:Right() * self.OffsetL.Pos.Right + ang:Up() * self.OffsetL.Pos.Up
				ang:RotateAroundAxis(ang:Up(), self.OffsetL.Ang.Up)
				ang:RotateAroundAxis(ang:Right(), self.OffsetL.Ang.Right)
				ang:RotateAroundAxis(ang:Forward(), self.OffsetL.Ang.Forward)
				self:SetRenderOrigin(pos)
				self:SetRenderAngles(ang)
				--if self.Offset.Scale and ( !self.MyModelScale or ( self.Offset and self.MyModelScale!=self.Offset.Scale ) ) then
				self:SetModelScale(self.Offset.Scale or 1, 0)
				self.MyModelScale = self.Offset.Scale
				--end
			end
		else
			self:SetRenderOrigin(nil)
			self:SetRenderAngles(nil)

			if not self.MyModelScale or self.MyModelScale ~= 1 then
				self:SetModelScale(1, 0)
				self.MyModelScale = 1
			end
		end
		self:ProcessBodygroups()
		self:SetupBones()
		self:DrawModel()
		self:SetModel("models/weapons/tfa_cso2/w_ddep.mdl")
	end
end