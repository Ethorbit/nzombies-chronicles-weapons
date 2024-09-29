AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

function ENT:Initialize()
	
	self.Entity:SetModel("models/weapons/tfa_cso/w_m24_grenade.mdl")
	
	self:PhysicsInit(SOLID_VPHYSICS)
	--self.Entity:PhysicsInitSphere( ( self:OBBMaxs() - self:OBBMins() ):Length()/4, "metal" )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(6.5)
		phys:SetDamping(0.1,5)
	end
	
	self:SetFriction(3)
	
	self.timeleft = CurTime() + 2 -- HOW LONG BEFORE EXPLOSION
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

	if not IsValid(self.Owner) then
		self.Entity:Remove()
		return
	end

	if (!self.WidowsWine) then
		local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
		util.Effect("exp_m24", effectdata)
		util.BlastDamage(self.Entity, self.Owner, self.Entity:GetPos(), 370, 130)
		self:EmitSound("weapons/tfa_cso/fragnade/exp" .. math.random(1, 3) ..".wav", self.Pos, 180, 100 )
	else
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

		self:Remove()
	end
	
	-- local shake = ents.Create("env_shake")
	-- 	shake:SetOwner(self.Owner)
	-- 	shake:SetPos(self.Entity:GetPos())
	-- 	shake:SetKeyValue("amplitude", "2000")	// Power of the shake
	-- 	shake:SetKeyValue("radius", "1250")		// Radius of the shake
	-- 	shake:SetKeyValue("duration", "2.5")	// Time of shake
	-- 	shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
	-- 	shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
	-- 	shake:Spawn()
	-- 	shake:Activate()

	self.Entity:EmitSound("weapons/explode" .. math.random(3, 5) .. ".wav", self.Pos, 100, 100 )
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
