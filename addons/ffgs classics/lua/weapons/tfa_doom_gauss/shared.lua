SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA DOOM"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Slot = 4

SWEP.PrintName = "Gauss Cannon"
SWEP.Manufacturer = "Union Aerospace Corporation"
SWEP.Type = "Energy Weapon"

SWEP.ViewModel			= "models/weapons/tfa_doom/c_gauss.mdl" --Viewmodel path
SWEP.ViewModelFOV = 65
SWEP.UseHands = true

SWEP.WorldModel			= "models/weapons/tfa_doom/w_gauss.mdl" --Viewmodel path
SWEP.DefaultHoldType = "physgun"
SWEP.HoldType = "physgun"
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
	Pos = {
		Up = -5,
		Right = 0,
		Forward = 10,
	},
	Ang = {
		Up = -1,
		Right = -2,
		Forward = 178
	},
	Scale = 1
}

SWEP.Scoped = false
SWEP.Shotgun = false

SWEP.Primary.AmmoConsumption = 15
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 600
SWEP.Primary.NZMaxAmmo = 600

SWEP.Primary.Sound = "TFA_Gauss.Fire"
SWEP.Primary.Ammo =  TFA_GAUSS_AMMO or "doom_plasma"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 60
SWEP.Primary.Damage = 7000
SWEP.Primary.Radius = 90
SWEP.Primary.DamageTypeHandled = false --true will handle damagetype in base
SWEP.Primary.HullSize = 1
SWEP.Primary.DamageType = bit.bor(DMG_SHOCK,DMG_ALWAYSGIB,DMG_BLAST,DMG_AIRBOAT)
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .001					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .001	-- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.KickUp			= 2					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 1.5					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 1					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.4 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Primary.Knockback = 180
SWEP.Primary.MaxPenetration = -1
SWEP.VMMultX = 4.5

SWEP.Primary.MaxAmmo = 600
SWEP.NZPaPName = "Decimator"

function SWEP:OnPaP()
	self.Primary.Damage = 17000
	self.Primary.RPM = 90
	self.Primary.Radius = 150
	self.Primary.DefaultClip = 950
	self.Primary.MaxAmmo = 950
end

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

SWEP.Primary.ImpactEffect = ""

SWEP.Secondary.IronFOV = 45 --Ironsights FOV (90 = same)

SWEP.data = {}
SWEP.data.ironsights = 0

SWEP.AllowSprintAttack = true

SWEP.LuaShellEject = false

SWEP.VMPos = Vector(6,-10,-5)
SWEP.VMPos_Additive = false
--Vector(-12,-20,2)
SWEP.VMAng = Vector(0,0,0)

SWEP.InspectPos = Vector(10, -25, -10.23)
SWEP.InspectAng = Vector(39.326, 35.18, 10.594)

SWEP.CenteredPos = Vector(-7.956, -4, -10.28)
SWEP.CenteredAng = Vector(3.525, -1.678, 7.443)

SWEP.RunSightsPos = Vector(0,0,0) + SWEP.VMPos
SWEP.RunSightsAng = Vector(-10,0,0) + ( SWEP.VMAng or vector_origin )

SWEP.MuzzleFlashEffect = "tfa_doomgauss_muzzle"
SWEP.MuzzleFlashEnabled = false
SWEP.MuzzleAttachment = "energy_plunger"
SWEP.MuzzleAttachmentRaw = 1
SWEP.SmokeParticle = ""

SWEP.TracerName = "weapon_gauss_rail_normal"
SWEP.TracerPCF = true
SWEP.TracerCount = 1
SWEP.ImpactDecal = "FadingScorch"--"Scorch"

SWEP.Vortex_Velocity = 0
SWEP.Vortex_Velocity_Shot = 900
SWEP.Vortex_Accel = 500
SWEP.Vortex_Decel = 500
SWEP.Vortex_IdleSpeed = 100
SWEP.Vortex_ChargingSpeed = 1000
SWEP.Vortex_Friction = 100

SWEP.MoveSpeed = 1.0
SWEP.IronSightsMoveSpeed = 0.8

