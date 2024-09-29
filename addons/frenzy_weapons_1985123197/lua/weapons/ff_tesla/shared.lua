

SWEP.TracerCount = 1
SWEP.TracerName = "ToolTracer"
SWEP.Category				= "Farming Frenzy"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Tesla Gun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 58			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"
SWEP.Primary.DamageType = DMG_SHOCK
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_sg552.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_sg552.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/sg552/sg552-1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 400		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 20		-- Size of a clip
SWEP.Primary.DefaultClip			= 20	-- Bullets you start with
SWEP.Primary.KickUp			= .4				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .4			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"

SWEP.SelectiveFire		= true

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
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 32	--base damage per bullet
SWEP.Primary.Spread		= .023	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .013 -- ironsight accuracy, should be the same for shotguns


-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.921, -5.974, 2.559)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-7.921, -5.974, 2.559)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(10.786, -20, 0)
SWEP.RunSightsAng = Vector(-4.39, 70, 0)

SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject"

SWEP.CustomBulletCallback = function( ply, tr, dmg )
    --if SERVER then
        if IsValid( tr.Entity ) then
            for k,v in pairs( ents.FindInSphere( tr.HitPos, 75 ) ) do
                if v:IsPlayer() and v != tr.Entity and v:Alive() then
                    local d = DamageInfo()
                    d:SetDamage( math.random( 5, 15 ) )
                    d:SetAttacker( ply )
                    d:SetDamageType( DMG_SHOCK )
                    util.ParticleTracer( "ToolTracer", tr.HitPos, Vector( v:GetPos().x, v:GetPos().y, tr.HitPos.z, false ) )
                    if SERVER then v:TakeDamageInfo( d ) end
                end
            end
        end
    --end
end

function SWEP:PreDrawViewModel( vm )
	Material("models/weapons/v_models/rif_sg552/rif_sg552"):SetTexture("$basetexture", "maxofs2d/models/hover_basic")
end

function SWEP:PostDrawViewModel( vm )
	Material("models/weapons/v_models/rif_sg552/rif_sg552"):SetTexture( "$basetexture", "models/weapons/v_models/rif_sg552/rif_sg552" )
end

function SWEP:DrawWorldModel()
	self:SetMaterial("maxofs2d/models/hover_basic")
	self:DrawModel()
end
SWEP.DisableChambering = true
SWEP.AllowSprintAttack = true