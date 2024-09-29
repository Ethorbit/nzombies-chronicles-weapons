AddCSLuaFile()

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG
SWEP.MuzzleFlashEffect = nil
SWEP.TracerCount 		= 0 	--0 disables, otherwise, 1 in X chance
SWEP.Primary.Delay			= 0.35

SWEP.UseHands				= true
SWEP.Type					= "Wonder Weapon"
SWEP.Category				= "CoD Zombies"
SWEP.Author				= "Raven & Hidden"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Mustang & Sally"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 10			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "duel"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Primary.HullSize = nil
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= true
SWEP.ViewModelFOV			= 60
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/mustangandsally/v_ms.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/mustangandsally/w_ms.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.NZWonderWeapon = false
SWEP.NZPreventBox = true

SWEP.Primary.Sound			= Sound("weapons/pap_shot.wav")			-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 300			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 12		-- Size of a clip
SWEP.Primary.DefaultClip		= 50		-- Bullets you start with
--Recoil Related
SWEP.Primary.KickUp			= 0.17				-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.13				-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "MP5_Grenade"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more!


SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= nil		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 115	-- Base damage per bullet
SWEP.Primary.Spread		= .08	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (0, 0, 0)
SWEP.InspectPos = Vector(0, 0, 0)
SWEP.InspectAng = Vector(0, 0, 0)

SWEP.VMPos = Vector(0, -1, -0.3) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.


SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=false
SWEP.CanDrawAnimateSilenced=true
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=false
SWEP.CanIdleAnimateEmpty=false
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=true
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=true
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=true
SWEP.CanSilencerDetachAnimate=true

SWEP.AllowSprintAttack = false

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_ANI --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.01 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_SPRINT_ENTER, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_HIGH, --Number for act, String/Number for sequence
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_SPRINT_IDLE, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK,
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_SPRINT_LEAVE, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
		["transition"] = true
	}
}
SWEP.SprintAnimationLeft = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSLEFT, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_HIGH, --Number for act, String/Number for sequence
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSCENTER, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK,
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSLEFT2, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
		["transition"] = true
	}
}
SWEP.SprintAnimationRight = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSRIGHT, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_HIGH, --Number for act, String/Number for sequence
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSCENTER2, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK,
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_MISSRIGHT2, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
		["transition"] = true
	}
}

SWEP.BaseAnimations = {
	["draw"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DRAW
	},
	["draw_empty_left"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DEPLOY_1
	},
	["draw_empty_right"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DEPLOY_2
	},
	["draw_empty"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DRAW_EMPTY
	},
	["holster"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_HOLSTER
	},
	["holster_empty_left"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY_1
	},
	["holster_empty_right"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY_2
	},
	["holster_empty"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY_EMPTY
	},
	["reload_right"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELEASE
	},
	["reload_left"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_PICKUP
	}
}

DEFINE_BASECLASS( SWEP.Base )

-- Max Ammo function

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

	if SERVER then
		self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
	end

    -- Fixed Hidden's shit (by Ethorbit)
	self:SetClip1(12)
	self:SetClip2(12)
    self:SetNWInt("ShotsLeft", 0)
	self:SetNWInt("ShotsRight", 0)
    self:SetNextPrimaryFire(CurTime())
    self:SetNextSecondaryFire(CurTime())
    self:SetNWBool("isreloading", false)
    self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
    self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)

end


function SWEP:Initialize()

	return BaseClass.Initialize(self)
end

