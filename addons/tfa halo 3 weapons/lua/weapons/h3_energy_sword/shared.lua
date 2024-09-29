if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
	AddCSLuaFile( "cl_init.lua" )
end

if CLIENT then
SWEP.WepSelectIcon		= surface.GetTextureID( "h3_energy_sword" )
	
	killicon.Add( "h3_energy_sword", "VGUI/hud/h3_energy_sword", color_white )
end
-- Variables that are used on both client and server
SWEP.Gun = ("h3_energy_sword") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "Halo 3"
SWEP.Author				= "Pillar"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Type-1 Energy Sword"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight					= 30		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "knife"		-- how others view you carrying the weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false	
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 48
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/halo_3_energy_sword.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_irifle.mdl"	-- Weapon world model
SWEP.ShowWorldModel         = false
SWEP.Base 				= "halo_3_base"
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(44.908, 0, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.06, 0), angle = Angle(-1.116, 15.425, 0) },
	["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.23, 20.188, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.608, 0, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0.629, -1.045, 0), angle = Angle(-6.178, 0.275, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0.171, 7.776, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0.061, -0.504, 0.225), angle = Angle(-4.911, 16.455, 3.701) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0.485, -9.593, 0) }
}



SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/halo_3_assault_rifle/assault32.wav")		-- script that calls the primary fire sound
SWEP.Primary.SilencedSound 	= Sound("weapons/m4a1/m4a1-14.wav")
SWEP.Primary.RPM				= 80		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 100	-- Bullets you start with
SWEP.Primary.DefaultClip			= 100	-- Bullets you start with
SWEP.Primary.KickUp				= 0.0				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.0			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.ScopeZoom			= 7	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.7
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 35	--base damage per bullet
SWEP.Primary.Spread		= 0.03	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.03 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.Primary.Damage		= 230	-- Base damage per bullet


//Enter iron sight info and bone mod info below
-- SWEP.IronSightsPos = Vector(-2.652, 0.187, -0.003)
-- SWEP.IronSightsAng = Vector(2.565, 0.034, 0) 		//not for the knife
-- SWEP.SightsPos = Vector(-2.652, 0.187, -0.003)		//just lower it when running
-- SWEP.SightsAng = Vector(2.565, 0.034, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-6.838, -8.011, -10.075)

-- SWEP.Primary.Sound	= Sound("Weapon_Knife.Slash") //woosh
-- SWEP.KnifeShink = ("Weapon_Knife.HitWall")
-- SWEP.KnifeSlash = ("Weapon_Knife.Hit")
-- SWEP.KnifeStab = ("Weapon_Knife.Stab")

SWEP.Primary.Sound	= Sound("weapons/blades/woosh.wav") //woosh
SWEP.KnifeShink = Sound("weapons/blades/hitwall.wav")
SWEP.KnifeSlash = Sound("pillar_energy_sword/sword_hit_char"..math.random(1,11)..".wav")
SWEP.KnifeStab = Sound("weapons/blades/nastystab.wav")

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/eblade.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.482, 2.104, -3.697), angle = Angle(0, -99.498, -14.825), size = Vector(0.902, 0.902, 0.902), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


if CLIENT then

function SWEP:DetectionHUD(trace)

	if trace.Entity and trace.Entity:IsNPC() || trace.Entity:IsPlayer() then
	color = Color(255,0,0,255)

	else
	color = Color( 0, 161, 255, 255 )
	end
	
	surface.SetTexture(surface.GetTextureID("crosshairs/energy_sword_reticle"))
	surface.SetDrawColor( color )
	surface.DrawTexturedRect( ScrW()/2 - 41, ScrH()/2 - 41, 80, 80 )

end



local BackgroundColor = Color( 0, 0, 0, 76 );

function SWEP:CustomAmmoDisplay()
    self.AmmoDisplay = self.AmmoDisplay or {} 
    self.AmmoDisplay.Draw = false
    
    return self.AmmoDisplay
end