SWEP.ViewModelBoneMods = {
	["center_vortex_jnt"] = {
		scale = Vector(1, 1, 1),
		pos = Vector(0, 0, 0),
		angle = Angle(0,0,0)
	}
}

SWEP.Attachments = {
	[8] = {
		header = "Mod",
		offset = {0, 0},
		atts = {"doom_gauss_siege","doom_gauss_scope"}
	}
}

SWEP.SequenceRateOverrideScaled = {
	[ACT_VM_PRIMARYATTACK] = 0.8,
	[ACT_VM_DRAW] = 1.5
}

SWEP.SequenceLengthOverride = {}
SWEP.SequenceLengthOverride[ACT_VM_DRAW] = 0.3

SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.2
SWEP.ProceduralHolsterPos = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng = Vector(-60, -50, 20)

SWEP.IdleSound = Sound("TFA_Gauss.Idle")
SWEP.IdleSound_Next = -1





SWEP.Scope = {}

SWEP.Scope.ChargeTime = 3

SWEP.Scope.Sound = {}

SWEP.Scope.Sound.Charge = Sound("TFA_Gauss.PrecisionCharge")
SWEP.Scope.Sound.ChargeIdle = Sound("TFA_Gauss.PrecisionHumIdle")
SWEP.Scope.Sound.ChargeStop = Sound("TFA_Gauss.PrecisionRelease")
SWEP.Scope.Sound.BlendTime = 0.025
SWEP.Scope.Sound.Idle_Next = -1

SWEP.Scope.Primary = {}

SWEP.Scope.Primary.Damage_Min = 300
SWEP.Scope.Primary.Damage_Max = 800
SWEP.Scope.Primary.Knockback_Min = 150
SWEP.Scope.Primary.Knockback_Max = 300
SWEP.Scope.Primary.Sound = Sound("TFA_Gauss.PrecisionFire")
SWEP.Scope.Primary.Radius_Min = 0
SWEP.Scope.Primary.Radius_Max = 32
SWEP.Scope.Primary.Radius_Kill = 128

SWEP.Scope.OverlayTBL = {}
for i = 1,6 do
	SWEP.Scope.OverlayTBL[i] = Material("vgui/d4d_gauss_scope/" .. tostring(i) .. ".png", "smooth" )
end

SWEP.Scope.MoveSpeed = SWEP.MoveSpeed * 1
SWEP.Scope.IronSightsMoveSpeed = SWEP.IronSightsMoveSpeed * 1

SWEP.Scope.TracerName = "weapon_gauss_rail_precision"

SWEP.IronSightsPos = Vector(-14.48, -20, 2.319)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.Scoped = true

SWEP.Secondary.ScopeTable =	{
	scopetex = surface and surface.GetTextureID("vgui/nultrans") or 0
}

local bgcolor = Color(35,123,255,128)
local fontid

local function draw_ammocounter( digit, wep )
	if not fontid then
		fontid = "DOOMAmmoCounter" .. CurTime()
		surface.CreateFont( fontid, {
			font = "Michroma",
			extended = false,
			size = 256,
			weight = 500,
			blursize = 0,
			scanlines = 0,
			antialias = true,
			underline = false,
			italic = false,
			strikeout = false,
			symbol = false,
			rotary = false,
			shadow = false,
			additive = false,
			outline = false
		})
	end
	draw.RoundedBox(0,0,0,520,270,bgcolor)
	draw.SimpleText( wep:Ammo1() ,fontid,64,128,color_white,TEXT_ALIGN_LEFT,TEXT_ALIGN_TOP)
end

SWEP.VElements = {
	["ammodigit1"] = { type = "Quad", bone = "siege_l_base_jnt", rel = "", pos = Vector(-36.85, -9.9, -4.7), angle = Angle(180, -90, 90), size = 0.004, draw_func = function( ... ) draw_ammocounter( 1, ... ) end, active = false}
	--["ammodigit2"] = { type = "Quad", bone = "ValveBiped.Bip01_Spine4", rel = "ammodigit", pos = Vector(0.589, 0, 0), angle = Angle(0, 0, 0), size = 0.015, draw_func = function( ... ) draw_ammocounter( 2, ... ) end, active = false},
	--["ammodigit3"] = { type = "Quad", bone = "ValveBiped.Bip01_Spine4", rel = "ammodigit2", pos = Vector(0.589, 0, 0), angle = Angle(0, 0, 0), size = 0.015, draw_func = function( ... ) draw_ammocounter( 3, ... ) end, active = false }
}






