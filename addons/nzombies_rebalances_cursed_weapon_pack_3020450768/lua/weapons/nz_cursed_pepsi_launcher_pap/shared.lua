-- Variables that are used on both client and server
SWEP.Gun = ("tfa_cursed_pepsi_launcher") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "[TFA] [NZ PAP] Cursed Weapons" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Author				= "The Master MLG"
SWEP.Contact				= ""
SWEP.Purpose				= "PSH-ANG!"
SWEP.Manufacturer = "Pepsiman"
SWEP.Instructions				= ""
SWEP.PrintName				= "The Holy Pepsi"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "The Holy Pepsi"
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight					= 89		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

    SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, nil)
            vm:SetSubMaterial(3, nil)
            vm:SetSubMaterial(4, nil)
            vm:SetSubMaterial(5, nil)
            vm:SetSubMaterial(6, nil)
            vm:SetSubMaterial(7, self.nzPaPCamo)
            vm:SetSubMaterial(8, nil)
            vm:SetSubMaterial(9, nil)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
            vm:SetSubMaterial(2, nil)
            vm:SetSubMaterial(3, nil)
            vm:SetSubMaterial(4, nil)
            vm:SetSubMaterial(5, nil)
            vm:SetSubMaterial(6, nil)
            vm:SetSubMaterial(7, nil)
            vm:SetSubMaterial(8, nil)
            vm:SetSubMaterial(9, nil)
        end
    end

SWEP.ViewModelFOV			= 67
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_pepsi_launcher.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pepsi_launcher.mdl"	-- Weapon world model
SWEP.ShowWorldModel			= true
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= false
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.UseHands = true
SWEP.Type = "Can Launcher"

SWEP.Primary.Sound			= Sound("weapons/tfa_cursed_pepsi_launcher/pepsi_launcher_fire.wav")
SWEP.Primary.RPM			= 510			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2		-- Size of a clip
SWEP.Primary.DefaultClip		= 20		-- Bullets you start with
SWEP.Primary.Knockback          = 0
SWEP.Primary.KickUp				= 0.98		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.7	-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.5	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1_grenade"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.StaticRecoilFactor = 0.85
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.Primary.MaxAmmo 			= 20

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.IronFOV			= 61		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode

SWEP.Primary.Damage		= 925	-- Base damage per bullet
SWEP.Primary.Spread		= .028	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.16, 0, 1.6)
SWEP.IronSightsAng = Vector(-1.604, -1.974, 3.862)
SWEP.InspectPos = Vector(4.079, -1.185, -0.705)
SWEP.InspectAng = Vector(8.055, 18.591, 0)
SWEP.RunSightsPos = Vector(2.344, 0, -0.616)
SWEP.RunSightsAng = Vector(-2.54, 25.28, -2.681)


SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.Offset = {
	Pos = {
		Up = -1.789,
		Right = 0.6,
		Forward = 10.848
	},
	Ang = {
		Up = -180,
		Right = -163.792,
		Forward = 0
	},
	Scale = 1.1
}

SWEP.ProjectileEntity = "pepsi_can_lol" --Entity to shoot
SWEP.ProjectileVelocity = 3275 --Entity to shoot's velocity

SWEP.WElements = {
	["world_model"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(3.848, 0.574, -2.241), angle = Angle(-163.625, -180, 0), size = Vector(0.921, 0.921, 0.921), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.DisableChambering = true