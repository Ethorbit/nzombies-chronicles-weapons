SWEP.Base = "tfa_melee_base"
SWEP.Category				= "TFA CS:O" 
SWEP.PrintName = "Crowbar Maverick"
SWEP.Author	= "Kamikaze" --Author Tooltip
SWEP.Type	= "Melee weapon"
SWEP.ViewModel = "models/weapons/tfa_cso/c_crowbarcraft.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_crowbarcraft.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 85
SWEP.UseHands = true
SWEP.HoldType = "melee"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false
--SWEP.StabMissTable = {"ACT_VM_PULLBACK"} --Table of possible hull sequences

SWEP.Secondary.CanBash = false

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "It's Johnny"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualsword"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.Offset = {
		Pos = {
		Up = -6.5,
		Right = 1.5,
		Forward = 3.5,
		},
		Ang = {
		Up = 90,
		Right = 180,
		Forward = 0
		},
		Scale = 1
}

sound.Add({
	['name'] = "CrowbarCraft.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/crowbarcraft/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "CrowbarCraft.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/crowbarcraft/slash1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "CrowbarCraft.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/crowbarcraft/slash2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "CrowbarCraft.Stab",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/crowbarcraft/stab.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Crowbar.HitFleshSlash1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/crowbar/hit1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Crowbar.HitFleshSlash2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/crowbar/hit2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Crowbar.HitFleshSlash3",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/crowbar/hit3.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "Crowbar.HitWall",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/crowbar/wall.wav" },
	['pitch'] = {100,100}
})

SWEP.HitsToKill = { -- Round = # hits to kill
	[1] = 1, [2] = 1, [3] = 1,
	[4] = 2, [5] = 2, [6] = 2,
	[7] = 3, [8] = 3, [9] = 3,
	[10] = 3, [11] = 4, [12] = 4,
	[13] = 4, [14] = 4, [15] = 4,
	[16] = 4, [17] = 4, [18] = 4,
	[19] = 4, [20] = 4
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

		if ( SERVER and IsValid(zombie) and zombie.Type == "nextbot" and zombie:Health() > 0) then -- They stabbed a zombie
			--local randChance = util.SharedRandom("Dis" .. zombie:EntIndex() .. tostring(CurTime()), 1, 100)

			if (math.random(100) <= 50) then
				local dmg = DamageInfo()
				dmg:SetAttacker(self.Owner)
				dmg:SetInflictor(self)
				dmg:SetDamage(zombie:Health() * 2)
				dmg:SetDamageType(DMG_SHOCK)
				dmg:SetDamageForce(self.Owner:GetAimVector() * math.random(3000, 4000))
				zombie:TakeDamageInfo(dmg)
				zombie:EmitSound("weapons/tesla_gun/bounce"..math.random(2)..".wav")
				self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav")
				self.Owner:GivePoints(80)

				local effectData = EffectData()
				effectData:SetOrigin(traceHit.HitPos)
				util.Effect("BloodImpact", effectData, true, true)
			else
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

				local effectData = EffectData()
				effectData:SetOrigin(traceHit.HitPos)
				util.Effect("BloodImpact", effectData, true, true)

				self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav")
			end
		elseif (IsValid(zombie) and zombie:IsPlayer()) then
			self.Owner:EmitSound("nzr/effects/knife/knife_flesh_" .. math.random(0, 4) .. ".wav")
		elseif (traceHit.Hit) then
			self.Owner:EmitSound("Crowbar.HitWall") 
		end
	end
end

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 20*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-5,0,-5), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 0, --Nope!! Not overpowered!!
		['dmgtype'] = bit.bor (DMG_SLASH,DMG_SHOCK), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.2, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.2, --time before next attack
		['hull'] = 64, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "Crowbar.HitFleshSlash3",
		['hitworld'] = "Crowbar.HitWall",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{	
	}
}

SWEP.EventTable = {
	[ACT_VM_MISSLEFT] = {
		{
			["time"] = 0.2,
			["type"] = "lua",
			["value"] = function(wep, viewmodel)
				wep:StabZombie()
			end,
			["client"] = true,
			["server"] = true
		}
	}
}

SWEP.InspectionActions = {ACT_VM_RECOIL1}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Holster( ... )
	self:StopSound("Hellfire.Idle")
	return BaseClass.Holster(self,...)
end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_crowbarcraft")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