SWEP.Siege = {}

SWEP.Siege.Primary = {}
SWEP.Siege.Primary.Damage = 800
SWEP.Siege.Primary.Automatic = false
SWEP.Siege.Primary.RPM = 60
SWEP.Siege.Primary.Damage = 1680
SWEP.Siege.Primary.HullSize = 6
SWEP.Siege.Primary.Radius = 64
SWEP.Siege.Primary.DamageType = bit.bor(DMG_SHOCK,DMG_ALWAYSGIB,DMG_BLAST,DMG_AIRBOAT)
SWEP.Siege.Primary.NumShots = 1
SWEP.Siege.Primary.Spread		= .001					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Siege.Primary.IronAccuracy = .001	-- Ironsight accuracy, should be the same for shotguns
SWEP.Siege.Primary.KickUp			= 2.5					-- This is the maximum upwards recoil (rise)
SWEP.Siege.Primary.KickDown			= 2.5					-- This is the maximum downwards recoil (skeet)
SWEP.Siege.Primary.KickHorizontal			= 2					-- This is the maximum sideways recoil (no real term)
SWEP.Siege.Primary.StaticRecoilFactor = 0.4 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Siege.Primary.Knockback = 300
SWEP.Siege.Primary.MaxPenetration = 4
SWEP.Siege.Primary.AmmoConsumption = 30
SWEP.Siege.Primary.Sound = "TFA_Gauss.SiegeFire"

SWEP.Siege.Anims = {}
SWEP.Siege.Anims.Charge = ACT_VM_DEPLOY
SWEP.Siege.Anims.Idle = ACT_VM_IDLE_DEPLOYED
SWEP.Siege.Anims.Decharge = ACT_VM_UNDEPLOY
SWEP.Siege.Anims.Shoot = ACT_VM_SECONDARYATTACK

SWEP.Siege.Sound = {}
SWEP.Siege.Sound.Idle = "TFA_Gauss.SiegeChargeIdle"
SWEP.Siege.Sound.Idle_Next = -1
SWEP.Siege.Sound.FadeTime = 0.025
SWEP.Siege.Sound.BlendTime = 0.6

SWEP.Siege.MoveSpeed = SWEP.MoveSpeed * 1
SWEP.Siege.IronSightsMoveSpeed = SWEP.IronSightsMoveSpeed * 1

SWEP.Siege.TracerName = "weapon_gauss_rail_siege"
SWEP.Siege.ImpactDecal = "Scorch"

SWEP.CanSiege = false










DEFINE_BASECLASS( SWEP.Base )

SWEP.SiegeTransformed = false --Changed automatically

SWEP.CustomBulletCallback = function(a,b,c)
	local wep = a:GetActiveWeapon()
	if not IsValid(wep) or wep.ClassName ~= "tfa_doom_gauss" then return end
	if not b.HitPos then return end
	if not SERVER then return end
	if IsValid(b.Entity) then
		local cl = b.Entity:GetClass()
		if cl == "npc_turret_floor" then
			local ang = b.Entity:GetAngles()
			ang:RotateAroundAxis(ang:Forward(),40)
			b.Entity:SetAngles(ang)
		end
		wep:HandleDoor( b.Entity, c )
	end
	local inflictor, attacker, hpos, rad, dmg
	if wep:GetStat("data.ironsights") == 1 then
		rad = Lerp( wep:GetNW2Float("Charge",0), wep.Scope.Primary.Radius_Min, wep.Scope.Primary.Radius_Max )
		attacker = a
		inflictor = wep
		dmg = b.OGDamage or c:GetDamage()
		hpos = b.HitPos
		timer.Simple(0.00,function()
			if IsValid( b.Entity ) and IsValid(wep) and ( ( not b.Entity.Alive ) or ( not b.Entity:Alive() ) ) then
				rad = wep.Scope.Primary.Radius_Kill
			end
			util.BlastDamage( inflictor, attacker, hpos, rad, dmg )
		end)
		b.OGDamage = b.OGDamage or c:GetDamage()
		c:ScaleDamage( 0 )
	else
		rad = wep.SiegeTransformed and wep.Siege.Primary.Radius or wep.Primary.Radius
		if rad ~= 0 then
			attacker = a
			inflictor = wep
			dmg = b.OGDamage or c:GetDamage()
			hpos = b.HitPos
			timer.Simple(0.00,function()
				util.BlastDamage( inflictor, attacker, hpos, rad, dmg )
			end)
			b.OGDamage = b.OGDamage or c:GetDamage()
			c:ScaleDamage( 0 )
		end
	end
