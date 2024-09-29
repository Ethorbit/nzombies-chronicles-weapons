SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O"
SWEP.PrintName = "THANATOS-9"

SWEP.ViewModel = "models/weapons/tfa_cso/c_thanatos_9.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_thanatos_9.mdl"
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

SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Grim Reaper"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualinfinityfinal"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.Precision = 15
SWEP.Primary.DamageHeadshot = 1

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
		Pos = {
		Up = -30,
		Right = 1,
		Forward = 5,
		},
		Ang = {
		Up = -90,
		Right = 0,
		Forward = 180
		},
		Scale = 1.35
}

sound.Add({
	['name'] = "THANATOS9.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/thanatos9/draw.wav" },
	['pitch'] = {100,100}
})

sound.Add({
	['name'] = "THANATOS9.Swing1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/thanatos9/swing_1.wav" },
	['pitch'] = {100,100}
})

sound.Add({
	['name'] = "THANATOS9.Swing2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/thanatos9/swing_1.wav" },
	['pitch'] = {100,100}
})

SWEP.HitsToKill = {} -- Round = # hits to kill

DEFINE_BASECLASS(SWEP.Base)

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 180, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-150,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2000, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 2.2, --time before next attack
		['hull'] = 512, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "Weapon_Knife.Hit",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 130, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-800,-5,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1.3, --Delay
		['spr'] = false, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 3.2, --time before next attack
		['hull'] = 512, --Hullsize
		['direction'] = "S", --Swing dir,
		['hitflesh'] = "Weapon_Knife.Hit",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 1
	}
}

function SWEP:GetPrimaryDamagePercentage(damage)
	if CLIENT then return 1 end
	local baseZombieHP = nzCurves.GenerateHealthCurve(nzRound:GetNumber())

	-- When it starts requiring more than 2 hits to kill a zombie, that's when everyone will label this weapon as "Shit"
	if self:HasNZModifier("pap") then
		if (damage < baseZombieHP / 2) then
			return 50
		end
	else
		if (damage < baseZombieHP / 2) then
			return 50
		end
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
	return self:GetSecondaryDamagePercentage(damage)
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

function SWEP:AOEDamage(radius, isspecial, wep, cb)
	local zombies_killed = 0

	for _,zmb in pairs(ents.FindInSphere(wep.Owner:GetPos(), radius)) do
		if (IsValid(zmb) and zmb:IsValidZombie() and zmb:Health() > 0 and zmb.Visible and zmb:Visible(wep.Owner)) then
			if isspecial and zombies_killed >= 3 or zombies_killed >= 12 then return end

			if IsValid(zmb) and IsValid(wep.Owner) then 
				local dmgInfo = DamageInfo()
				dmgInfo:SetDamageType(DMG_SLASH)

				local dist = zmb:GetPos():DistToSqr(wep.Owner:GetPos())

				if isspecial then
					local dmg = 2000
					local percent = self:GetSpecialAttackDamagePercentage(dmg)

					if (percent == 100) then
						dmgInfo:SetDamage(dmg)
					else
						dmgInfo:SetDamagePercentage(percent)
					end
				else
					local dmg = wep:HasNZModifier("pap") and 2000 or 1000
					local percent = self:GetSecondaryDamagePercentage(dmg)

					if (percent == 100) then
						dmgInfo:SetDamage(dmg)
					else
						dmgInfo:SetDamagePercentage(percent)
					end
				end
				
				dmgInfo:SetAttacker(wep.Owner)
				
				if (zmb:Health() <= dmgInfo:GetDamage()) then
					zombies_killed = zombies_killed + 1
				end

				zmb:TakeDamageInfo(dmgInfo)

				if cb and IsValid(zmb) and IsValid(wep.Owner) then
					cb(wep.Owner, zmb)
				end
			end 
		end
	end
end

