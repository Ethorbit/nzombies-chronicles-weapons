SWEP.Base = "tfa_melee_base"
SWEP.Category				= "TFA CS:O" 
SWEP.PrintName = "Dual Nata Knives"
SWEP.Author		= "Kamikaze" --Author Tooltip
SWEP.ViewModel = "models/weapons/tfa_cso/c_dualnata.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_dualnata.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "knife"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Lady's Kiss"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualinfinityfinal"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.


SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
		Pos = {
		Up = -2,
		Right = 1,
		Forward = 3,
		},
		Ang = {
		Up = 80,
		Right = -90,
		Forward = -90
		},
		Scale = 1
}

SWEP.WElements = {
	["dual_nata"] = { type = "Model", model = "models/weapons/tfa_cso/w_dualnata.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(4, 1.5, -0.5), angle = Angle (-75, -60, -40), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

sound.Add({
	['name'] = "Dualnata.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dualnata.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/slash1.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dualnata.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/slash2.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dualnata.Wall",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/wall.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dualnata.Stab",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/stab.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dualnata.Stab_Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dualnata/stab_hit.wav" },
	['pitch'] = {100,100}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 110, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(90,0,-20), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.15, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "Weapon_Knife.Miss", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.5, --time before next attack
		['hull'] = 70, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "Weapon_Knife.Hit",
		['hitworld'] = "Dualnata.Wall"
	},
		{
		['act'] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 110, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-90,0,-10), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.15, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "Weapon_Knife.Miss", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.5, --time before next attack
		['hull'] = 70, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "Weapon_Knife.Hit",
		['hitworld'] = "Dualnata.Wall"
	},
}

SWEP.HitsToKill = { -- Round = # hits to kill
	[1] = 1, [2] = 1, [3] = 1,
	[4] = 1, [5] = 1, [6] = 1,
	[7] = 1, [8] = 1, [9] = 1,
	[10] = 1, [11] = 1, [12] = 1,
	[13] = 1, [14] = 1, [15] = 1,
	[16] = 1, [17] = 1, [18] = 1,
	[19] = 1, [20] = 1, [21] = 1,
	[22] = 1, [23] = 1, [24] = 1,
	[25] = 1, [26] = 1, [27] = 1,
	[28] = 1, [29] = 2, [30] = 2,
	[31] = 2, [32] = 2, [33] = 2,
	[34] = 2, [35] = 2, [36] = 2,
	[37] = 2, [38] = 2, [39] = 2,
	[40] = 2, [41] = 2, [42] = 2,
	[43] = 2, [44] = 3, [45] = 3,
	[46] = 3, [47] = 3, [48] = 4,
	[49] = 3, [50] = 3, [51] = 3, 
	[52] = 3, [54] = 3, [55] = 3,
	[56] = 3, [57] = 3, [59] = 3,
	[60] = 3, [61] = 3, [62] = 3,
	[63] = 3, [64] = 3, [65] = 3,
	[66] = 3, [67] = 3, [68] = 3,
	[69] = 3, [70] = 3
}

function SWEP:StabZombie()
	if (IsValid(self.Owner)) then
		local traceHit = util.TraceHull({
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 110 ),
			filter = function(ent) return ent != self.Owner 
				and ent:GetClass() != "breakable_entry" 
				and ent:GetClass() != "breakable_entry_plank"
				and ent:GetClass() != "invis_wall"
				and ent:GetClass() != "wall_block"
				and ent:GetClass() != "invis_wall_zombie"
				and ent:GetClass() != "wall_block_zombie" end,
			mins = Vector( -10, -10, -10 ),
			maxs = Vector( 10, 10, 10 ),
			mask = MASK_SHOT_HULL
		})

		local zombie = traceHit.Entity
		if ( IsValid(zombie) and zombie.Type == "nextbot" and zombie:Health() > 0 or zombie:IsPlayer() ) then -- They stabbed a zombie
			if SERVER then
				local slashdmg = DamageInfo()
				slashdmg:SetAttacker(self.Owner)
				slashdmg:SetInflictor(self)

				local hits = self.HitsToKill[nzRound:GetNumber()]

				if hits then
					local dmgToDeal = (100 / hits)
					slashdmg:SetDamagePercentage(dmgToDeal)
				else
					slashdmg:SetDamage(150)
					slashdmg:SetMaxDamage(150)
				end

				slashdmg:SetDamageType(DMG_SLASH)
				slashdmg:SetDamageForce(self.Owner:GetAimVector() * math.random(3000, 4000))
				zombie:TakeDamageInfo(slashdmg)

				local effectData = EffectData()
				effectData:SetOrigin(traceHit.HitPos)
				util.Effect("BloodImpact", effectData, true, true)

			end

			self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav") 
		elseif (traceHit.Hit) then
			self.Owner:EmitSound("Dualnata.Wall") 
		end
	end
end

SWEP.EventTable = {
	[ACT_VM_HITLEFT] = {
		{
			["time"] = 0.15,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				wep:StabZombie()
			end,
			["client"] = true,
			["server"] = true
		}
	},
	[ACT_VM_HITRIGHT] = {
		{
			["time"] = 0.15,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				wep:StabZombie()
			end,
			["client"] = true,
			["server"] = true
		}
	}
}

SWEP.Secondary.Attacks = {
	{
		-- ['act'] = ACT_VM_MISSRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		-- ['len'] = 90, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		-- ['dir'] = Vector(0,5,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		-- ['dmg'] = 800, --This isn't overpowered enough, I swear!!
		-- ['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		-- ['delay'] = 0.15, --Delay
		-- ['spr'] = true, --Allow attack while sprinting?
		-- ['snd'] = "Weapon_Knife.Miss", -- Sound ID
		-- ['snd_delay'] = 0.0,
		-- ["viewpunch"] = Angle(0,0,0), --viewpunch angle
		-- ['end'] = 1.25, --time before next attack
		-- ['hull'] = 50, --Hullsize
		-- ['direction'] = "S", --Swing dir,
		-- ['hitflesh'] = "Dualnata.Stab_Hit",
		-- ['hitworld'] = "Dualnata.Wall"
	}
}
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_dualnata")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