end

local stat, statend
local _,tanim

function SWEP:Think2( ... )

	self:PrepNW2()
	self:IdleSounds()
	self:SiegeMechanics()
	self:ScopeMechanics()
	self:AnimateVortex()
	self:DLight()
	return BaseClass.Think2(self,...)
end


function SWEP:ScopeMechanics()
	self:ScopeCharge()
	self:ScopeStats()
end

function SWEP:ScopeStats()
	self:BuildDefaultStatTable()
	if self:IsCurrentlyScoped() and self:GetStat("data.ironsights") ~= 0 then
		for k,v in pairs( self.Scope.Primary ) do
			self.Primary[k] = v
		end
		if self:IsCurrentlyScoped() then
			local charge = self:GetNW2Float("Charge") or 0
			self.Primary.Damage = Lerp( charge, self.Scope.Primary.Damage_Min, self.Scope.Primary.Damage_Max )
			self.Primary.Knockback = Lerp( charge, self.Scope.Primary.Knockback_Min, self.Scope.Primary.Knockback_Max )
			self.Primary.HullSize = 1
			self.TracerName = self.Scope.TracerName
		else
			self.Primary.Damage = self.Primary_Default.Damage
			self.Primary.Knockback = self.Primary_Default.Knockback
			self.Scope.Primary.HullSize = self.Primary_Default.HullSize
			self.TracerName = self.Scope.TracerNameDefault
		end
		self.MoveSpeed = self.Scope.MoveSpeed
		self.IronSightsMoveSpeed = self.Scope.IronSightsMoveSpeed
		self.NeedsScopeStatReset = true
	else
		if self.NeedsScopeStatReset then
			for k,v in pairs( self.Primary_Default ) do
				self.Primary[k] = v
			end
			self.MoveSpeed = self.MoveSpeedDefault
			self.IronSightsMoveSpeed = self.IronSightsMoveSpeedDefault
			self.TracerName = self.TracerNameDefault
			self.NeedsScopeStatReset = false
		end
	end
end

function SWEP:DrawHUD( ... )
	if self:IsCurrentlyScoped() then
		surface.SetDrawColor(color_white)
		surface.SetMaterial( self.Scope.OverlayTBL[ math.max( math.Round( self:GetNW2Float("Charge") * 6  ), 1 )  ] )
		surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	end
	return BaseClass.DrawHUD( self, ... )
end

local lastcharge, RealFrameTime