function SWEP:PrimaryAttack()
	if self:CanPrimaryAttack() then
		local ShotsLeft = self:GetNWInt( "ShotsLeft" )
		local ShotsRight = self:GetNWInt( "ShotsRight" )

        -- Quick fix by Ethorbit
        if ShotsLeft == 6 and ShotsRight == 6 then
            ShotsLeft = 0
            ShotsRight = 0
        end

		if ShotsLeft == 6 then self:EmitSound("Weapon_IRifle.Empty") return end
		local aim = self.Owner:GetAimVector()
		local pos = self.Owner:GetShootPos() + self.Owner:GetForward()*40 + self.Owner:GetUp()* -3 + self.Owner:GetRight()*-10

		if self:Ammo1() + self:Clip1() > 2 then
			if ShotsLeft == 5 and ShotsRight < 6 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_DEPLOYED)
			elseif ShotsLeft == 5 and ShotsRight == 6 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_EMPTY)
			elseif ShotsLeft < 5 and ShotsRight == 6 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_DEPLOYED_EMPTY)
			elseif self:Clip1() == 1 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_EMPTY)
			else
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			end
		else
			if self:Clip1() == 2 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_DEPLOYED)
			else
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_EMPTY)
			end
		end
		self:EmitSound(self.Primary.Sound)
		self.Owner:SetAnimation( PLAYER_ATTACK1 )
		self.Weapon:SetNextPrimaryFire(CurTime()+0.2)
		self.Weapon:TakePrimaryAmmo(1)

		if SERVER then
			local rocket = ents.Create("ms_round")
			if !rocket:IsValid() then return false end
			rocket:SetAngles(aim:Angle()+Angle(90,0,0))
			rocket:SetPos(pos)
			rocket:SetOwner(self.Owner)
			rocket:Spawn()
			rocket:Activate()
			--util.ScreenShake(self.Owner:GetShootPos(), 1000, 10, 0.3, 500 )
		end
		self:SetNWInt( "ShotsLeft", ShotsLeft + 1 )
		self.Weapon:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))
	end
end

function SWEP:SecondaryAttack()
	if self:CanPrimaryAttack() then
		local ShotsLeft = self:GetNWInt( "ShotsLeft" )
		local ShotsRight = self:GetNWInt( "ShotsRight" )

        -- Quick fix by Ethorbit
        if ShotsLeft == 6 and ShotsRight == 6 then
            ShotsLeft = 0
            ShotsRight = 0
        end

		if ShotsRight == 6 then self:EmitSound("Weapon_IRifle.Empty") return end
		local aim = self.Owner:GetAimVector()
		local pos = self.Owner:GetShootPos() + self.Owner:GetForward()*40 + self.Owner:GetUp()* -3 + self.Owner:GetRight()* 10

		if self:Ammo1() + self:Clip1() > 2 then
			if ShotsRight == 5 and ShotsLeft < 6 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_1)
			elseif ShotsRight < 5 and ShotsLeft == 6 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
			elseif self:Clip1() == 1 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_3)
			else
				self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
			end
		else
			if self:Clip1() == 2 then
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_1)
			else
				self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_3)
			end
		end
		self:EmitSound(self.Primary.Sound)
		self.Owner:SetAnimation( PLAYER_ATTACK1 )
		self.Weapon:SetNextPrimaryFire(CurTime()+0.2)
		self.Weapon:TakePrimaryAmmo(1)

		if SERVER then
			local rocket = ents.Create("ms_round")
			if !rocket:IsValid() then return false end
			rocket:SetAngles(aim:Angle()+Angle(90,0,0))
			rocket:SetPos(pos)
			rocket:SetOwner(self.Owner)
			rocket:Spawn()
			rocket:Activate()
			--util.ScreenShake(self.Owner:GetShootPos(), 1000, 10, 0.3, 500 )
		end
		self:SetNWInt( "ShotsRight", ShotsRight + 1 )
		self.Weapon:SetNextSecondaryFire(CurTime()+1/(self.Primary.RPM/60))
	end
end

local tldata