function SWEP:DrawHUD()

	if self.Owner:InVehicle() then return end

		local Trace = {}
	Trace.start = self.Owner:GetShootPos()
	Trace.endpos = Trace.start + (self.Owner:GetAimVector() * 180)
	Trace.filter = { self.Owner, self.Weapon, 0 }
	Trace.mask = MASK_SHOT
	local tr = util.TraceLine(Trace)
	
	self:DetectionHUD(tr)
    
	
	 self.HudAlphaFrac = Lerp(
        FrameTime() * 2,
        self.HudAlphaFrac,
        ( self:Clip1() >= 100 && self:Clip2() <= 0 ) and 0.0 or 13
    );
    
    surface.SetFont( "ChatFont" );
    
    local textW, textH    = surface.GetTextSize( "Power:" );
    local boxW, boxH    = 220, textH * 52 + 5;
    local x, y        = ScrW() - boxW - 300, ScrH() - boxH - 6;
    local alpha        = 255 * self.HudAlphaFrac;
    
    BackgroundColor.a = 76 * self.HudAlphaFrac;
    
    
    x = x + 9
    
    y = y + textH + 4;
    
    surface.SetDrawColor( 111, 202, 255, alpha );
    surface.DrawRect( x, y, boxW * self.Weapon:Clip1() / 100, 26 );
    surface.SetDrawColor( 0, 161, 255, alpha );
    surface.DrawOutlinedRect( x, y, boxW, 26 );
    
end

end

function SWEP:Initialize()
	
	self.HudAlphaFrac    = 0.5

	
	if( SERVER ) then

		self:SetNPCMinBurst( 3 );
		self:SetNPCMaxBurst( 10 );
		self:SetNPCFireRate( self.RPM );
		self:SetNPCMinRest( 0.5 );
		self:SetNPCMaxRest( 2 );
	

	end
	
	if CLIENT then
	
		-- // Create a new table for every weapon instance
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )

		self:CreateModels(self.VElements) -- create viewmodels
		self:CreateModels(self.WElements) -- create worldmodels
		
		-- // init view model bone build function
		if IsValid(self.Owner) and self.Owner:IsPlayer() then
		if self.Owner:Alive() then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				-- // Init viewmodel visibility
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					-- // however for some reason the view model resets to render mode 0 every frame so we just apply a debug material to prevent it from drawing
					vm:SetMaterial("Debug/hsv")			
				end
			end
			
		end
		end
		
	end
	
	if CLIENT then
		local oldpath = "vgui/hud/name" -- the path goes here
		local newpath = string.gsub(oldpath, "name", self.Gun)
		self.WepSelectIcon = surface.GetTextureID(newpath)
	end
	
	self.SightsPos = self.IronSightsPos
	self.SightsAng = self.IronSightsAng

end

function SWEP:Deploy()

	self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	self.Weapon:SetNextPrimaryFire(CurTime() + 1)

	self.Weapon:SetHoldType( "knife" )

	self.Weapon:EmitSound("pillar_energy_sword/fp_energy_sword_ready2.wav", 50, 100)
	
	return true
end

function SWEP:PrimaryAttack()

	if( not self:CanPrimaryAttack() ) then

		
		return true;

	end
	
	vm = self.Owner:GetViewModel()
	self.Weapon:SendWeaponAnim( ACT_VM_HITCENTER )
	self.Owner:ViewPunch(Angle(-1,-3,0))
	if  self:CanPrimaryAttack() and self.Owner:IsPlayer() then
		self.Weapon:EmitSound("pillar_energy_sword/fp_energy_sword_lunge"..math.random(1,3)..".wav")
		if SERVER then
			if !self.Owner:KeyDown(IN_SPEED) and !self.Owner:KeyDown(IN_SPEED) then 
			
				timer.Create("hack-n-slash", .23, 1, function() if not IsValid(self) then return end
				if IsValid(self.Owner) and
				IsValid(self.Weapon) then 
					if self.Owner:Alive() and self.Owner:GetActiveWeapon():GetClass() == self.Gun then 
						self:HackNSlash() end end end)
				self.Owner:SetAnimation( PLAYER_ATTACK1 )
				self.Weapon:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))
		end
		end
	end
end

