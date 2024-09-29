AddCSLuaFile()
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.Spawnable 		= false
ENT.AdminSpawnable 	= false

sound.Add( {
	name = "icestaff_explode",
	volume = 1.0,
	level = 450,
	pitch = {100, 100},
	sound = "weapons/originstaffs/ice/flux/icestaff_flux.wav"
} )

ENT.CollideSND = "icestaff_explode"
ENT.Damage = 200
ENT.MoveSpeed = 3500
function ENT:Initialize()
	self:SetModel( "models/Items/battery.mdl" )
	self:SetNoDraw(true)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:DrawShadow(false)
	self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetSolidFlags(FSOLID_NOT_STANDABLE)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	if CLIENT then return end
	self:SetTrigger(true)
	local eff = ents.Create("info_particle_system")
	eff:SetKeyValue("effect_name", self.TrailPCF)
	eff:SetKeyValue("start_active", "1")
	eff:SetPos(self:GetPos())
	eff:SetParent(self)
	eff:Spawn()
	eff:Activate()
	self.Effect = eff
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:SetMass( 1 )
		phys:EnableGravity( false )
		phys:EnableDrag( false )
		phys:Wake()
		phys:ApplyForceCenter(self:GetForward()*3500)
	else
		self:Remove()
	end
	self.LifeTime = CurTime() + 0.2
end

if SERVER then
	local mat = "effects/freeze_overlayeffect01"
	function ENT:OnCollide(ent, pos)
		for k, v in pairs(ents.FindInSphere(pos, 256)) do
			local dmg = DamageInfo()
			dmg:SetDamage(self.Damage)
			dmg:SetDamageType(DMG_VEHICLE)
			dmg:SetAttacker(self.Owner)
			dmg:SetInflictor(self)
			dmg:SetDamageForce(self:GetVelocity()*-1)
			
			if v:IsNPC() and v:Health() > 0 then
				v:SetPlaybackRate(0.5)
				v.m_Material = v:GetMaterial()
				--v.m_Freeze = true 
				v:SetNWBool("icestaff_frozen", true)
				v:SetMaterial(mat)
				--v:TakeDamageInfo(dmg)
				--/*
				if v:Health() > self.Damage then
					v:TakeDamageInfo(dmg)
				else
					dmg:SetDamage(v:Health()-1)
					v:SetSchedule(SCHED_NPC_FREEZE)
					timer.Simple(0.1, function() 
						if IsValid(v) then 
							v:SetSchedule(68)
							dmg:SetDamage(200)
							v:TakeDamageInfo(dmg) 
						end 
					end)
					v:TakeDamageInfo(dmg)
				end
				--*/
				if v:Health() > 0 then
					if timer.Exists("icestaff_"..v:EntIndex().."defrost") then
						timer.Remove("icestaff_"..v:EntIndex().."defrost")
					end
					timer.Create("icestaff_"..v:EntIndex().."defrost", 5, 1, function() 
						if IsValid(v) and v:Health() > 0 then
							v:SetMaterial(v.m_Material)
							v:SetPlaybackRate(1)
						end
					end)
				end
			end
			
			if v.Type == "nextbot" and v:Health() > 0 then
				v:SetPlaybackRate(0.5)
				if IsValid(v.Loco) then
					v.BackupSpeed = v.Loco:GetDesiredSpeed()
					v.Loco:SetDesiredSpeed(72)
				end
				v.m_Material = v:GetMaterial()
				--v.m_Freeze = true 
				v:SetNWBool("icestaff_frozen", true)
				v:SetMaterial(mat)
				--v:TakeDamageInfo(dmg)
				--/*
				if v:Health() > 1000 then
					v:TakeDamageInfo(dmg)
				else
					dmg:SetDamage(v:Health()-1)
					if IsValid(v.Loco) then
						v.Loco:SetDesiredSpeed(1)
					end
					timer.Simple(0.1, function() 
						if IsValid(v) then 
							dmg:SetDamage(1000)
							v:TakeDamageInfo(dmg) 
						end 
					end)
					v:TakeDamageInfo(dmg)
				end
				--*/
				if v:Health() > 0 then
					if timer.Exists("icestaff_"..v:EntIndex().."defrost") then
						timer.Remove("icestaff_"..v:EntIndex().."defrost")
					end
					timer.Create("icestaff_"..v:EntIndex().."defrost", 5, 1, function() 
						if IsValid(v) and v:Health() > 0 then
							v:SetMaterial(v.m_Material)
							v:SetPlaybackRate(1)
							if IsValid(v.Loco) then
								v.Loco:SetDesiredSpeed(v.BackupSpeed)
							end
						end
					end)
				end
			end
		end
		ParticleEffect( self.CollidePCF, self:GetPos(), Angle(0,0,0) )
		self:EmitSound(self.CollideSND)
		SafeRemoveEntity(self)
	end
	
	function ENT:Think()
		if CurTime() > self.LifeTime then
			SafeRemoveEntity(self)
		end
	end
	
	function ENT:StartTouch(ent)
		if (ent:GetClass() == "prop_dynamic") or (ent:GetClass() == "nz_spawn_zombie_normal") or (ent:GetClass() == "nz_spawn_zombie_special") or (ent:GetClass() == "player_spawns") then return end
		self:OnCollide(ent,self:GetPos())
	end
		
	function ENT:PhysicsCollide(data)
		self:OnCollide(data.HitEntity,data.HitPos)
	end
end
local randomsounds1 = {
	Sound("weapons/shatter.wav"), 
	Sound("weapons/shatter1.wav"), 
	Sound("weapons/shatter3.wav")
}
hook.Add("CreateEntityRagdoll","IceStaffRagdoll",function(ent,rag)
	if IsValid(ent) and ent:GetNWBool("icestaff_frozen") then
		local effectdata = EffectData()
		effectdata:SetOrigin( rag:GetPos() )
		effectdata:SetScale( 3 )
		effectdata:SetMagnitude( 1 )
		timer.Simple(0.5, function() 
			if IsValid(rag) then 
			 --if rag != nil then
				util.Effect( "GlassImpact", effectdata, true, true )
				rag:EmitSound(randomsounds1[math.random(1,3)])
				rag:Remove()
			--end
		        end
		end)
	end
end)

--if CLIENT then
	hook.Add("CreateClientsideRagdoll","IceStaffRagdollClient",function(ent,rag)
		if IsValid(ent) and ent:GetNWBool("icestaff_frozen") then
			local effectdata = EffectData()
			effectdata:SetOrigin( rag:GetPos() )
			effectdata:SetScale( 3 )
			effectdata:SetMagnitude( 1 )
			timer.Simple(0.5, function() 
			      if IsValid(rag) then 
			        --if rag != nil then
					util.Effect( "GlassImpact", effectdata, true, true )
					rag:EmitSound(randomsounds1[math.random(1,3)])
					rag:Remove()
				--end
			      end
			end)
		end
	end)
--end