function SWEP:Locomote(flipis, is, flipsp, spr, flipwalk, walk)
	if not (flipis or flipsp or flipwalk) then return end
	if not (self:GetStatus() == TFA.Enum.STATUS_IDLE or (self:GetStatus() == TFA.Enum.STATUS_SHOOTING and self:CanInterruptShooting())) then return end
	tldata = nil

	if flipis then
		if is and self:GetStat("IronAnimation.in") then
			tldata = self:GetStat("IronAnimation.in") or tldata
		elseif self:GetStat("IronAnimation.out") and not flipsp then
			tldata = self:GetStat("IronAnimation.out") or tldata
		end
	end

	if flipsp then
		local ShotsLeft = self:GetNWInt( "ShotsLeft" )
		local ShotsRight = self:GetNWInt( "ShotsRight" )

		if spr and self:GetStat("SprintAnimationLeft.in") and ShotsLeft == 6 and ShotsRight < 6 then
			tldata = self:GetStat("SprintAnimationLeft.in") or tldata
		elseif spr and self:GetStat("SprintAnimationRight.in") and ShotsRight == 6 and ShotsLeft < 6 then
			tldata = self:GetStat("SprintAnimationRight.in") or tldata
		elseif spr and self:GetStat("SprintAnimation.in") then
			tldata = self:GetStat("SprintAnimation.in") or tldata
		elseif self:GetStat("SprintAnimationLeft.out") and not flipis and not spr and ShotsLeft == 6 and ShotsRight < 6 then
			tldata = self:GetStat("SprintAnimationLeft.out") or tldata
		elseif self:GetStat("SprintAnimationRight.out") and not flipis and not spr and ShotsRight == 6 and ShotsLeft < 6 then
			tldata = self:GetStat("SprintAnimationRight.out") or tldata
		elseif self:GetStat("SprintAnimation.out") and not flipis and not spr then
			tldata = self:GetStat("SprintAnimation.out") or tldata
		end
	end

	if flipwalk then
		if walk and self:GetStat("WalkAnimation.in") then
			tldata = self:GetStat("WalkAnimation.in") or tldata
		elseif self:GetStat("WalkAnimation.out") and (not flipis and not flipsp) and not walk then
			tldata = self:GetStat("WalkAnimation.out") or tldata
		end
	end


	--self.Idle_WithHeld = true
	if tldata then return self:PlayAnimation(tldata) end
	--self:SetNextIdleAnim(-1)

	return false, -1
end


function SWEP:ChooseHolsterAnim()
	if not self:VMIV() then return end

	local ShotsLeft = self:GetNWInt( "ShotsLeft" )
	local ShotsRight = self:GetNWInt( "ShotsRight" )

	if self:GetActivityEnabled(ACT_VM_UNDEPLOY_EMPTY) and (self:Clip1() == 0) then
		typev, tanim = self:ChooseAnimation("holster_empty")
	elseif self:GetActivityEnabled(ACT_VM_UNDEPLOY_1) and ShotsLeft == 6 and ShotsRight < 6 then
		typev, tanim = self:ChooseAnimation("holster_empty_left")
	elseif self:GetActivityEnabled(ACT_VM_UNDEPLOY_2) and ShotsRight == 6 and ShotsLeft < 6 then
		typev, tanim = self:ChooseAnimation("holster_empty_right")
	elseif self:GetActivityEnabled(ACT_VM_HOLSTER) then
		typev, tanim = self:ChooseAnimation("holster")
	else
		local _
		_, tanim = self:ChooseIdleAnim()

		return false, tanim
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseDrawAnim()
	if not self:VMIV() then return end
	--self:ResetEvents()
	tanim = ACT_VM_DRAW
	success = true

	if self.IsFirstDeploy and CurTime() > (self.LastDeployAnim or CurTime()) + 0.1 then
		self.IsFirstDeploy = false
	end

	local ShotsLeft = self:GetNWInt( "ShotsLeft" )
	local ShotsRight = self:GetNWInt( "ShotsRight" )

	if self:GetActivityEnabled(ACT_VM_DRAW_EMPTY) and (self:Clip1() == 0) then
		typev, tanim = self:ChooseAnimation("draw_empty")
	elseif (self:GetActivityEnabled(ACT_VM_DRAW_DEPLOYED) or self.FirstDeployEnabled) and self.IsFirstDeploy then
		typev, tanim = self:ChooseAnimation("draw_first")
	elseif self:GetActivityEnabled(ACT_VM_DEPLOY_1) and ShotsLeft == 6 and ShotsRight < 6 then
		typev, tanim = self:ChooseAnimation("draw_empty_left")
	elseif self:GetActivityEnabled(ACT_VM_DEPLOY_2) and ShotsRight == 6 and ShotsLeft < 6 then
		typev, tanim = self:ChooseAnimation("draw_empty_right")
	else
		typev, tanim = self:ChooseAnimation("draw")
	end

	self.LastDeployAnim = CurTime()

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseSprintAnim()
	if not self:VMIV() then return end

	local ShotsLeft = self:GetNWInt( "ShotsLeft" )
	local ShotsRight = self:GetNWInt( "ShotsRight" )

    if ShotsLeft == 6 then
		return self:PlayAnimation(self:GetStat("SprintAnimationLeft.loop"))
	elseif ShotsRight == 6 then
		return self:PlayAnimation(self:GetStat("SprintAnimationRight.loop"))
    else
        return self:PlayAnimation(self:GetStat("SprintAnimation.loop"))
    end