function SWEP:ScopeCharge()

	RealFrameTime = SysTime() - ( lastcharge or SysTime() )
	lastcharge = SysTime()
	RealFrameTime = RealFrameTime * self:GetTimeScale()

	if self:GetNW2Float("Charge") == nil then
		self:SetNW2Float("Charge", 0)
	end

	self.OldCharge = self.OldCharge or self:GetNW2Float("Charge")

	if self.DefaultDamage == nil then
		self.DefaultDamage = self.Primary.Damage
	end

	if self.DefaultKickUp == nil then
		self.DefaultKickUp = self.Primary.KickUp
	end

	if self.DefaultRPM == nil then
		self.DefaultRPM = self.Primary.RPM
	end

	if self.DefaultSound == nil then
		self.DefaultSound = self.Primary.Sound
	end

	isscoped = self:IsCurrentlyScoped()

	local cancharge = self:GetStatus() ~= TFA.Enum.STATUS_SHOOTING

	if isscoped and cancharge then
		self:SetNW2Float("Charge", math.Approach(self:GetNW2Float("Charge"), 1, RealFrameTime / self.Scope.ChargeTime))

		if self:CanSoundPredict() then
			if self.Scope.Sound.Idle_Next == -1 and not ( game.SinglePlayer() and CLIENT ) then
				self:EmitSound(self.Scope.Sound.Charge)
				self.Scope.Sound.Idle_Next = SysTime() + SoundDuration( self.Scope.Sound.Charge ) / self:GetTimeScale() - self.Scope.Sound.BlendTime
			end

			if SysTime() > self.Scope.Sound.Idle_Next then
				self:EmitSound(self.Scope.Sound.ChargeIdle)
				self.Scope.Sound.Idle_Next = SysTime() + SoundDuration( self.Scope.Sound.ChargeIdle ) / self:GetTimeScale() - self.Scope.Sound.BlendTime
			end
		end
	else
		if self:GetNW2Float("Charge") > 0 then
			self:SetNW2Float("Charge", 0)
		end
		if self:CanSoundPredict() and self.Scope.Sound.Idle_Next ~= -1 then
			self:StopSound(self.Scope.Sound.Charge)
			self.Scope.Sound.Idle_Next = -1
			self:StopSound(self.Scope.Sound.ChargeIdle)
			if not isscoped then
				self:EmitSound( self.Scope.Sound.ChargeStop)
			end
		end
	end
	self.OldCharge = self:GetNW2Float("Charge")
end












function SWEP:SiegeMechanics()
	if not self:VMIV() then return end
	stat = self:GetStatus()
	if TFA.Enum.GaussSiegeStatus[ stat ] and not self:GetStat("CanSiege") then
		self:SendViewModelAnim(ACT_VM_IDLE)
		self:SetStatus( TFA.GetStatus("idle") )
		self:SetStatusEnd( math.huge )
		self.SiegeTransformed = false
		self:SiegeStats()
		return
	end
	if not self:GetStat("CanSiege") then return end
	statend = self:GetStatusEnd()
	if TFA.Enum.GaussSiegeStatus[ stat ] then
		self.SiegeTransformed = true
	else
		self.SiegeTransformed = false
	end
	self:SiegeStats()
	if CurTime() > statend then
		if stat == TFA.GetStatus("gauss_siege_start") then
			self:SetStatus( TFA.GetStatus("gauss_siege_loop") )
			self:SetStatusEnd( math.huge )
		elseif stat == TFA.GetStatus("gauss_siege_loop") then
			self:SetStatus( TFA.GetStatus("gauss_siege_loop") )
			self:SetStatusEnd( math.huge )
		end
	end
	if TFA.Enum.ReadyStatus[ stat ] then
		if self.Owner:KeyDown( IN_ATTACK2 ) and stat ~= TFA.GetStatus("gauss_siege_loop") and self:Ammo1() >= self.Siege.Primary.AmmoConsumption then
			self:SetStatus( TFA.GetStatus("gauss_siege_start") )
			_,tanim = self:SendViewModelAnim( self.Siege.Anims.Charge )
			self:SetStatusEnd( CurTime() + self:GetActivityLength( tanim ) )
			self:SetNextPrimaryFire( self:GetStatusEnd() )
			if self:CanSoundPredict() or (  self.Siege.Sound.Idle_Next == -1 and not ( CLIENT and game.SinglePlayer() ) ) then
				self.Siege.Sound.Idle_Next = SysTime() + SoundDuration( "TFA_Gauss.SiegeCharge" ) / self:GetTimeScale() - self.Siege.Sound.BlendTime
				self:EmitSound( "TFA_Gauss.SiegeCharge" )
			end
		elseif stat == TFA.GetStatus("gauss_siege_loop") and ( self:Ammo1() < self.Siege.Primary.AmmoConsumption or not self.Owner:KeyDown( IN_ATTACK2 ) ) then
			self:SetStatus( TFA.GetStatus("gauss_siege_end") )
			_,tanim = self:SendViewModelAnim( self.Siege.Anims.Decharge )
			self:SetStatusEnd( CurTime() + self:GetActivityLength( tanim ) )
			self:SetNextPrimaryFire( self:GetStatusEnd() )
			if self:CanSoundPredict() then
				self:EmitSound( "TFA_Gauss.SiegeRelease" )
				self.Siege.Sound.Idle_Next = SysTime() + SoundDuration( "TFA_Gauss.SiegeRelease" ) / self:GetTimeScale() - self.Siege.Sound.BlendTime
			end
		end
	end
