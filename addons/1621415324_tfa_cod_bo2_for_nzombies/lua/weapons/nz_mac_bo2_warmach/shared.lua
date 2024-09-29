SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "RifleShellEject"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.RTOpaque = true
SWEP.NZPaPName = "Dystopic Demolisher"
SWEP.UseHands	= true
SWEP.Type	= "Grenade Launcher"
SWEP.Shotgun = true
SWEP.Primary.Knockback = 0
SWEP.Category				= "CoD BO2 nzombies"
SWEP.Author				= "Mac Tonight"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "War Machine"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
--SWEP.ProjectileEntity = "nz_m67grenade" --Entity to shoot
--SWEP.ProjectileVelocity = 1000 --Entity to shoot's velocity
SWEP.FireModeName = "Semi-Automatic"
SWEP.DisableChambering = true
SWEP.NZWonderWeapon = false

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_bo2_warmachine.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_bo2_warmachine.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("mac_bo2_m32.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 155			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip		= 18		-- Bullets you start with
SWEP.Primary.KickUp				= 1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.6		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "AirboatGun"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 90		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= NZCoDDMG(130 + 200)	-- Base damage per bullet
SWEP.Primary.Spread		= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

DEFINE_BASECLASS(SWEP.Base)
function SWEP:PrimaryAttack()
	if SERVER and self:CanPrimaryAttack() then
		local ent = ents.Create("nz_m67grenade")
		local dir
		local ang = self:GetOwner():EyeAngles()
		dir = ang:Forward()
		ent:SetPos(self:GetOwner():GetShootPos())
		ent:SetOwner(self:GetOwner())
		ent:SetAngles(self:GetOwner():EyeAngles())
		ent.damage = self:GetStat("Primary.Damage")
		ent.mydamage = self:GetStat("Primary.Damage")
	
		if self:GetStat("Primary.ProjectileModel") then
			ent:SetModel(self:GetStat("Primary.ProjectileModel"))
		end
	
		ent:Spawn()
		ent:SetVelocity(dir * 1000)
		local phys = ent:GetPhysicsObject()
	
		if IsValid(phys) then
			phys:SetVelocity(dir * 1000)
		end
	
		if self.ProjectileModel then
			ent:SetModel(self:GetStat("Primary.ProjectileModel"))
		end
	
		ent:SetOwner(self:GetOwner())

		-- We're pack-a-punched, allow explosions on impact
		if self:HasNZModifier("pap") then
			-- On zombies
			ent.Think = function()
				for _,zomb in pairs(ents.FindInBox(ent:GetPos() - Vector(30,30,30), ent:GetPos() + Vector(30,30,30))) do
					if IsValid(zomb) and zomb:IsValidZombie() then
						ent:SetExplosionTimer(0)
						break
					end
				end
	
				ent:NextThink(CurTime())
			end

			-- On everything else
			ent.PhysicsCollide = function(data, physobj)
				if SERVER then		
					ent:SetExplosionTimer(0)
				end
			end
		end
	end

	if not IsValid(self) then return end
	if not self:VMIV() then return end
	if not self:CanPrimaryAttack() then return end

	if TFA.Enum.ShootReadyStatus[self:GetShootStatus()] then
		self:SetShootStatus(TFA.Enum.SHOOT_IDLE)
	end

	if self.CanBeSilenced and self:GetOwner():KeyDown(IN_USE) and (SERVER or not sp) then
		self:ChooseSilenceAnim(not self:GetSilenced())
		local _, tanim = self:SetStatus(TFA.Enum.STATUS_SILENCER_TOGGLE)
		self:SetStatusEnd(l_CT() + self:GetActivityLength(tanim, true))

		return
	end

	self:SetNextPrimaryFire(CurTime() + self:GetFireDelay())

	if self:GetMaxBurst() > 1 then
		self:SetBurstCount(math.max(1, self:GetBurstCount() + 1))
	end

	if self:GetStat("PumpAction") and self:GetShotgunCancel() then return end
	self:SetStatus(TFA.Enum.STATUS_SHOOTING)
	self:SetStatusEnd(self:GetNextPrimaryFire())
	self:ToggleAkimbo()
	local _, tanim = self:ChooseShootAnim()

	if (not sp) or (not self:IsFirstPerson()) then
		self:GetOwner():SetAnimation(PLAYER_ATTACK1)
	end

	if self:GetStat("Primary.Sound") and IsFirstTimePredicted() and not (sp and CLIENT) then
		if self:GetOwner():IsPlayer() and self:GetStat("Primary.LoopSound") and (not self:GetStat("Primary.LoopSoundAutoOnly", false) or self.Primary.Automatic) then
			self:EmitGunfireLoop()
		elseif self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitGunfireSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitGunfireSound(self:GetStat("Primary.Sound"))
		end
	end

	self:TakePrimaryAmmo(self:GetStat("Primary.AmmoConsumption"))

	if self:Clip1() == 0 and self:GetStat("Primary.ClipSize") > 0 then
		self:SetNextPrimaryFire(math.max(self:GetNextPrimaryFire(), CurTime() + (self.Primary.DryFireDelay or self:GetActivityLength(tanim, true))))
	end

	if self:GetStat("Primary.Sound") and IsFirstTimePredicted() and not (sp and CLIENT) then
		if self:GetOwner():IsPlayer() and self:GetStat("Primary.LoopSound") and (not self:GetStat("Primary.LoopSoundAutoOnly", false) or self.Primary.Automatic) then
			self:EmitGunfireLoop()
		elseif self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
			self:EmitGunfireSound(self:GetStat("Primary.SilencedSound"))
		else
			self:EmitGunfireSound(self:GetStat("Primary.Sound"))
		end
	end

	--self:ShootBulletInformation()
	self:UpdateJamFactor()

	if self.MuzzleFlashEnabled and (not self:IsFirstPerson() or not self.AutoDetectMuzzleAttachment) then
		self:ShootEffectsCustom()
	end

	self:ShootEffectsCustom()

	local _, CurrentRecoil = self:CalculateConeRecoil()
	self:Recoil(CurrentRecoil, IsFirstTimePredicted())
end

function SWEP:NZMaxAmmo() 

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Primary.MaxAmmo = 18 
SWEP.SubMats = {2}
SWEP.Ispackapunched = 0 

function SWEP:OnPaP()
	self.MuzzleFlashEffect = "pap_muzzleflash"
	self.Ispackapunched = 1 
	self.Primary.Damage = NZCoDDMG(130 + 450) 
	self.Primary.ClipSize = 12
	self.Primary.MaxAmmo = 48
	self.Shotgun = false
	self.SequenceRateOverride = {[ACT_VM_RELOAD] = 0.5, [ACT_VM_RELOAD_EMPTY] = 0.5} --Like above but changes animation length to a target
	self.SequenceRateOverrideScaled = {[ACT_VM_RELOAD] = 0.5, [ACT_VM_RELOAD_EMPTY] = 0.5} --Like above but scales animation length rather than being absolute
	
	self:ClearStatCache()
	return true
end

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-3.54, -5.617, 0.079)
SWEP.SightsAng = Vector(-0.5, 0, 0)
SWEP.RunSightsPos = Vector ()
SWEP.RunSightsAng = Vector ()
SWEP.InspectPos = Vector(7.92, -6.87, 0.159)
SWEP.InspectAng = Vector(13.899, 34.7, 13.1)


SWEP.ShellTime			= .6

SWEP.Offset = {
        Pos = {
        Up = 0,
        Right = 2,
        Forward = -7,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2, 0, 0), angle = Angle(0, 0, 0) }
}