function SWEP:SecondaryAttack()
	if( not self:CanPrimaryAttack() ) then

		return true;

	end

	vm = self.Owner:GetViewModel()
	self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	self.Owner:ViewPunch(Angle(-2,0,0))
	if  self:CanPrimaryAttack() and self.Owner:IsPlayer() then
		self.Weapon:EmitSound("pillar_energy_sword/fp_energy_sword_melee"..math.random(1,3)..".wav")
		if SERVER then
			if !self.Owner:KeyDown(IN_SPEED) and !self.Owner:KeyDown(IN_RELOAD) then 
				timer.Create("hack-n-slash2", .23, 1, function() if not IsValid(self) then return end
				if IsValid(self.Owner) and
				IsValid(self.Weapon) then 
					if self.Owner:Alive() and self.Owner:GetActiveWeapon():GetClass() == self.Gun then 
						self:HackNSlash2() end end end)
				self.Owner:SetAnimation( PLAYER_ATTACK1 )
				self.Weapon:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))
		end
		end
	end
end

function SWEP:HackNSlash()

	pos = self.Owner:GetShootPos()
	ang = self.Owner:GetAimVector()
	damagedice = math.Rand(.85,1.25)
	pain = self.Primary.Damage * damagedice
	self.Owner:LagCompensation(true)
	local slash = {}
	slash.start = pos
	slash.endpos = pos + (ang * 42)
	slash.filter = self.Owner
	slash.mins = Vector(-8, -10, 0)
	slash.maxs = Vector(8, 10, 5)
	local slashtrace = util.TraceHull(slash)
	
	if IsValid(self.Owner) and IsValid(self.Weapon) then
		if self.Owner:Alive() then if self.Owner:GetActiveWeapon():GetClass() == self.Gun then
			local slash = {}
			slash.start = pos
			slash.endpos = pos + (ang * 190)
			slash.filter = self.Owner
			slash.mins = Vector(-8, -10, 0)
			slash.maxs = Vector(8, 10, 5)
			local slashtrace = util.TraceHull(slash)
			self.Owner:ViewPunch(Angle(-2,10,0))
			if slashtrace.Hit then
				targ = slashtrace.Entity
				if targ:IsPlayer() or targ:IsNPC() then
					self.Weapon:TakePrimaryAmmo(10)
					local effectdata = EffectData()
					effectdata:SetStart(slashtrace.HitPos)
					effectdata:SetOrigin(slashtrace.HitPos)
					effectdata:SetScale(6.5)
					util.Effect("BloodImpact", effectdata)
					self.Weapon:EmitSound("pillar_energy_sword/sword_hit_char"..math.random(1,11)..".wav")
					paininfo = DamageInfo()
					paininfo:SetDamage(pain)
					paininfo:SetDamageType(DMG_SLASH)
					paininfo:SetAttacker(self.Owner)
					paininfo:SetInflictor(self.Weapon)
					paininfo:SetDamageForce(slashtrace.Normal *35000)
					targ:TakeDamageInfo(paininfo)
					 local aimvec = self.Owner:GetAimVector()
					self.Owner:SetVelocity(Vector(aimvec.x*1.25,aimvec.y*1.25,aimvec.z*0.45)*1024)
				end
				
				
			end
			local slash2 = {}
			slash2.start = pos
			slash2.endpos = pos + (ang * 50)
			slash2.filter = self.Owner
			slash2.mins = Vector(-8, -10, 0)
			slash2.maxs = Vector(8, 10, 5)
			local slashtrace2 = util.TraceHull(slash2)
			
			if slashtrace2.Hit then
			
				self.Weapon:EmitSound("pillar_energy_sword/sword_hit_env"..math.random(1,3)..".wav")
					look = self.Owner:GetEyeTrace()
					util.Decal("ManhackCut", look.HitPos + look.HitNormal, look.HitPos - look.HitNormal )
			end
			
		end end
	end
	self.Owner:LagCompensation(false)
end

