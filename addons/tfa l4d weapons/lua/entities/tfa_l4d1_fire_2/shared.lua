AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.AdminSpawnable = false


function ENT:Draw()
	
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/weapons/tfa_csgo/w_eq_incendiarygrenade_thrown.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_NONE )
		self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		self:DrawShadow( false )
	end
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(0, 0, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(75, 0, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(-75, 0, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(0, 75, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(0, -75, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(75, -75, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(75, 75, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(-75, -75, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(-75, 75, -10), self:GetAngles() )
	timer.Simple(0.8, function()
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(125, 0, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(-125, 0, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(0, 125, -10), self:GetAngles() )
	ParticleEffect( "molotov_groundfire", self:GetPos()+Vector(0, -125, -10), self:GetAngles() )
	end)
	self:EmitSound( "TFA_L4D1_MOLOTOV.LOOP" )
end


function ENT:OnRemove()
	self:EmitSound( "TFA_L4D1_MOLOTOV.IGNITE" )
    self:StopSound( "TFA_L4D1_MOLOTOV.LOOP" )
end