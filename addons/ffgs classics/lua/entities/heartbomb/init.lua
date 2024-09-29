AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

function ENT:Initialize()
	
	self.Entity:SetModel("models/weapons/tfa_cso/w_heartbomb.mdl")
	
	self:PhysicsInit(SOLID_VPHYSICS)
	--self.Entity:PhysicsInitSphere( ( self:OBBMaxs() - self:OBBMins() ):Length()/4, "metal" )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(6)
		phys:SetDamping(0.1,5)
	end
	
	self:SetFriction(3)
	
	self.timeleft = CurTime() + 1 -- HOW LONG BEFORE EXPLOSION
	self:Think()
	self.NextExplode = CurTime() + self.MidDelay

	if (self.ExplodeTime) then
		self.timeleft = self.ExplodeTime
	end
end

ENT.Delay = 3
ENT.MidDelay = 0.35
ENT.MaxExplodes = 0

function ENT:Think()
if self.timeleft < CurTime() then
  if CurTime()>self.NextExplode then
	self:Explosion()
	self.NextExplode = CurTime() + self.MidDelay
	self.exp = ( self.exp or 0 ) + 1
	if self.exp > self.MaxExplodes then
	  self:Remove()
	end
  end
end
end

function ENT:Explosion()
	self:EmitSound("HeartBomb.Explode")
	if not IsValid(self.Owner) then
		self.Entity:Remove()
		return
	end

	local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
	util.Effect("exp_heartbomb", effectdata)

	--util.BlastDamage(self.Entity, self.Owner, self.Entity:GetPos(), 200, 450)
	local healedPlayers = 0
	for _,v in pairs(ents.FindInSphere(self:GetPos(), 200)) do
		if (IsValid(v) and v:IsPlayer() and IsValid(self:GetOwner())) then
			if (v != self:GetOwner()) then -- Reward them for being nice
				v:SetArmor(math.Clamp(v:Armor() + 50, 50, 150 / healedPlayers))
				self:GetOwner():GivePoints(30)
				print(self:GetOwner():Nick() .. " gave " .. v:Nick() .. " " .. (150 / healedPlayers) .. " armor using Heart Bomb") 
			else
				v:SetArmor(math.Clamp(v:Armor() + 50, 50, 150))
			end

			v:SetHealth(v:GetMaxHealth())
			healedPlayers = healedPlayers + 1
		end

		if !self.WidowsWine then 
			if (IsValid(v) and v:IsValidZombie() and IsValid(self:GetOwner())) then
				local dmg = DamageInfo()
				dmg:SetAttacker(self:GetOwner())
				dmg:SetDamageType(DMG_BULLET)
				dmg:SetDamage(95)
				v:TakeDamageInfo(dmg)
			end
		elseif (IsValid(v) and v:IsValidZombie()) then
			local zombls = ents.FindInSphere(self:GetPos(), 280)
			for _,v in pairs(zombls) do
				if IsValid(v) and v:IsValidZombie() then
					if (IsValid(self) and !v:Visible(self)) then
						table.RemoveByValue(zombls, v)
					end
				end
			end
			
			local e = EffectData()
			e:SetMagnitude(1.5)
			e:SetScale(20) -- The time the effect lasts
			
			local fx = EffectData()
			fx:SetOrigin(self:GetPos())
			fx:SetMagnitude(1)
			util.Effect("web_explosion", fx)
			
			for k,v in pairs(zombls) do
				if IsValid(v) and v:IsValidZombie() then
					v:ApplyWebFreeze(8)
				end
			end
		end
	end
	
	-- local shake = ents.Create("env_shake")
	-- 	shake:SetOwner(self.Owner)
	-- 	shake:SetPos(self.Entity:GetPos())
	-- 	shake:SetKeyValue("amplitude", "2200")	// Power of the shake
	-- 	shake:SetKeyValue("radius", "1400")		// Radius of the shake
	-- 	shake:SetKeyValue("duration", "3")	// Time of shake
	-- 	shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
	-- 	shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
	-- 	shake:Spawn()
	-- 	shake:Activate()

end

/*---------------------------------------------------------
OnTakeDamage
---------------------------------------------------------*/
function ENT:OnTakeDamage( dmginfo )
end


/*---------------------------------------------------------
Use
---------------------------------------------------------*/
function ENT:Use( activator, caller, type, value )
end


/*---------------------------------------------------------
StartTouch
---------------------------------------------------------*/
function ENT:StartTouch( entity )
end


/*---------------------------------------------------------
EndTouch
---------------------------------------------------------*/
function ENT:EndTouch( entity )
end


/*---------------------------------------------------------
Touch
---------------------------------------------------------*/
function ENT:Touch( entity )
end

function ENT:PhysicsCollide(data, physobj)
	if SERVER then
		if self.WidowsWine then
			physobj:SetVelocity(Vector(0,0,0))
			physobj:EnableMotion(false)
			physobj:Sleep()
			
			--self:SetAngles(data.HitNormal:Angle())
			
			if IsValid(data.HitEntity) then
				self:SetParent(data.HitEntity)
			end
		end
	end
end