-- SWEP.Primary.MaxAmmo = 10
-- SWEP.Primary.DefaultClip = 10

SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O"
SWEP.PrintName = "Warhammer Storm Giant"
SWEP.Author	= "Kamikaze" --Author Tooltip
SWEP.ViewModel = "models/weapons/tfa_cso/c_stormgiant.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_storm_giant.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.NoHeadshots = true

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
--SWEP.NZPaPName				= "BIG FUCKING HAMMER"
SWEP.NZPaPReplacement 	= "tfa_cso_stormgiant_tw"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

DEFINE_BASECLASS(SWEP.Base)

SWEP.Precision = 100

SWEP.Offset = {
		Pos = {
		Up = 0,
		Right = 1,
		Forward = 3,
		},
		Ang = {
		Up = 90,
		Right = 180,
		Forward = 0
		},
		Scale = 1.5
}

sound.Add({
	['name'] = "StormGiant.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/idle.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash1.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash2.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash1_Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash1_hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash2_Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash2_hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.HitFlesh",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/hit_flesh1.wav", "weapons/tfa_cso/stormgiant/hit_flesh2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.HitWorld",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/hit_world1.wav", "weapons/tfa_cso/stormgiant/hit_world2.wav", "weapons/tfa_cso/stormgiant/hit_world3.wav"},
	['pitch'] = {100,100}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 160, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-140,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2000, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_DISSOLVE, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 2.45, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "R", --Swing dir,
		['hitflesh'] = "StormGiant.HitFlesh",
		['hitworld'] = "StormGiant.HitWorld",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 160, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,-100), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 2.7, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "StormGiant.HitFlesh",
		['hitworld'] = "StormGiant.HitWorld",
		['maxhits'] = 25
	}
}

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
		return 25
	end

	return 100
end

function SWEP:GetSpecialAttackDamagePercentage(damage)
	return self:GetPrimaryDamagePercentage(damage)
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

-- SWEP.Primary.Automatic	= false
-- SWEP.Secondary.Automatic	= false

SWEP.HitsToKill = {} -- Round = # hits to kill

DEFINE_BASECLASS(SWEP.Base)

function SWEP:AOEDamage(radius, isspecial, wep)
	local zombies_killed = 0

	for _,zmb in pairs(ents.FindInSphere(wep.Owner:GetPos(), radius)) do
		if (IsValid(zmb) and zmb:IsValidZombie() and zmb:Health() > 0 and zmb.Visible and zmb:Visible(wep.Owner)) then
			timer.Simple(0, function()
				if zombies_killed >= 15 then return end

				if IsValid(zmb) and IsValid(wep.Owner) then 
					local dmgInfo = DamageInfo()
					dmgInfo:SetDamageType(DMG_DISSOLVE)

					if isspecial then
						local dmg = 2500
						local percent = self:GetSpecialAttackDamagePercentage(dmg)

						if (percent == 100) then
							dmgInfo:SetDamage(dmg)
						else
							dmgInfo:SetDamagePercentage(percent)
						end
					else
						local dmg = 1500
						local percent = self:GetSecondaryDamagePercentage(dmg)

						if (percent == 100) then
							dmgInfo:SetDamage(dmg)
						else
							dmgInfo:SetDamagePercentage(percent)
						end
					end

					dmgInfo:SetAttacker(wep.Owner)
					
					if (zmb:Health() <= dmgInfo:GetDamage()) then
						zmb:DissolveEffect()
						zombies_killed = zombies_killed + 1
					end

					zmb:TakeDamageInfo(dmgInfo)
				end 
			end)
		end
	end
end

SWEP.EventTable = {
	[ACT_VM_SECONDARYATTACK] = {
		{
			["time"] = 1,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				if !IsValid(wep) or !IsValid(wep.Owner) then return end

				if (wep.NextSecondaryAttack and CurTime() < wep.NextSecondaryAttack) then 
					wep.Owner:EmitSound("ambient/energy/weld" .. math.random(1,2) .. ".wav")
					effects.BeamRingPoint(wep.Owner:GetPos(), 0.5, 200, 250, 30, 113, Color(100, 100, 255))
					wep:AOEDamage(100, false, wep)
				return end

				wep.NextSecondaryAttack = CurTime() + 20

				wep.Owner:EmitSound("ambient/energy/weld" .. math.random(1,2) .. ".wav")
				wep.Owner:EmitSound("ambient/explosions/explode_1.wav")
				effects.BeamRingPoint(wep.Owner:GetPos(), 0.5, 300, 310, 30, 113, Color(100, 100, 255))

				wep:AOEDamage(200, true, wep)

				timer.Simple(0.3, function()
					if !IsValid(wep.Owner) then return end

					wep.Owner:EmitSound("ambient/wind/wind_hit" .. math.random(1,3) .. ".wav")
					effects.BeamRingPoint(wep.Owner:GetPos(), 1, 300, 1500, 80, 1, Color(100, 100, 255))

					timer.Simple(0.5, function()
						if !IsValid(wep.Owner) then return end

						for _,zmb in pairs(ents.FindInSphere(wep.Owner:GetPos(), 1400)) do
							if (IsValid(zmb) and zmb:IsValidZombie() and zmb:Health() > 0 and !zmb.NZBoss) then
								zmb:ApplySlowEffect(math.random(10, zmb:GetRunSpeed() - 10), 1.5)

								-- timer.Simple(math.Rand(0.5, 2), function()
								-- 	if !IsValid(wep.Owner) then return end

								-- 	if IsValid(zmb) and zmb:Health() > 0 and zmb:Visible(wep.Owner) then
								-- 		local shockChance = math.random(4) == 4 
								-- 		if shockChance then
								-- 			local dmgInfo = DamageInfo()
								-- 			dmgInfo:SetDamageType(DMG_DISSOLVE)
								-- 			dmgInfo:SetDamagePercentage(100)
								-- 			dmgInfo:SetAttacker(wep.Owner)
								-- 			zmb:Kill(dmgInfo)	
								-- 		end
								-- 	end
								-- end)
							end
						end
					end)
				end)
			end,
			["client"] = false,
			["server"] = true
		}
	}
}

if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_stormgiant")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