end

function SWEP:BuildDefaultStatTable()
	if not self.Primary_Default then
		self.Primary_Default = {}
		for k,v in pairs(self.Primary) do
			self.Primary_Default[k] = v
		end
		for k,v in pairs(self.Siege.Primary) do
			if self.Primary_Default[k] == nil then
				self.Primary_Default[k] = v
			end
		end
		for k,v in pairs(self.Scope.Primary) do
			if self.Primary_Default[k] == nil then
				self.Primary_Default[k] = v
			end
		end
	end
	if not self.MoveSpeedDefault then
		self.MoveSpeedDefault = self.MoveSpeed
		self.IronSightsMoveSpeedDefault = self.IronSightsMoveSpeed
	end
	if not self.TracerNameDefault then
		self.TracerNameDefault = self.TracerName
	end
	if not self.ImpactDecalDefault then
		self.ImpactDecalDefault = self.ImpactDecal
	end
end

function SWEP:SiegeStats()
	self:BuildDefaultStatTable()
	if self.SiegeTransformed then
		for k,v in pairs( self.Siege.Primary ) do
			self.Primary[k] = v
		end
		self.MoveSpeed = self.Siege.MoveSpeed
		self.IronSightsMoveSpeed = self.Siege.IronSightsMoveSpeed
		self.TracerName = self.Siege.TracerName
		self.ImpactDecal = self.Siege.ImpactDecal
		self.NeedsSiegeStatReset = true
	else
		if self.NeedsSiegeStatReset then
			for k,v in pairs( self.Primary_Default ) do
				self.Primary[k] = v
			end
			self.MoveSpeed = self.MoveSpeedDefault
			self.IronSightsMoveSpeed = self.IronSightsMoveSpeedDefault
			self.TracerName = self.TracerNameDefault
			self.ImpactDecal = self.ImpactDecalDefault
			self.NeedsSiegeStatReset = false
		end
	end
end

function SWEP:PrimaryAttack( ... )
	stat = self:GetStatus()
	local val = BaseClass.PrimaryAttack( self, ... )
	if stat == TFA.GetStatus("gauss_siege_loop") and self:GetStatus() == TFA.GetStatus("shooting") then
		self:SetStatus( TFA.GetStatus("gauss_siege_shoot") )
	end
	return val
end

SWEP.DLight = nil

