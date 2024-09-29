
AddCSLuaFile()

ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Thrown Retriever"
ENT.Author			= "Roach"

ENT.Spawnable			= false
ENT.AdminSpawnable		= false

if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
end

function ENT:Initialize()
	self:SetModel("models/weapons/hell/w_hell.mdl")
	if SERVER then
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetTrigger(true)
		self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
	end
	timer.Create("failsafe", 15, 1, function()
		self.ReturnToOwner = true
		self.ShouldHunt = false
		self:SetPos(self.Owner:GetShootPos())
	end)

	local phys = self:GetPhysicsObject()
	if phys and IsValid(phys) then
		phys:Wake()
		phys:SetMass(4)
	end

	self.cspSound = CreateSound( self, "weapons/roach/tomahawk/spin_loop.wav" )
	self.cspSound:Play()

	self.TargetsToIgnore = {}
	self.ReturnToOwner = false
	self.NextVictim = nil
	self.JustThrown = true
	self.ShouldHunt = false
	self.Victims = 0
end

function ENT:OnRemove()
	if self.cspSound and self.cspSound:IsPlaying() then self.cspSound:Stop()end
	timer.Destroy("failsafe")
end

function ENT:Think()
	if SERVER then
		if self.ShouldHunt == true and IsValid(self.NextVictim) and self.ReturnToOwner == false then
			if string.find( self.NextVictim:GetClass(), "headcrab", 1) or string.find( self.NextVictim:GetClass(), "torso", 1) or string.find( self.NextVictim:GetClass(), "scanner", 1) or string.find( self.NextVictim:GetClass(), "manhack", 1) then
				self:SetPos(LerpVector(0.1, self:GetPos(), self.NextVictim:GetPos()+ Vector(0,0,8)))
			else
				self:SetPos(LerpVector(0.1, self:GetPos(), self.NextVictim:GetPos()+ Vector(0,0,64)))
			end
		end
		if self.ReturnToOwner == true then
			if IsValid(self.Owner) and self.Owner:IsPlayer() and self.Owner:Alive() then
				self:SetPos(LerpVector(0.2, self:GetPos(), self.Owner:GetShootPos()))
			else
				SafeRemoveEntity(self)
			end
		end
		for k, v in pairs(ents.FindInSphere(self:GetPos(), 2)) do
			if v:GetClass() == "drop_powerup" or v:GetClass() == "drop_vulture" and v:GetParent() != self then
				v:SetPos(self:GetPos())
				v:SetParent(self)
			end
		end
	end
	self:NextThink(CurTime());  return true;
end

function ENT:StartTouch(ent)
	if ent:IsNPC() or ent.Type == "nextbot" then
		self.TargetsToIgnore[self.Victims + 1] = ent

		self.Victims = self.Victims + 1
		if self.Victims >= 6 then
			self.ReturnToOwner = true
			self.ShouldHunt = false
		end
		self.NextVictim = self:FindNearestEntity(self:GetPos(), 512, self.TargetsToIgnore)
		local dmginfo = DamageInfo()
		dmginfo:SetDamagePosition( self:GetPos() )
		dmginfo:SetDamageType( DMG_BURN )
		dmginfo:SetAttacker( self.Owner )
		dmginfo:SetInflictor( self.Owner:GetActiveWeapon() )
		if self.Charged == 1 then
			dmginfo:SetDamage(2500)
		elseif self.Charged == 2 then
			dmginfo:SetDamage(ent:Health())
		else
			dmginfo:SetDamage(1000)
		end
		ent:TakeDamageInfo( dmginfo )

		if self.Upgraded then
			ParticleEffect("redeemer_hit", self:GetPos(), Angle(0,0,0))
		else
			ParticleEffect("retriever_hit", self:GetPos(), Angle(0,0,0))
		end
		ParticleEffect("retriever_hit", self:GetPos(), Angle(0,0,0))
		self:EmitSound("weapons/roach/tomahawk/proj_hit"..math.random(1,4)..".mp3")
	elseif ent == self.Owner and self.ReturnToOwner == true then
		SafeRemoveEntity(self)
		self:EmitSound("weapons/roach/tomahawk/tom_catch.mp3")
		timer.Simple(5, function()
			if IsValid(ent) and ent:Alive() then
				if engine.ActiveGamemode() == "nzombies" then
					if ent:GetAmmoCount( "nz_specialgrenade" ) < 1 then
						ent:GiveAmmo(1,"nz_specialgrenade",true)
					end
				else
					if IsValid(ent:GetWeapon("weapon_hellsredeemer")) then
						ent:GetWeapon("weapon_hellsredeemer"):SetClip1(1)
					elseif IsValid(ent:GetWeapon("weapon_hellsretriever")) then
						ent:GetWeapon("weapon_hellsretriever"):SetClip1(1)
					end
				end
				ent:EmitSound("weapons/roach/tomahawk/tomahawk_cooldown.mp3")
			end
		end)
	end

	if self.JustThrown == true then
		self.ShouldHunt = true
		self.JustThrown = false
	end
end

function ENT:PhysicsCollide(data)
	self.NextVictim = self:FindNearestEntity(self:GetPos(), 512, self.TargetsToIgnore)
	if IsValid(self.NextVictim) then
		self.ShouldHunt = true
	else
		self.ReturnToOwner = true
		self.ShouldHunt = false
	end
	if self.JustThrown == true then
		self.JustThrown = false
	end
end

function ENT:FindNearestEntity( pos, range, Ent)
	local nearestEnt;

	for _, entity in pairs( ents.FindByClass("npc_*") ) do
		local distance = pos:Distance( entity:GetPos() );
		if !table.HasValue(Ent, entity) then
			if ( distance <= range and distance != 0 ) then
				nearestEnt = entity;
				range = distance;
			end
		end
	end
	for _, entity in pairs( ents.FindByClass("nz_zombie_*") ) do
		local distance = pos:Distance( entity:GetPos() );
		if !table.HasValue(Ent, entity) then
			if ( distance <= range and distance != 0 ) then
				nearestEnt = entity;
				range = distance;
			end
		end
	end



	return nearestEnt;
end

if CLIENT then language.Add("obj_retriever_thrown","Thrown Retriever")end
