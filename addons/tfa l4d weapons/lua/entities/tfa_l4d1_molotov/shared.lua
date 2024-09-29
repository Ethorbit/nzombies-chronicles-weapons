AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw()
	self:DrawModel()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/wick/weapons/l4d1/w_molotov.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
	end
	self:EmitSound("TFA_L4D1_SNIPER.DRAW")
	self:EmitSound("TFA_L4D1_MOLOTOV.IGNITE")
	self:EmitSound("TFA_L4D1_MOLOTOV.FLY")
	self.ActiveTimer = CurTime() + 1.5
	self.IgniteEnd = 0
	self.IgniteEndTimer = CurTime()
	self.IgniteStage = 0
	self.IgniteStageTimer = CurTime()
	ParticleEffectAttach("weapon_molotov_thrown",PATTACH_POINT_FOLLOW,self,1)
	self:PhysicsInitSphere( 8 )
end

function ENT:PhysicsCollide( data,phys )
	if SERVER and self.ActiveTimer > CurTime() || data.Speed >= 150 then
		self:EmitSound(Sound("GlassBottle.ImpactHard"))
	end
	local ang = data.HitNormal:Angle()
	ang.p = math.abs( ang.p )
	ang.y = math.abs( ang.y )
	ang.r = math.abs( ang.r )
	
	if ang.p > 90 or ang.p < 60 then
		self:EmitSound(Sound("GlassBottle.ImpactHard"))

		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	else
		if SERVER then
			local molot = ents.Create( "tfa_l4d1_fire_2" )
			molot:SetPos( self:GetPos() )
			molot:SetOwner( self.Owner )
			molot:Spawn()
			SafeRemoveEntityDelayed(molot, 13)
			
			local molot1 = ents.Create( "tfa_l4d1_fire_1" )
			local pos = self:GetPos()
			molot1:SetPos( self:GetPos() )
			molot1:SetOwner( self.Owner )
			molot1:SetCreator( self )
			molot1:Spawn()
			SafeRemoveEntityDelayed(molot1, 13)
			
			self:SetMoveType( MOVETYPE_NONE )
			self:SetSolid( SOLID_NONE )
			self:PhysicsInit( SOLID_NONE )
			self:SetCollisionGroup( COLLISION_GROUP_NONE )
			self:SetRenderMode( RENDERMODE_TRANSALPHA )
			self:SetColor( Color( 255, 255, 255, 0 ) )
			self:DrawShadow( false )
			self:StopParticles()
		end
		self:EmitSound("TFA_L4D1_MOLOTOV.DETONATE")
		ParticleEffect("molotov_explosion", self:GetPos(), Angle(0,0,0), nil) 
		self:StopSound( "TFA_L4D1_MOLOTOV.FLY" )
		self.IgniteEnd = 1
		self.IgniteEndTimer = CurTime() + 7
		self.IgniteStage = 1
		self.IgniteStageTimer = CurTime() + 0.1
	end
	SafeRemoveEntityDelayed(self, 10)
end