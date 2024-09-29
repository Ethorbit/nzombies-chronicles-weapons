ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Gersh Device"
ENT.Author = "Zet0r"

ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Hasblown = nil

ENT.ExplosionSounds = {
	"nz/gersh/implode/wpn_gersh_implode_long.wav"
}

if SERVER then
	AddCSLuaFile()
end

function ENT:Initialize()
	if SERVER then
		self.HardDeleteTime = CurTime() + 60 -- Just in case something goes wrong and we are never auto removed
		self:SetModel("models/weapons/gersch/w_gersch.mdl")
		self:PhysicsInitSphere(1, "metal_bouncy")
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetSolid(SOLID_VPHYSICS)
		phys = self:GetPhysicsObject()

		if phys and phys:IsValid() then
			phys:Wake()
		end
	end
end


function ENT:PhysicsCollide(data, physobj)
	if SERVER then
		local vel = physobj:GetVelocity():Length()
		if vel > 100 then
			self.Hasblown = false
			self:EmitSound("nz/gersh/bounce/bounce_00.wav", 75, 100)
		end

		local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
		local NewVelocity = physobj:GetVelocity()
		NewVelocity:Normalize()

		LastSpeed = math.max( NewVelocity:Length(), LastSpeed )

		local TargetVelocity = NewVelocity * LastSpeed * 0.64

		physobj:SetVelocity( TargetVelocity )
		
		if vel < 150 then
			local selfang1 = self:GetAngles()[1]
			local selfang2 = self:GetAngles()[2]
			local selfang3 = self:GetAngles()[3]
			local ang = Angle(0,selfang2,0)
			self:SetAngles(ang)
		end
		if vel < 100 and self.Hasblown == false then
			self:SetMoveType(MOVETYPE_NONE)
			self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			self:SetExplosionTimer(8)
			self.Hasblown = true
		end
	end
end

function ENT:SetExplosionTimer( time )

	-- Make Zombies target this over players
	self:SetTargetPriority(TARGET_PRIORITY_SPECIAL)
	
	UpdateAllZombieTargets(self)

	SafeRemoveEntityDelayed( self, time +1 ) --fallback
	
	self:EmitSound("nz/gersh/exp/wpn_gersh_exp.wav", 100)
	self:EmitSound("nz/gersh/gersch_loop.wav", 100)
	
	local pos = self:GetPos() + Vector(0,0,64)
		
	local effectData = EffectData()
	effectData:SetStart( pos )
	effectData:SetOrigin( pos )
	effectData:SetMagnitude(time)
	util.Effect("gershdevice_hole", effectData)
	local killer = ents.Create("gershdevice_killer")
	if ( !IsValid( killer ) ) then return end
	killer:SetPos( self:GetPos() + Vector( 0, 0, 64 ) )
	killer:Spawn()
	killer:Activate()
	killer:SetOwner(self.Owner)
	
	timer.Simple(time - 1.5, function()
		if IsValid(self) and IsValid(killer) then
			killer:Remove()
		end
	end)

	timer.Simple(time - 1.5, function()
		if IsValid(self) then
			self:EmitSound("nz/gersh/implode/wpn_gersh_implode_long.wav", 85)
		end
	end)
	
	timer.Simple(time - 1.5, function()
		if IsValid(self) then
			self:Remove()
		end
	end)
end

function ENT:Draw()
	self:DrawModel()
end

function ENT:Think()
	if (SERVER and self.HardDeleteTime and CurTime() > self.HardDeleteTime) then
        self:Remove()
    return end
end