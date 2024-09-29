SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O"
SWEP.PrintName = "Beam Sword"

SWEP.ViewModel = "models/weapons/tfa_cso/c_beam_sword.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_beam_sword.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 75
SWEP.UseHands = true
SWEP.HoldType = "melee2"
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
SWEP.NZPaPName			= "Copyright Lightsword 5000"	-- What name this weapon should use when Pack-a-Punched.
--SWEP.NZPaPReplacement 	= "nil"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually.

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
		Pos = {
		Up = -1,
		Right = 1,
		Forward = 4,
		},
		Ang = {
		Up = 90,
		Right = -10,
		Forward = 180
		},
		Scale = 1.35
}

sound.Add({
	['name'] = "BeamSword.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/draw.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "BeamSword.Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/idle.wav" },
	['pitch'] = {100}
})
sound.Add({
	['name'] = "BeamSword.MidSlash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/midslash1.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "BeamSword.MidSlash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/midslash2.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "BeamSword.Stab",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/stab.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "BeamSword.Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/hit_1.wav", "weapons/tfa_cso/beamsword/hit_2.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "BeamSword.HitWorld",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/beamsword/hit_wall_1.wav", "weapons/tfa_cso/beamsword/hit_wall_2.wav" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "TFABaseMelee.Null",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "common/null.wav" },
	['pitch'] = {95,105}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 150, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.25,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1, --time before next attack
		['hull'] = 150, --Hullsize
		['direction'] = "Y", --Swing dir,
		['hitflesh'] = "BeamSword.Hit",
		['hitworld'] = "BeamSword.HitWorld"
	}
}

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
	[49] = 4, [50] = 4
}

function SWEP:StabZombie()
	if (IsValid(self.Owner)) then
		local traceHit = util.TraceHull({
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 150 ),
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
					slashdmg:SetDamage(90)
					slashdmg:SetMaxDamage(90)
				end

				slashdmg:SetDamageType(DMG_CLUB)
				slashdmg:SetDamageForce(self.Owner:GetAimVector() * math.random(3000, 4000))
				zombie:TakeDamageInfo(slashdmg)
			end

			self.Owner:EmitSound("BeamSword.Hit", 100, 100, 1)
		elseif (traceHit.Hit) then
			self.Owner:EmitSound("BeamSword.HitWorld", 100, 100, 1)
		end
	end
end

SWEP.EventTable = {
	[ACT_VM_PRIMARYATTACK] = {
		{
			["time"] = 0.1,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				wep:StabZombie()
			end,
			["client"] = true,
			["server"] = true
		}
	}
}

-- SWEP.Secondary.Attacks = {
-- 	{
-- 		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
-- 		['len'] = 100, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
-- 		['dir'] = Vector(-60,0,60), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
-- 		['dmg'] = 200, --This isn't overpowered enough, I swear!!
-- 		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
-- 		['delay'] = 0.25, --Delay
-- 		['spr'] = true, --Allow attack while sprinting?
-- 		['snd'] = "TFABaseMelee.Null", -- Sound ID
-- 		['snd_delay'] = 0.2,
-- 		["viewpunch"] = Angle(0,0,0), --viewpunch angle
-- 		['end'] = 1, --time before next attack
-- 		['hull'] = 24, --Hullsize
-- 		['direction'] = "S", --Swing dir,
-- 		['hitflesh'] = "BeamSword.Hit",
-- 		['hitworld'] = "BeamSword.HitWorld"
-- 	}
-- }

--DEFINE_BASECLASS(SWEP.Base)
-- function SWEP:Holster( ... )
-- 	self:StopSound("BeamSword.Idle")
-- 	return BaseClass.Holster(self,...)
-- end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_beam_sword")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