SWEP.EventTable = {
	[ACT_VM_SECONDARYATTACK] = {
		{
			["time"] = 0.85,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				if !IsValid(wep) or !IsValid(wep.Owner) then return end

				if (wep.NextSecondaryAttack and CurTime() < wep.NextSecondaryAttack) then 
					if CLIENT then
						wep.Owner.Thanatos9Rot = 0
						wep.Owner.Thanatos9Speed = 5
						wep.Owner.Thanatos9Spinning = true

						timer.Simple(0.3, function()
							wep.Owner.Thanatos9Spinning = false
						end)
					end

					if SERVER then
						timer.Create("Thanatos9ContantAOEShort" .. wep.Owner:EntIndex(), 0.1, 3, function()
							wep.Owner:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
						end)

						effects.BeamRingPoint(wep.Owner:EyePos() - Vector(0,0,15), 0.3, 150, 50, 5, 1, Color(255, 255, 255, 100))
						wep:AOEDamage(100, false, wep)
					end
				return end

				if CLIENT then
					wep.Owner.Thanatos9Rot = 0
					wep.Owner.Thanatos9Speed = 5
					wep.Owner.Thanatos9Spinning = true
					timer.Simple(1.5, function()
						wep.Owner.Thanatos9Spinning = false
					end)
				end

				wep.NextSecondaryAttack = CurTime() + 20

				if SERVER then	
					wep.Owner:EmitSound("ambient/wind/wind_hit2.wav")
					
					effects.BeamRingPoint(wep.Owner:EyePos() - Vector(0,0,15), 1, 200, 50, 90, 1, Color(255, 255, 255, 100))
					
					timer.Create("Thanatos9ContantAOE" .. wep.Owner:EntIndex(), 0.1, 12, function()
						wep.Owner:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
						wep:AOEDamage(150, true, wep)
					end)

					-- Suck enemies in
					for _,zmb in pairs(ents.FindInSphere(wep.Owner:GetPos(), 200)) do 
						if IsValid(zmb) and zmb:IsValidZombie() and zmb:Health() > 0 then
							local force = (wep.Owner:GetPos() - zmb:GetPos()):GetNormalized() * 3000
							zmb:SetVelocity(force)
							zmb.loco:SetVelocity(force)
						end
					end

					timer.Simple(0.3, function()
						if !IsValid(wep) or !IsValid(wep.Owner) then return end	

						wep.Owner:EmitSound("ambient/machines/dthumper_dust.wav")

						-- Push enemies away
						effects.BeamRingPoint(wep.Owner:GetPos(), 1, 150, 900, 30, 2, Color(255, 255, 255, 100))
						for _,zmb in pairs(ents.FindInSphere(wep.Owner:GetPos(), 900)) do
							if IsValid(zmb) and zmb:IsValidZombie() and zmb:Health() > 0 then
								local dist = zmb:GetPos():DistToSqr(wep.Owner:GetPos()) 
								local force = (zmb:GetPos() - wep.Owner:GetPos()):GetNormalized() * 3000			
								zmb:SetVelocity(force)
								zmb.loco:SetVelocity(force)
							end
						end
					end)
				end
			end,
			["client"] = true,
			["server"] = true
		}
	}
}

function SWEP:OnPaP()
	self.Primary.Attacks[1]["dmg"] = 3000
	self.Primary.Attacks[1]["end"] = 1.5
	self.Secondary.Attacks[1]["end"] = 2.3
end

local minsVec = Vector(-8, -8, -8)
local maxsVec = Vector(8, 8, 8)
local upVec = Vector(0, 0, 1)

if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_thanatos9")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection

	local thirdPVar = GetConVar("simple_thirdperson_enabled")
	hook.Add("CalcView", "Thanatos9Spin", function(ply, pos, angles, fov, ...)
		if LocalPlayer().Thanatos9Spinning then
			if (thirdPVar and thirdPVar:GetInt() > 0) then return end

			local view = {
				["origin"] = pos,
				["angles"] = angles,
				["fov"] = fov
			}

			ply.Thanatos9Rot = (ply.Thanatos9Rot and ply.Thanatos9Rot + ply.Thanatos9Speed) or 20
			view.angles:RotateAroundAxis(Vector(0, 0, 1), ply.Thanatos9Rot)

			return view
		end
	end)

	hook.Add("CalcViewModelView", "Thanatos9SpinModel", function(wep, vm, oldpos, oldang, pos, ang, ...)
		if wep.Owner == LocalPlayer() and wep.Owner.Thanatos9Spinning then
			if (thirdPVar and thirdPVar:GetInt() > 0) then return end

			local view = {
				["origin"] = pos,
				["angles"] = ang
			}

			wep.Owner.Thanatos9Rot = (wep.Owner.Thanatos9Rot and wep.Owner.Thanatos9Rot + wep.Owner.Thanatos9Speed) or 20
			view.angles:RotateAroundAxis(Vector(0, 0, 1), wep.Owner.Thanatos9Rot)

			return view
		end
	end)
end