end

function SWEP:ChooseReloadAnim()
	if not self:VMIV() then return false, 0 end
	if self.ProceduralReloadEnabled then return false, 0 end

	local ShotsLeft = self:GetNWInt( "ShotsLeft" )
	local ShotsRight = self:GetNWInt( "ShotsRight" )

	if self:GetActivityEnabled(ACT_VM_PICKUP) and ShotsLeft > 0 and ShotsRight == 0 then
		typev, tanim = self:ChooseAnimation("reload_left")
	elseif self:GetActivityEnabled(ACT_VM_RELEASE) and ShotsLeft == 0 and ShotsRight > 0 then
		typev, tanim = self:ChooseAnimation("reload_right")
	elseif self:GetActivityEnabled(ACT_VM_RELOAD_EMPTY) and (self:Clip1() == 0 or self:IsJammed())and not self.Shotgun then
		typev, tanim = self:ChooseAnimation("reload_empty")
	else
		typev, tanim = self:ChooseAnimation("reload")
	end

	local fac = 1

	if self.Shotgun and self.ShellTime then
		fac = self.ShellTime
	end

	self.AnimCycle = 0

	if SERVER and game.SinglePlayer() then
		self.SetNW2Int = self.SetNW2Int or self.SetNWInt
		self:SetNW2Int("AnimCycle", self.AnimCycle)
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim, fac, fac ~= 1)
	else
		return self:SendViewModelSeq(tanim, fac, fac ~= 1)
	end
end



function SWEP:Reload(released)

	local ct = CurTime()
	self:PreReload(released)
	if hook.Run("TFA_PreReload",self,released) then return end

	if self.Owner:IsNPC() then
		return
	end

	if not self:VMIV() then return end

	if not self:IsJammed() then
		if self:Ammo1() <= 0 then return end
		if self:GetStat("Primary.ClipSize") < 0 then return end
	end

	if ( not released ) and ( not self:GetLegacyReloads() ) then return end
	if self:GetLegacyReloads() and not self:GetOwner():KeyDown(IN_RELOAD) then return end

	if self:GetNWBool("isreloading") then return end

	local vm = self.Owner:GetViewModel()
	if (self:Clip1() < self.Primary.ClipSize) then
		if (self.Owner:GetAmmoCount( self.Primary.Ammo ) == 0) then return end
		self:SetNWBool("isreloading", true)

		local _, tanim = self:ChooseReloadAnim()
		self:SetStatus(TFA.Enum.STATUS_RELOADING)
		self:SetStatusEnd(ct + self:GetActivityLength( tanim, true ) )
		self:SetNextPrimaryFire(ct + self:GetActivityLength( tanim, false ) )

		timer.Create("reload",self:GetActivityLength( tanim, false ),1,function() self:SetNWBool("isreloading", false) end)
	end
	self:PostReload(released)
	hook.Run("TFA_PostReload",self)

	self:SetNWInt( "ShotsLeft", 0 )
	self:SetNWInt( "ShotsRight", 0 )

	--return BaseClass.Reload(self)
end

-- Nzombies stuff

SWEP.DisableChambering = true
SWEP.Primary.MaxAmmo = 50

-- PaP Function

SWEP.NZPaPName = "Mustang & Sally"
function SWEP:OnPaP()

	return true
end
