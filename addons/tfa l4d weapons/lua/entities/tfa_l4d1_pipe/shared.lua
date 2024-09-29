AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.VJ_AddEntityToSNPCAttackList = true
ENT.TimeSinceSpawn = 0
ENT.Zombies = {}


function ENT:Draw()
	self:DrawModel()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/wick/weapons/l4d1/w_pipebomb.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
	end
	timer.Simple(7,function() if IsValid(self) then self:Explode() self:Remove() end end)
	timer.Simple(0,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(1,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(2,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(3,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(3.5,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(4,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(4.4,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(4.8,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(5.2,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(5.6,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.2,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.3,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.4,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.5,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.6,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.7,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.8,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	timer.Simple(6.9,function() if IsValid(self) then self:EmitSound("TFA_L4D1_PIPE.BIP") end end)
	
	ParticleEffectAttach("weapon_pipebomb_blinking_light",PATTACH_POINT_FOLLOW,self,2)
	ParticleEffectAttach("weapon_pipebomb_fuse",PATTACH_POINT_FOLLOW,self,1)
	self:EmitSound("TFA_L4D1_PUMP.HELPHANDEX")

end


function ENT:Think()
	for _, x in ipairs(ents.FindInSphere(self:GetPos(),6000)) do
		if x:IsNPC() && string.find(x:GetClass(),"npc_vj_l4d_com_") && x.Zombie_CanHearPipe == true && x.Zombie_NextPipBombT < CurTime() then
			x.Zombie_NextPipBombT = CurTime() + 15
			table.insert(x.VJ_AddCertainEntityAsEnemy,self)
			x:AddEntityRelationship(self,D_HT,99)
			x.MyEnemy = self
			x:SetEnemy(self)
			table.insert(self.Zombies,x)
		end
	end
	self.TimeSinceSpawn = self.TimeSinceSpawn + 0.2
	for _,v in ipairs(self.Zombies) do
		if IsValid(v) then
			v:SetLastPosition(self:GetPos())
			v:VJ_TASK_GOTO_LASTPOS()
		end
	end
end
 

function ENT:PhysicsCollide( data )
	if SERVER and data.Speed > 150 then
		self:EmitSound( "TFA_L4D1_PIPE.BOUNCE" )
	end
end

function ENT:OnRemove()
end

function ENT:Explode()
	if SERVER then
	ParticleEffect( "weapon_pipebomb", self:GetPos()+Vector(0, 0, 10), self:GetAngles() )
	self:EmitSound( "TFA_L4D1_PIPE.EXPLODE" )
	util.BlastDamage( self, self.Owner, self:GetPos(), 500, 300 )
	
	local spos = self:GetPos()
	local trs = util.TraceLine({start=spos + Vector(0,0,64), endpos=spos + Vector(0,0,-32), filter=self})
	util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)    
	end
end