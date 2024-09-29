SWEP.Base = "tfa_melee_base"
SWEP.Category				= "TFA CS:O" 
SWEP.PrintName = "Dread Nova"
SWEP.Author				= "Kamikaze" --Author Tooltip
SWEP.Type	= "Epic grade melee weapon"
SWEP.ViewModel = "models/weapons/tfa_cso/c_dreadnova.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_dreadnova_a.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 85
SWEP.UseHands = true
SWEP.HoldType = "melee"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Wallet Slayer"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualsword"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.WElements = {
	["dreadnova_a"] = { type = "Model", model = "models/weapons/tfa_cso/w_dreadnova_a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(6, -1.5, 5.50), angle = Angle(0, -180, 10), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Offset = {
		Pos = {
		Up = -7.5,
		Right = 3,
		Forward = 3,
		},
		Ang = {
		Up = -30,
		Right = 160,
		Forward = -10
		},
		Scale = 1
}

sound.Add({
	['name'] = "Dreadnova.Charge_Start",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/charge_start.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Charge_Release",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/charge_release.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.SlashEnd",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/budgetslayer/slash_end.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.SlashEnd",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/slash_end.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dreadnova/slash1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dreadnova/slash2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Slash3",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dreadnova/slash3.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Slash4",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dreadnova/slash4.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.Stab",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dreadnova/stab.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.HitFleshSlash",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.HitFleshStab",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/stab_hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Dreadnova.HitWall",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dreadnova/wall.wav" },
	['pitch'] = {100,100}
})

SWEP.HitsToKill = { -- Round = # hits to kill
	[1] = 1, [2] = 1, [3] = 1,
	[4] = 1, [5] = 1, [6] = 1,
	[7] = 1, [8] = 1, [9] = 1,
	[10] = 1, [11] = 1, [12] = 2,
	[13] = 2, [14] = 2, [15] = 2,
	[16] = 2, [17] = 2, [18] = 2,
	[19] = 2, [20] = 2, [21] = 2,
	[22] = 2, [23] = 2, [24] = 2,
	[25] = 2, [26] = 2, [27] = 2,
	[28] = 2, [29] = 2, [30] = 3,
	[31] = 3, [32] = 3, [33] = 3,
	[34] = 3, [35] = 3, [36] = 3,
	[37] = 3, [38] = 3, [39] = 4,
	[40] = 4, [41] = 4, [42] = 4,
	[43] = 4, [44] = 4, [45] = 4,
	[46] = 4, [47] = 4, [48] = 4,
	[49] = 4, [50] = 4, [51] = 4,
	[52] = 4, [53] = 4, [54] = 4,
	[55] = 4
}

function SWEP:StabZombie()
	if (IsValid(self.Owner)) then
		local traceHit = util.TraceHull({
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 130 ),
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

		if ( IsValid(zombie) and zombie.Type == "nextbot" and zombie:Health() > 0) then -- They stabbed a zombie
			local randChance = util.SharedRandom("Dis" .. zombie:EntIndex() .. tostring(CurTime()), 1, 100)

			if (randChance <= 60) then
				local effect = EffectData()
				effect:SetScale(1)
				effect:SetMagnitude(1)
				effect:SetScale(3)
				effect:SetRadius(1)
				effect:SetStart(zombie:GetPos())
				effect:SetOrigin(zombie:GetPos())
				effect:SetEntity(zombie)
				effect:SetMagnitude(100)
				util.Effect("TeslaHitboxes", effect, true, true)

				if SERVER then
					local dmg = DamageInfo()
					dmg:SetAttacker(self.Owner)
					dmg:SetInflictor(self)
					dmg:SetDamage(zombie:Health() * 2)
					dmg:SetDamageType(DMG_SLASH)
					dmg:SetDamageForce(self.Owner:GetAimVector() * math.random(3000, 4000))
					zombie:TakeDamageInfo(dmg)
					self.Owner:EmitSound("NPC_CombineBall.KillImpact") 
				end
			elseif (SERVER) then
				local slashdmg = DamageInfo()
				slashdmg:SetAttacker(self.Owner)
				slashdmg:SetInflictor(self)

				local hits = self.HitsToKill[nzRound:GetNumber()]

				if hits then
					local dmgToDeal = (100 / hits)
					slashdmg:SetDamagePercentage(dmgToDeal)
				else
					slashdmg:SetDamage(20)
					slashdmg:SetMaxDamage(20)
				end

				slashdmg:SetDamageType(DMG_SLASH)
				slashdmg:SetDamageForce(self.Owner:GetAimVector() * math.random(3000, 4000))
				zombie:TakeDamageInfo(slashdmg)
				self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav")
			end
		elseif (IsValid(zombie) and zombie:IsPlayer()) then
			self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav")
		elseif (traceHit.Hit) then
			self.Owner:EmitSound("Dreadnova.HitWall") 
		end
	end
end

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 24*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-180,0,90), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.3, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "Dreadnova.HitFleshSlash",
		['hitworld'] = "Dreadnova.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 24*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,90), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.3, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "Dreadnova.HitFleshSlash",
		['hitworld'] = "Dreadnova.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 24*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.3, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "Dreadnova.HitFleshSlash",
		['hitworld'] = "Dreadnova.HitWall",
		['maxhits'] = 25
	},
}

SWEP.EventTable = {
	[ACT_VM_HITLEFT] = {
		{
			["time"] = 0.03,
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
			["time"] = 0.03,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				wep:StabZombie()
			end,
			["client"] = true,
			["server"] = true
		}
	},
	[ACT_VM_PRIMARYATTACK] = {
		{
			["time"] = 0.03,
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
		-- ['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		-- ['len'] = 28*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		-- ['dir'] = Vector(0,60,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		-- ['dmg'] = 4500, --Nope!! Not overpowered!!
		-- ['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		-- ['delay'] = 0.4, --Delay
		-- ['spr'] = true, --Allow attack while sprinting?
		-- ['snd'] = "TFABaseMelee.Null", -- Sound ID
		-- ['snd_delay'] = 0.4,
		-- ["viewpunch"] = Angle(0,0,0), --viewpunch angle
		-- ['end'] = 0.9, --time before next attack
		-- ['hull'] = 128, --Hullsize
		-- ['direction'] = "F", --Swing dir
		-- ['hitflesh'] = "Dreadnova.HitFleshSlash",
		-- ['hitworld'] = "Dreadnova.HitWall",
		-- ['maxhits'] = 25
	}
}

SWEP.InspectionActions = {ACT_VM_RECOIL1}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Holster( ... )
	self:StopSound("Hellfire.Idle")
	return BaseClass.Holster(self,...)
end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_dreadnova")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end

