SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O"
SWEP.PrintName = "Runebreaker - Expert"

SWEP.ViewModel = "models/weapons/tfa_cso/c_runebreaker_expert.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_runebreaker_expert.mdl"
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
SWEP.NZPaPName				= "Soul Edge"
--SWEP.NZPaPReplacement 	= "tfa_cso_stormgiant_tw"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= true	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= true	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.SubMats = {2}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.Offset = {
		Pos = {
		Up = -12,
		Right = 2,
		Forward = 4,
		},
		Ang = {
		Up = 90,
		Right = 175,
		Forward = 5
		},
		Scale = 1
}

sound.Add({
	['name'] = "RunebreakerEX.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/runebreaker/draw.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.ChargeStart",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/runebreaker/charge_start.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.ChargeFinish",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/runebreaker/charge_finish.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.ChargeSlash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/runebreaker/charge_slash_1.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.ChargeSlash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/runebreaker/charge_slash_2.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/runebreaker/slash_1.wav" },
	['pitch'] = {150,150}
})
sound.Add({
	['name'] = "RunebreakerEX.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/runebreaker/slash_2.wav" },
	['pitch'] = {150,150}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 185, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-70,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.015,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.5, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "TFABaseMelee.Null",
		['hitworld'] = "TFABaseMelee.Null",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 185, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(70,0,90), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.8, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1.1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.5, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "TFABaseMelee.Null",
		['hitworld'] = "TFABaseMelee.Null",
		['maxhits'] = 25
	},
}

SWEP.HitsToKill = {} -- Round = # hits to kill

DEFINE_BASECLASS(SWEP.Base)

function SWEP:Initialize()
	for i = 1, 20 do
		self.HitsToKill[i] = 1
	end

	for i = 21, 36 do
		self.HitsToKill[i] = 2
	end

	for i = 37, 69 do
		self.HitsToKill[i] = 3
	end

	for i = 70, 80 do
		self.HitsToKill[i] = 5
	end

	BaseClass.Initialize(self)
end

local function EventAttack(wep)
	local zombsHurt = 0
	local traceHit = util.TraceHull({
		start = wep:GetOwner():EyePos(),
		endpos = wep:GetOwner():GetShootPos() + ( wep:GetOwner():GetAimVector() * 140 ),
		filter = function(ent)
			if (IsValid(ent) and ent:IsValidZombie()) then
				if (zombsHurt >= 7) then return end
				
				if CLIENT then
					local effectData = EffectData()
					effectData:SetOrigin(ent:EyePos())
					effectData:SetScale(6)
					effectData:SetEntity(ent)
					util.Effect("BloodImpact", effectData)
				end

				if SERVER then
					local slashdmg = DamageInfo()
					slashdmg:SetAttacker(wep.Owner)
					slashdmg:SetInflictor(wep)

					local hits = wep.HitsToKill[nzRound:GetNumber()]

					if hits then
						local dmgToDeal = (100 / hits)
						slashdmg:SetDamagePercentage(dmgToDeal)
					else
						slashdmg:SetDamagePercentage(16.6)
					end

					slashdmg:SetDamageType(DMG_DIRECT)
					slashdmg:SetDamageForce(wep.Owner:GetAimVector() * math.random(5000, 8000))
					ent:TakeDamageInfo(slashdmg)

					if zombsHurt < 3 then
						wep.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav") 
					end

					zombsHurt = zombsHurt + 1
				end
			end
		end,
		mins = Vector( -20, -20, -20 ),
		maxs = Vector( 20, 20, 20 ),
		mask = MASK_SHOT_HULL
	})
end

SWEP.EventTable = {
	[ACT_VM_PRIMARYATTACK] = {
		{
			["time"] = 0.1,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				EventAttack(wep)
			end,
			["client"] = true,
			["server"] = true
		}
	},
	[ACT_VM_SECONDARYATTACK] = {
		{
			["time"] = 0.5,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				EventAttack(wep)
			end,
			["client"] = true,
			["server"] = true
		}
	},
}

SWEP.Secondary.Attacks = {
	{
	}
}
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_runebreaker_expert")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
