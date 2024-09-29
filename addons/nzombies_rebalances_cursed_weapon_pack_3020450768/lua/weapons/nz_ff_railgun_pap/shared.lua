SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0.6 --The delay to actually eject things
SWEP.LuaShellEffect = "ToolTracer" --wont actually do anything

SWEP.TracerCount = 1
SWEP.TracerName = "ToolTracer"
SWEP.Category				= "[TFA] [NZ PAP] Cursed Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.MuzzleFlashEffect = "pap_muzzleflash"
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Railway Frenzy"		-- Weapon name (Shown on HUD)	
SWEP.NZPaPName				= "Railway Frenzy"
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 56			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"
SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, self.nzPaPCamo)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, nil)
        end
    end

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_scout.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_scout.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= false
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/railgun-fire.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 144		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip			= 72	-- Bullets you start with
SWEP.Primary.KickUp			= 0.65				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.65			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.65		-- Maximum up recoil (stock)
SWEP.Primary.Knockback = 0
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.MaxAmmo 			= 72

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 500	--base damage per bullet
SWEP.Primary.DamageHeadshot 	= 2
SWEP.Primary.Spread		= .0065	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .000065 -- ironsight accuracy, should be the same for shotguns
SWEP.BoltAction	=	true

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.72, -3.826, 3)
SWEP.IronSightsAng = Vector(0.809, -0.25, -1.542)
SWEP.SightsPos = Vector(-6.72, -3.826, 3)
SWEP.SightsAng = Vector(0.809, -0.25, -1.542)
SWEP.RunSightsPos = Vector(9.027, -15.131, 0)
SWEP.RunSightsAng = Vector(-2.777, 70, 0)

function SWEP:PreDrawViewModel( vm ) -- Paint the deagle before drawing it
     Material("models/weapons/v_models/snip_scout/snip_scout"):SetVector("$color2", Vector(0.5, 1, 1) )
end

function SWEP:PostDrawViewModel( vm ) -- Paint it back
     Material("models/weapons/v_models/snip_scout/snip_scout"):SetVector("$color2", Vector(1, 1, 1) )
end

function SWEP:DrawWorldModel()
	self:SetColor( Color( 128, 255, 255 ) )
	self:DrawModel()
end

SWEP.CustomBulletCallback = function( ply, tr, dmg )
    dmg:SubtractDamage( dmg:GetDamage() )
    if SERVER then
        local explode = ents.Create( "env_explosion" ) //creates the explosion
        explode:SetPos( tr.HitPos )
        explode:Spawn()
        explode:EmitSound( "weapons/railgun-expl.wav" )
        explode:SetKeyValue( "spawnflags", bit.bor( 16, 64, 2048, 128, 256, 512 ) )
        explode:SetKeyValue( "iMagnitude", 75 )
        explode:Fire( "Explode", 0, 0 )
    end
end

SWEP.VElements = {
	["rail"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "v_weapon.scout_Parent", rel = "", pos = Vector(-0.401, -2.974, -17.889), angle = Angle(0, 0, -180), size = Vector(0.05, 0.019, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = false