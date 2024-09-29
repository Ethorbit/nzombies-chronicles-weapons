SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject"
SWEP.Silenced = true

SWEP.TracerCount = 1
SWEP.TracerName = "Tracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Hopebringer"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 60			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "smg"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_aug.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_aug.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/usp/usp1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 680		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 50		-- Size of a clip
SWEP.Primary.DefaultClip			= 50	-- Bullets you start with
SWEP.Primary.KickUp			= .4				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .4			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.ScopeZoom			= 5	
SWEP.Secondary.UseACOG			= true -- Choose one scope type
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 28	--base damage per bullet
SWEP.Primary.Spread		= .02	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- ironsight accuracy, should be the same for shotguns
SWEP.Primary.PenetrationMultiplier = 0.0001
-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-8.24, -4.222, 2.24)
SWEP.IronSightsAng = Vector(-0.201, -3.401, -8.443)
SWEP.SightsPos = Vector(-8.24, -4.222, 2.24)
SWEP.SightsAng = Vector(-0.201, -3.401, -8.443)
SWEP.ScopeOverlayThreshold = 0.85
SWEP.RunSightsPos = Vector(9.369, -10.908, -3.689)
SWEP.RunSightsAng = Vector(6.446, 64.627, 0)

function SWEP:PreDrawViewModel( vm )
	Material("models/weapons/v_models/rif_aug/rif_aug"):SetTexture("$basetexture", "models/weapons/rif_aug_medical")
end

function SWEP:PostDrawViewModel( vm )
	Material("models/weapons/v_models/rif_aug/rif_aug"):SetTexture( "$basetexture", "models/weapons/v_models/rif_aug/rif_aug" )
end

SWEP.CustomBulletCallback = function( ply, tr, dmg )
    if IsValid( tr.Entity ) and tr.Entity:IsPlayer() then
        dmg:SubtractDamage( dmg:GetDamage() )
        tr.Entity:SetHealth( math.Clamp( tr.Entity:Health() + math.random( 5, 10 ), 0, tr.Entity:GetMaxHealth() ) )
        tr.Entity:EmitSound( "items/medshot4.wav" )
    end
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true