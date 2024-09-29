SWEP.Base = "tfa_melee_base"
SWEP.Category				= "TFA CS:O" 
SWEP.PrintName = "Green Dragon Blade"

SWEP.ViewModel = "models/weapons/tfa_cso/c_dragonblade.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_dragonblade.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Guan Yu"
SWEP.NZPaPReplacement 	= "tfa_cso_dragonblade_expert"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.Offset = {
		Pos = {
		Up = -8,
		Right = 1,
		Forward = 4,
		},
		Ang = {
		Up = 225,
		Right = 180,
		Forward = 0
		},
		Scale = 1
}

sound.Add({
	['name'] = "DragonSword.Idle",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dragon_blade/idle.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DragonSword.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dragon_blade/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DragonSword.Stab",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dragon_blade/stab_hitidkprobablywontuseitanyways.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DragonSword.Slash1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dragon_blade/slash_1.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DragonSword.Slash2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dragon_blade/slash_2.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DragonSword.HitFlesh",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dragon_blade/hit_1.wav", "weapons/tfa_cso/dragon_blade/hit_2.wav" },
	['pitch'] = {100,100}
})

function SWEP:GetPrimaryDamagePercentage(damage)
	if CLIENT then return 1 end
	local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())

	-- When it starts requiring more than 2 hits to kill a zombie, that's when everyone will label this weapon as "Shit"
	if (damage < baseZombieHP / 2) then
		return 50
	end

	return 100
end

function SWEP:GetSecondaryDamagePercentage(damage)
	if CLIENT then return 1 end
	local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())

	if (damage < baseZombieHP / 4) then
		return 50
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
			if (dam >= 1000) then
				dmginfo:SetDamagePercentage(self:GetSecondaryDamagePercentage(dam))
			else
				dmginfo:SetDamagePercentage(percent)	
			end
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
		['act'] = ACT_VM_PULLBACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 170, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,50,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 125, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.03,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.9, --time before next attack
		['hull'] = 192, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DragonSword.HitFlesh",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 155, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-90,0,90), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 375, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.45, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.45,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.7, --time before next attack
		['hull'] = 192, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DragonSword.HitFlesh",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 155, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-150,0,-65), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 375, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.7, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.7,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.75, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "DualSword.HitFleshStab",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	}
}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Holster( ... )
	self:StopSound("DragonSword.Idle")
	return BaseClass.Holster(self,...)
end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_dragonblade")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