function SWEP:DLight()
	if not DynamicLight then return end
	if not self:VMIV() then return end
	if self:IsFirstPerson() then
		if not self.PlungerAttachment then
			self.PlungerAttachment = self.OwnerViewModel:LookupAttachment( "energy_plunger" )
		end
		if not self.VortexAttachment then
			self.VortexAttachment = self.OwnerViewModel:LookupAttachment( "energy_vortex" )
		end
		local angpos = self.OwnerViewModel:GetAttachment( self.VortexAttachment )
		if not angpos then return end
		local pos = angpos.Pos + angpos.Ang:Forward() * 8 * ( 1 - self.InspectingProgress * 0.4 )
		pos:Add( angpos.Ang:Right() * 10 * ( 1 - self.InspectingProgress ) )
		pos:Add( angpos.Ang:Up() * self.InspectingProgress * 2 )
		local brightness = math.Clamp(  math.abs( self.Vortex_Velocity ) / self.Vortex_IdleSpeed, 0, 3 )  * 1.0
		local dlight = DynamicLight( self:EntIndex() )
		if ( dlight ) then
			dlight.pos = pos
			dlight.r = 85
			dlight.g = 178
			dlight.b = 255
			dlight.brightness = math.sqrt( brightness / 2 ) * 2
			dlight.Decay = 200
			dlight.Size = brightness * 16
			dlight.DieTime = CurTime() + 0.2
		end
		local angpos_barrel = self.OwnerViewModel:GetAttachment( self.PlungerAttachment or 10 )
		if not angpos_barrel then return end
		local pos_barrel = angpos_barrel.Pos
		pos_barrel:Add( angpos_barrel.Ang:Forward() * 5 )
		local dlight_barrel = DynamicLight( self:EntIndex() + 10 )
		if ( dlight_barrel ) then
			dlight_barrel.pos = pos_barrel
			dlight_barrel.r = 85
			dlight_barrel.g = 178
			dlight_barrel.b = 255
			dlight.brightness = math.sqrt( brightness / 2 ) * 2
			dlight.Decay = 200
			dlight.Size = brightness * 32
			dlight_barrel.DieTime = CurTime() + 0.2
		end
	end
end

local lastvort, vortframetime

function SWEP:AnimateVortex()
	vortframetime = SysTime() - ( lastvort or SysTime() )
	lastvort = SysTime()
	vortframetime = vortframetime * self:GetTimeScale()
	stat = self:GetStatus()
	if self:Ammo1() > 0 then
		if TFA.Enum.GaussSiegeStatus[ stat ] and stat ~= TFA.GetStatus("gauss_siege_end") then
			if self.Vortex_Velocity > self.Vortex_ChargingSpeed then
				self.Vortex_Velocity = math.max( self.Vortex_Velocity - self.Vortex_Decel * vortframetime , self.Vortex_ChargingSpeed )
			else
				self.Vortex_Velocity = math.min( self.Vortex_Velocity + self.Vortex_Accel * vortframetime, self.Vortex_ChargingSpeed )
			end
		else
			if self.Vortex_Velocity > self.Vortex_IdleSpeed then
				self.Vortex_Velocity = math.max( self.Vortex_Velocity - self.Vortex_Decel * vortframetime , self.Vortex_IdleSpeed )
			else
				self.Vortex_Velocity = math.min( self.Vortex_Velocity + self.Vortex_Accel * vortframetime, self.Vortex_IdleSpeed )
			end
		end
	else
		self.Vortex_Velocity = math.max( self.Vortex_Velocity - self.Vortex_Friction * vortframetime , 0 )
		self:CleanParticles()
	end
	self.ViewModelBoneMods["center_vortex_jnt"].angle.y = math.NormalizeAngle(  self.ViewModelBoneMods["center_vortex_jnt"].angle.y - self.Vortex_Velocity * vortframetime )
end

function SWEP:IsTrueIdle( statv )
	return not ( TFA.Enum.GaussSiegeStatus[ statv ] or self:IsCurrentlyScoped() or TFA.Enum.HolsterStatus[ statv ] )
end

function SWEP:IdleSounds()
	stat = self:GetStatus()
	if stat ~= TFA.GetStatus("gauss_siege_start") and stat ~= TFA.GetStatus("gauss_siege_loop")  and self.Siege.Sound.Idle_Next ~= -1 then
		self:StopSound( self.Siege.Sound.Idle )
		self.Siege.Sound.Idle_Next = -1
	end
	if self.IdleSound_Next ~= -1 and not self:IsTrueIdle( stat ) then
		self:StopSound( self.IdleSound )
		self.IdleSound_Next = -1
	end
	if not self:CanSoundPredict() then return end
	if SysTime() > self.Siege.Sound.Idle_Next and ( stat == TFA.GetStatus("gauss_siege_start") or stat == TFA.GetStatus("gauss_siege_loop")  ) then
		self.Siege.Sound.Idle_Next = SysTime() + SoundDuration( self.Siege.Sound.Idle ) / self:GetTimeScale() - self.Siege.Sound.FadeTime
		self:EmitSound( self.Siege.Sound.Idle )
	elseif self:IsTrueIdle( stat ) and SysTime() > self.IdleSound_Next then
		self.IdleSound_Next = SysTime() + SoundDuration( self.IdleSound ) / self:GetTimeScale()
		self:EmitSound( self.IdleSound )
	end