function SWEP:HackNSlash2()

	pos = self.Owner:GetShootPos()
	ang = self.Owner:GetAimVector()
	damagedice = math.Rand(.85,1.25)
	pain = 50 * damagedice
	self.Owner:LagCompensation(true)
	local slash = {}
	slash.start = pos
	slash.endpos = pos + (ang * 42)
	slash.filter = self.Owner
	slash.mins = Vector(-8, -10, 0)
	slash.maxs = Vector(8, 10, 5)
	local slashtrace = util.TraceHull(slash)
	
	if IsValid(self.Owner) and IsValid(self.Weapon) then
		if self.Owner:Alive() then if self.Owner:GetActiveWeapon():GetClass() == self.Gun then
			local slash = {}
			slash.start = pos
			slash.endpos = pos + (ang * 50)
			slash.filter = self.Owner
			slash.mins = Vector(-8, -10, 0)
			slash.maxs = Vector(8, 10, 5)
			local slashtrace = util.TraceHull(slash)
			self.Owner:ViewPunch(Angle(5,0,0))
			if slashtrace.Hit then
				targ = slashtrace.Entity
				if targ:IsPlayer() or targ:IsNPC() then
					self.Weapon:TakePrimaryAmmo(10)
					local effectdata = EffectData()
					effectdata:SetStart(slashtrace.HitPos)
					effectdata:SetOrigin(slashtrace.HitPos)
					effectdata:SetScale(2.5)
					util.Effect("BloodImpact", effectdata)
					self.Weapon:EmitSound("pillar_energy_sword/sword_hit_char"..math.random(1,11)..".wav")
					paininfo = DamageInfo()
					paininfo:SetDamage(pain)
					paininfo:SetDamageType(DMG_SLASH)
					paininfo:SetAttacker(self.Owner)
					paininfo:SetInflictor(self.Weapon)
					paininfo:SetDamageForce(slashtrace.Normal *35000)
					targ:TakeDamageInfo(paininfo)
				end
				
				
			end
			local slash2 = {}
			slash2.start = pos
			slash2.endpos = pos + (ang * 50)
			slash2.filter = self.Owner
			slash2.mins = Vector(-8, -10, 0)
			slash2.maxs = Vector(8, 10, 5)
			local slashtrace2 = util.TraceHull(slash2)
			
			if slashtrace2.Hit then
			
				self.Weapon:EmitSound("pillar_energy_sword/sword_hit_env"..math.random(1,3)..".wav")
					look = self.Owner:GetEyeTrace()
					util.Decal("ManhackCut", look.HitPos + look.HitNormal, look.HitPos - look.HitNormal )
			end
			
		end end
	end
	self.Owner:LagCompensation(false)
end

function SWEP:IronSight()

	if !self.Owner:IsNPC() then
	if self.ResetSights and CurTime() >= self.ResetSights then
	self.ResetSights = nil
	
	if self.Silenced then
		self:SendWeaponAnim(ACT_VM_IDLE_SILENCED)
	else
		self:SendWeaponAnim(ACT_VM_IDLE)
	end
	end end
	
	if self.CanBeSilenced and self.NextSilence < CurTime() then
		if self.Owner:KeyDown(IN_USE) and self.Owner:KeyPressed(IN_ATTACK2) then
			self:Silencer()
		end
	end
	
	if self.SelectiveFire and self.NextFireSelect < CurTime() then
		if self.Owner:KeyDown(IN_USE) and self.Owner:KeyPressed(IN_RELOAD) then
			self:SelectFireMode()
		end
	end
	
	if self.Owner:KeyDown(IN_SPEED) and not (self.Weapon:GetNWBool("Reloading")) then		-- If you are running
	self.Weapon:SetNextPrimaryFire(CurTime()+0.3)				-- Make it so you can't shoot for another quarter second
	self.IronSightsPos = self.RunSightsPos					-- Hold it down
	self.IronSightsAng = self.RunSightsAng					-- Hold it down
	self:SetIronsights(true, self.Owner)					-- Set the ironsight true
	self.Owner:SetFOV( 0, 0.3 )
	end								

	if self.Owner:KeyReleased (IN_SPEED) then	-- If you release run then
	self:SetIronsights(false, self.Owner)					-- Set the ironsight true
	self.Owner:SetFOV( 0, 0.3 )
	end								-- Shoulder the gun
	
end