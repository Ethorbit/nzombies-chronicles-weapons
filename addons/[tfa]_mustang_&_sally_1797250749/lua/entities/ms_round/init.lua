AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

function ENT:Initialize()
	self.Owner = self:GetOwner()
	self.Entity:SetModel( "models/led.mdl" )
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,  	
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   --after all, gmod is a physics  	
	self.Entity:SetSolid( SOLID_VPHYSICS )        -- CHEESECAKE!    >:3
	self.Entity:SetColor(Color(45,55,40,255))
	self:SetNoDraw(true)

	Glow = ents.Create("env_sprite")
	Glow:SetKeyValue("model","orangecore2.vmt")
	Glow:SetKeyValue("rendercolor","255 150 100")
	Glow:SetKeyValue("scale","0.2")
	Glow:SetPos(self.Entity:GetPos()-(self.Entity:GetUp()*15))
	Glow:SetParent(self.Entity)
	Glow:Spawn()
	Glow:Activate()

	Shine = ents.Create("env_sprite")
	Shine:SetPos(self.Entity:GetPos()-(self.Entity:GetUp()*15))
	Shine:SetKeyValue("renderfx", "0")
	Shine:SetKeyValue("rendermode", "5")
	Shine:SetKeyValue("renderamt", "255")
	Shine:SetKeyValue("rendercolor", "255 130 100")
	Shine:SetKeyValue("framerate12", "20")
	Shine:SetKeyValue("model", "light_glow03.spr")
	Shine:SetKeyValue("scale", "0.3")
	Shine:SetKeyValue("GlowProxySize", "1")
	Shine:SetParent(self.Entity)
	Shine:Spawn()
	Shine:Activate()

	local phys = self:GetPhysicsObject()
	if !IsValid(phys) then return end
	timer.Simple(0, function() 
		phys:Wake()
		phys:SetBuoyancyRatio(0)
		phys:SetMass(1)
		phys:ApplyForceCenter(self:GetUp() * 99999)
	end)
	util.SpriteTrail( self, 0, Color( 168, 168, 168 ), false, 10, 0, 0.3, 0.0078125, "cable/smoke.vmt" )
end 
 
function ENT:PhysicsCollide(data, physobj)
	local trdata = {
		start = self:GetPos(),
		endpos = self:GetPos() + data.HitNormal*32,
		filter = {self}
	}
	local tr = util.TraceLine(trdata)
	if tr.HitSky then self:Remove() return end
	
	util.BlastDamage(self.Entity, self.Owner, data.HitPos, 1, 500)
	util.BlastDamage(self.Entity, self.Owner, data.HitPos, 177, 3000)

	local effectdata = EffectData()
	effectdata:SetOrigin(data.HitPos)			// Where is hits
	effectdata:SetNormal(data.HitNormal)		// Direction of particles
	effectdata:SetEntity(self.Entity)		// Who done it?
	effectdata:SetScale(1.8)			// Size of explosion
	--effectdata:SetRadius(tr.MatType)		// What texture it hits
	effectdata:SetMagnitude(18)			// Length of explosion trails
	if self:WaterLevel() == 0 then
		util.Effect( "explosion", effectdata )
	else
		util.Effect("WaterSurfaceExplosion", effectdata)
	end
	--util.ScreenShake(data.HitPos, 10, 5, 1, 3000 )
	util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
	self.Entity:Remove()
end