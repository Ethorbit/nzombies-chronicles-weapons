SWEP.Base = "tfa_melee_base"
SWEP.Category				= "TFA CS:O" 
SWEP.PrintName = "SKULL-9"

SWEP.ViewModel = "models/weapons/tfa_cso/c_skull_9.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_skull_9.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 100
SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = true

SWEP.Secondary.CanBash = false
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1
SWEP.Primary.Automatic = true

SWEP.VMPos = Vector(0,-5,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "CROSSBONES-18"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualinfinityfinal"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Attachments = {
    [1] = { atts = { "cso_skull9blood"} },
}

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
		Pos = {
		Up = 6,
		Right = 0.5,
		Forward = 20,
		},
		Ang = {
		Up = 90,
		Right = -3,
		Forward = 180
		},
		Scale = 1.5
}

sound.Add({
	['name'] = "SKULL9.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/skull9/draw.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "SKULL9.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/skull9/slash_1.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "SKULL9.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/skull9/slash_2.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "SKULL9.HitFlesh",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/skull9/hit_flesh.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "SKULL9.HitWorld",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/skull9/hit_wall.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "TFABaseMelee.Null",
	['channel'] = CHAN_STATIC,
	['sound'] = { "common/null.wav" },
	['pitch'] = {95,105}
})

SWEP.HitsToKill = {} -- Round = # hits to kill

DEFINE_BASECLASS(SWEP.Base)

function SWEP:GetPrimaryDamagePercentage(damage)
	if CLIENT then return 1 end
	local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())
	return 100
end

function SWEP:GetSecondaryDamagePercentage(damage)
	if CLIENT then return 1 end
	local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())

	if (damage < baseZombieHP / 4) then
		return 25
	end

	return 100
end

function SWEP:ApplyDamage(trace, dmginfo, attk)
	local dam, force = dmginfo:GetBaseDamage(), dmginfo:GetDamageForce()	

	dmginfo:SetDamageForce(force)
	-- dmginfo:SetAttacker( self:GetOwner() )
	self:ApplyForce(trace.Entity, dmginfo:GetDamageForce(), trace.HitPos)
	dmginfo:SetDamageForce(force)
	-- dmginfo:SetAttacker( self:GetOwner() )

	dmginfo:SetDamagePosition(trace.HitPos)
	dmginfo:SetReportedPosition(trace.StartPos)

	if SERVER then
		local percent = self:GetPrimaryDamagePercentage(dam)
		if (dam > 0 and percent < 100) then
			dmginfo:SetDamagePercentage(percent)	
		else
			local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())
			if (dam > baseZombieHP) then
				dmginfo:SetDamagePercentage(100)
			else
				dmginfo:SetDamagePercentage(50)
			end
		end
	end

	trace.Entity:DispatchTraceAttack(dmginfo, trace, fwd)
end

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 140, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,-90), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 100000, --This isn't overpowered enough, I swear!! ;)
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.5, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "SKULL9.HitFlesh",
		['hitworld'] = "SKULL9.HitWorld"
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 140, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-180,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 400, --Nope!! Not overpowered!! B-baka!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 2.1, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "L", --Swing dir
		['hitflesh'] = "SKULL9.HitFlesh",
		['hitworld'] = "SKULL9.HitWorld"
	}
}

function SWEP:OnPaP()
	self.SequenceRateOverride = {[ACT_VM_PRIMARYATTACK] = 1.5, [ACT_VM_PRIMARYATTACK] = 1.5} --Like above but changes animation length to a target
	self.SequenceRateOverrideScaled = {[ACT_VM_PRIMARYATTACK] = 1.5, [ACT_VM_PRIMARYATTACK] = 1.5} --Like above but scales animation length rather than being absolute
	self.Primary.Attacks[1]["end"] = 1.2
	self.Secondary.Attacks[1]["dmg"] = 3000
	self.Secondary.Attacks[1]["end"] = 1.6
end


if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_skull9")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