end

function SWEP:MuteSounds( offsnd )
	if self.Siege.Sound.Idle_Next ~= -1 then
		self:StopSound( self.Siege.Sound.Idle )
		self.Siege.Sound.Idle_Next = -1
	end
end

function SWEP:ImpactEffectFunc(pos, normal, mattype)
	if CurTime() < self:GetNextPrimaryFire()  then
		local fx = EffectData()
		fx:SetOrigin(pos)
		fx:SetNormal(normal)
		util.Effect("tfa_doomgauss_blast", fx)
	end
end

function SWEP:VortexShoot()
	self.Vortex_Velocity = self.Vortex_Velocity_Shot
end

function SWEP:ChooseShootAnim( ... )
	if SERVER and game.SinglePlayer() then self:CallOnClient("VortexShoot","") end
	if CLIENT then self:VortexShoot() end
	if self.SiegeTransformed then
		return self:SendViewModelAnim( self.Siege.Anims.Shoot )
	end
	return BaseClass.ChooseShootAnim( self, ... )
end

function SWEP:ChooseIdleAnim( ... )
	if TFA.Enum.GaussSiegeStatus[ self:GetStatus() ] then
		self:SendViewModelAnim( self.Siege.Anims.Idle )
	end
end

local sv_cheats_cv = GetConVar("sv_cheats")
local host_timescale_cv = GetConVar("host_timescale")
local ts
function SWEP:GetTimeScale()
	ts = game.GetTimeScale()
	if sv_cheats_cv:GetBool() then
		ts = ts * host_timescale_cv:GetFloat()
	end
	return ts
end

function SWEP:CanSoundPredict()
	if game.SinglePlayer() then
		if CLIENT then return false end
	else
		if not IsFirstTimePredicted() then return false end
	end
	return true
end

function SWEP:PrepNW2()
	if not self.GetNW2Float then
		self.GetNW2Float = self.GetNWFloat
	end
	if not self.SetNW2Float then
		self.SetNW2Float = self.SetNWFloat
	end
	--dont you dare obfuscate nw2 rubat
end

local cv_doorres = GetConVar("sv_tfa_door_respawn")

function SWEP:MakeDoor(ent, dmginfo)
	pos = ent:GetPos()
	ang = ent:GetAngles()
	mdl = ent:GetModel()
	ski = ent:GetSkin()
	ent:SetNotSolid(true)
	ent:SetNoDraw(true)
	prop = ents.Create("prop_physics")
	prop:SetPos(pos)
	prop:SetAngles(ang)
	prop:SetModel(mdl)
	prop:SetSkin(ski or 0)
	prop:Spawn()
	prop:SetVelocity(dmginfo:GetDamageForce() / 2 )
	prop:GetPhysicsObject():ApplyForceOffset(dmginfo:GetDamageForce() / 2, dmginfo:GetDamagePosition())
	prop:SetPhysicsAttacker(dmginfo:GetAttacker())
	prop:EmitSound("physics/wood/wood_furniture_break" .. tostring(math.random(1, 2)) .. ".wav", 110, math.random(90, 110))

	if cv_doorres and cv_doorres:GetInt() ~= -1 then
		timer.Simple(cv_doorres:GetFloat(), function()
			if IsValid(prop) then
				prop:Remove()
			end

			if IsValid(ent) then
				ent.TFADoorHealth = defaultdoorhealth
				ent:SetNotSolid(false)
				ent:SetNoDraw(false)
			end
		end)
	end
end

function SWEP:HandleDoor( ent, dmginfo )
	if not IsValid(ent) then return end
	if ent:GetClass() ~= "func_door_rotating" and ent:GetClass() ~= "prop_door_rotating" then return end
	if not ents.Create then return end
	self:MakeDoor(ent, dmginfo)
	ent:EmitSound("ambient/materials/door_hit1.wav", 100, math.random(90, 110))
end