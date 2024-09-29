if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("vgui/hud/h3_br_swep")

	killicon.Add( "tfa_h3_br_swep", "VGUI/hud/h3_br_swep", color_white )
end

SWEP.Author							= "Stan"
SWEP.Contact						= "Don't"
SWEP.Purpose						= "A brute's worst fear."
SWEP.Instructions					= "Point and shoot at any alien son of a bitch"
SWEP.Base 							= "nz_rebirth_base"
SWEP.Category 						= "[TFA] [NZ PAP] Halo 3"
SWEP.Spawnable 						= false
SWEP.AdminSpawnable 				= true

SWEP.PrintName 						= "Monkey King's Wrench"
SWEP.NZPaPName						= "Monkey King's Wrench"
SWEP.Slot							= 2			-- Slot in the weapon selection menu
SWEP.SlotPos						= 4			-- Position in the slot

SWEP.ViewModelFOV					= 50
SWEP.ViewModelFlip					= false
SWEP.ViewModel						= "models/weapons/halo_3_battle_rifle.mdl"	-- Weapon view model
SWEP.WorldModel						= "models/br.mdl"	-- Weapon world model
SWEP.ShowWorldModel         		= false
SWEP.HoldType 						= "ar2"
SWEP.UseHands						= true
SWEP.ViewModelBoneMods = {
	["bolt"] = { scale = Vector(1, 1, 1), pos = Vector(0.31, -0.09, -0.406), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.445, 0.421), angle = Angle(0, 0, 0) },
	["body"] = { scale = Vector(0.896, 0.896, 0.896), pos = Vector(-0.06, 0.922, 0.321), angle = Angle(-0.721, 0.423, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(6.441, -2.681, 15.01) }
}

SWEP.Scoped 						= true

    SWEP.Ispackapunched = true

    function SWEP:PreDrawViewModel(vm)
        if self.Ispackapunched then
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, "techh3/invis_t")
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, nil)
            vm:SetSubMaterial(4, self.nzPaPCamo)
        else
            vm:SetSubMaterial(0, nil)
            vm:SetSubMaterial(1, "techh3/invis_t")
            vm:SetSubMaterial(2, "techh3/invis_t")
            vm:SetSubMaterial(3, nil)
            vm:SetSubMaterial(4, nil)
        end
    end

SWEP.Shotgun 						= false
SWEP.ShellTime 						= 0.75

SWEP.MoveSpeed						= 1
SWEP.IronSightsMoveSpeed			= 0.8
SWEP.XHair							= true	-- Used for returning crosshair after scope. Must be the same as DrawCrosshair

SWEP.DisableChambering 				= true
SWEP.Primary.ClipSize 				= 72
SWEP.Primary.DefaultClip 			= 576
SWEP.Primary.MaxAmmo 				= 576

function SWEP:NZMaxAmmo() -- This will allow your magazine to be refill on maxammo pickup

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
        self:SetClip1( self.Primary.ClipSize )
    end
end 

SWEP.Primary.SoundTest				= Sound("h2an/br/halo2_br_fire-"..math.random(1,7)..".wav")		-- script that calls the primary fire sound
SWEP.Primary.SilencedSound 			= nil
SWEP.Primary.Ammo 					= "ar2"
SWEP.Primary.Automatic 				= true
SWEP.Primary.RPM 					= 1080
SWEP.Primary.Knockback          	= 0
SWEP.Primary.Damage 				= 120
SWEP.Primary.DamageHeadshot			= 5.25
SWEP.Primary.NumShots 				= 1
SWEP.Primary.Spread					= .02					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy 			= .0095		-- Ironsight accuracy, should be the same for shotguns
SWEP.SelectiveFire 					= false
SWEP.OnlyBurstFire					= true --No auto, only burst?

SWEP.Primary.KickUp					= 0.062					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown				= 0.04					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.02					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor 	= 0.036 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax 	= 3.8 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement 		= 0.2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery 		= 4.5 --How much the spread recovers, per second.

SWEP.BoltAction 					= false --Un-sight after shooting?
SWEP.BoltTimerOffset 				= 0.25 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-4.282, -19.073, -0.731)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(0, -0.964, -6.827)
SWEP.RunSightsAng = Vector(-1.303, 25.618, -35.307)

SWEP.InspectPos 					= Vector(15.519, -8.502, 1)
SWEP.InspectAng 					= Vector(36.583, 53.466, 34.472)

