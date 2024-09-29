ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Trinity - Knockback"
ENT.Category		= "None"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false


ENT.MyModel = "models/weapons/tfa_cso/w_trinity_knockback.mdl"
ENT.MyModelScale = 1
ENT.Damage = 150
ENT.Radius = 500

ENT.IsArmed = false

if SERVER then

	AddCSLuaFile()

	function ENT:Initialize()

		local model = self.MyModel and self.MyModel or "models/weapons/tfa_cso/w_trinity_knockback.mdl"
		
		self.Class = self:GetClass()
		
		self:SetModel(model)
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetHealth(1)
		self:SetModelScale(self.MyModelScale,0)
		
		local phys = self:GetPhysicsObject()
		
		if (phys:IsValid()) then
			phys:Wake()
		end
	end
	
	function ENT:Think()
		--print("Inital Think")
		if !self.IsArmed then return end
		--print("Armed Think")
		for k,v in pairs(ents.FindInSphere(self.Entity:GetPos(),350)) do
			if IsValid(v) and v:IsValidZombie() then
				if v:Health() > 0 then
					self:Explode()
				end
			end	
		end
	end


	function ENT:PhysicsCollide(data, physobj)
		physobj:EnableMotion(false)
		--print("Motion disabled!")
		if self.IsArmed then return end
		--print("Playing impact sound.")
		self:EmitSound(Sound("Trinity.TransformWhite"))
		--print("Arming!")
		self.IsArmed = true
	end
	
	function ENT:Explode()
		local owent = self.Owner and self.Owner or self
		--util.BlastDamage(self,owent,self:GetPos(),self.Radius,self.Damage)
		local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		--fx:SetNormal(data.HitNormal)
		util.Effect("exp_trinity_knockback",fx)
		self:EmitSound(Sound("Trinity.ExplodeWhite"))
		
		local phys_force = 2048
		local push_force = 3250
		for k, target in pairs( ents.FindInSphere( self.Entity:GetPos(), self.Radius ) ) do
			if IsValid( target ) then
				local tpos = target:LocalToWorld( target:OBBCenter() )
				local dir = ( tpos - self.Entity:GetPos() ):GetNormal()
				local phys = target:GetPhysicsObject()

				if IsValid(target) and target:IsValidZombie() and target:Health() > 0 then

					dir.z = math.abs( dir.z ) + 1

					local push = dir * push_force

					local vel = target:GetVelocity() + push
					vel.z = math.min( vel.z, push_force / 3 )

					if (target:Health() > 0 and IsValid(self:GetOwner()) and !target.Forceblown) then
						target.Forceblown = true	
						local dmginfo = DamageInfo()
						dmginfo:SetAttacker(self:GetOwner())
						dmginfo:SetDamageType(DMG_BULLET)
						dmginfo:SetDamagePosition(self:GetPos())
						dmginfo:SetDamage(self.Damage)
						dmginfo:SetMaxDamage(self.Damage)
						target:TakeDamageInfo(dmginfo)	
					end

					if (target.loco) then	
						target.loco:SetVelocity( vel )
						if (!self.WidowsWine and target:GetRunSpeed() > 1 or target:GetWalkSpeed() > 1) then
							local oldRun = target:GetRunSpeed()
							local oldWalk = target:GetWalkSpeed()
							target:SetRunSpeed(1)
							target:SetWalkSpeed(1)
							target.loco:SetDesiredSpeed(0)

							timer.Simple(1, function()
								if (IsValid(target) and target:Health() > 0) then
									target:SetRunSpeed(oldRun)
									target:SetWalkSpeed(oldWalk)
									target.loco:SetDesiredSpeed(oldRun)
									target.Forceblown = false
								end
							end)
						end
					end

					if (self.WidowsWine) then
						local e = EffectData()
						e:SetMagnitude(1.5)
						e:SetScale(20) -- The time the effect lasts
						
						local fx = EffectData()
						fx:SetOrigin(target:GetPos())
						fx:SetMagnitude(1)
						util.Effect("web_explosion", fx)

						target:ApplyWebFreeze(3.5)
					end

					target.was_pushed = { att=self.Entity, t=CurTime(), wep="weapon_fraggrenade" }

				elseif IsValid( phys ) then
					phys:ApplyForceCenter( dir * -1 * phys_force )
				end
			end
		end
		self:Remove()
	end
end

if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
end