SWEP.Primary.Range 					= 16*164.042*3 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff 			= 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.TracerCount 						= 1 --0 disables, otherwise, 1 in X chance

SWEP.data 				= {}
SWEP.data.ironsights		= 1

if CLIENT then
	SWEP.Secondary.ScopeTable = {
		scopetex = surface and surface.GetTextureID("scopes/battle_rifle") or 0,
		reticletex = surface and surface.GetTextureID("crosshairs/battle_rifle_h3") or 0
	}
	SWEP.ScopeScale 			= 0.8
	SWEP.ReticleScale 			= 0.2
end

SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.AmmoTypeStrings	= {["ar2"] = "M634 X-HP-SAP"}
SWEP.Type = "Bullpup Battle Rifle"

SWEP.ScopeOverlayTransformMultiplier 	= 1
SWEP.ScopeOverlayTransforms 			= { -30, 20 }
SWEP.Secondary.ScopeZoom				= 2
SWEP.RTMaterialOverride 				= 7
SWEP.ScopeAngleTransforms = {
	{"R",69},
	{"Y",-0},
	{"P",-0},
	{"P",0},
	{"Y",0}
}
SWEP.LuaShellEject 					= false
SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0,-2.0,0)
SWEP.Blowback_Shell_Effect 			= "ShellEject"
SWEP.Blowback_PistolMode 			= false
SWEP.BlowbackBoneMods 				= {
	--["Bolt"] = { scale = Vector(1, 1, 1), pos = Vector(-3.537, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.MuzzleFlashEffect = "h3_br_flash"

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4,
        Right = 1,
        Forward = 2,
        },
        Ang = {
        Up = -1,
        Right = 5,
        Forward = 178
        },
		Scale = 1.0
}

SWEP.VElements = {
	["lens+"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "body", rel = "", pos = Vector(-4.331, -0.187, 5.668), angle = Angle(-35.445, -2.54, 119.341), size = Vector(0.028, 0.028, 0.028), color = Color(0, 67, 255, 233), surpresslightning = true, material = "models/screenspace", skin = 0, bodygroup = {} },
	["lens++"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "body", rel = "", pos = Vector(-4.331, -0.187, 5.668), angle = Angle(-35.445, -2.54, 119.341), size = Vector(0.028, 0.028, 0.028), color = Color(0, 127, 255, 233), surpresslightning = true, material = "models/screenspace", skin = 0, bodygroup = {} },
	["numbers"] = { type = "Quad", bone = "body", rel = "", pos = Vector(-3.631, -0.171, 3.959), angle = Angle(180, 90.193, -64.415), size = 0.0057, draw_func = nil},
	["lens"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "body", rel = "", pos = Vector(-4.331, -0.187, 5.668), angle = Angle(-35.445, -2.54, 119.341), size = Vector(0.028, 0.028, 0.028), color = Color(0, 17, 67, 233), surpresslightning = true, material = "models/screenspace", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/br.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.812, 0.875, -4.619), angle = Angle(0, 89.519, -166.409), size = Vector(1.123, 1.123, 1.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Initialize()
	BaseClass.Initialize( self )
	if CLIENT then
		self.VElements["numbers"].draw_func = function( weapon )
			local clip = weapon:Clip1()
			local display = "32"
			if clip < 10 then 
				display = "0"..clip
			else
				display = clip
			end
			draw.SimpleText(display, "Halo3WepAmmo", 0, 0, Color(0,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
		end
	end
end
 
local sp = game.SinglePlayer()
function SWEP:PrimaryAttack(...)
	if not self:CanPrimaryAttack() then return end
	if self:GetBurstCount() <= 0 then
		if IsFirstTimePredicted() and not ( sp and CLIENT ) then
			if self:GetStat("Primary.SilencedSound") and self:GetSilenced() then
				self:EmitSound(self:GetStat("Primary.SilencedSound"))
			else
				self:EmitSound(Sound("battle_rifle/"..math.random(1,5)..".wav"))
			end
		end
	end
	return BaseClass.PrimaryAttack(self,...)
end

DEFINE_BASECLASS( SWEP.Base )
function SWEP:Think()
	BaseClass.Think( self )
	if self.Owner:KeyPressed(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==true then
		self.Weapon:EmitSound("battle_rifle/dmr_zoom_in.wav")
	end
	
	if self.Owner:KeyReleased(IN_ATTACK2) and !self.Owner:KeyDown(IN_SPEED) and self:GetIronSights()==false then
		self.Weapon:EmitSound("battle_rifle/dmr_zoom_out.wav")
	end	
end