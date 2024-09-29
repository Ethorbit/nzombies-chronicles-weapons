
/*-------------------------------------------------*\
|  Copyright © 2016 by Roach, All rights reserved.  |
\*-------------------------------------------------*/
AddCSLuaFile()

ENT.Type 			= "anim"
ENT.Base 			= "base_anim"

-- Configs --

ENT.TrailPCF = "lgtstaff_ult_chargedshot"
ENT.TrailSND = "weapons/originstaffs/lightning/ult_charged_proj_loop.wav"
ENT.CollidePCF = "lgtstaff_impact"
ENT.CollideSND = {
	"weapons/originstaffs/lightning/lightning_flash_00.wav",
	"weapons/originstaffs/lightning/lightning_flash_01.wav",
	"weapons/originstaffs/lightning/lightning_flash_02.wav",
}
ENT.Damage = 300
ENT.HasTimeout = false
ENT.TimeoutPeriod = 0
ENT.MoveSpeed = 750

-- Configs --
/*
function ENT:DealCollideEffects(v,att,inf)
	local p = v:GetPos()
	ParticleEffectAttach("zomb_elec",PATTACH_POINT_FOLLOW,v,0)
	v:EmitSound("staff/lightning/victim_shocked.mp3")
	if SERVER then
		for i=0,v:Health() do
			local num = "0."..i
			timer.Simple(tonumber(num),function()
				-- local d = DamageInfo()
				-- d:SetDamage(1)
				-- d:SetDamageType(DMG_SHOCK)
				-- d:SetDamagePosition(v:GetPos())
				-- if IsValid(v) then v:TakeDamageInfo(d)end
				if IsValid(v) then v:TakeDamage(1,v,v)end
			end)
		end
	end
	timer.Simple(1,function()
		ParticleEffect("zomb_elec_afterfx",p,Angle(0,0,0),nil)
	end)
end

function ENT:OnCollide(data,physobj,NoData)
	NoData = NoData or false

	if #self.CollideSND < 2 then
		self:EmitSound(self.CollideSND[1], 75, 100)
	else
		self:EmitSound(self.CollideSND[math.random(1,#self.CollideSND)], 75, 100)
	end
	if !NoData then
		ParticleEffect(self.CollidePCF,data.HitPos,self:GetAngles(),nil)
		for i=0,9 do
			local num = "0."..i
			timer.Simple(tonumber(num),function()ParticleEffect("lgtstaff_impact",data.HitPos,Angle(0,0,0),nil)end)
		end
		ParticleEffect("zomb_elec_afterfx",data.HitPos,Angle(0,0,0),nil)
		timer.Simple(1,function()ParticleEffect("lgtstaff_impact_afterfx",data.HitPos,Angle(0,0,0),nil)end)

	
		if IsValid(data.HitEntity) then 
			self:DealCollideEffects(data.HitEntity)
		end
		local _ent = ents.FindInSphere(self:GetPos(),50)
		for i=0,#_ent do
			if #_ent < 1 then break end
			local v = table.GetFirstValue(_ent)
			if (v:IsPlayer() or v:IsNPC()) then
				if v ~= OWNER then
					self:DealCollideEffects(v,OWNER,self)
				end
			end
			table.RemoveByValue(_ent,v)
		end
	end
	if IsValid(effect) then effect:Remove() end
	SafeRemoveEntity(self)
end
*/


function ENT:Initialize()
	self:SetModel( "models/dav0r/hoverball.mdl" )
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
	self.LifeTime = CurTime() + math.Rand(3,4)
end
/*
function ENT:Draw()
	local Pos = self:GetPos()
	if SERVER then return end
	
	render.SetMaterial(Material("sprites/blueglow2"))
	render.DrawSprite(self:GetPos(), 50, 50, Color(255, 255, 255))
end
*/
if SERVER then
	function ENT:OnCollide(ent,hitpos)
		if self.DoRemove then return end
		if self.Owner == ent then
			return true
		end
		self.DoRemove = true
		--self.Trail:SetParent(self.Effect)
		self.Effect:SetParent(NULL)
		SafeRemoveEntityDelayed(self.Effect,1)
		self.Effect:Fire("Stop")
		self:PhysicsDestroy()
		SafeRemoveEntityDelayed(self,0)
		self:NextThink(CurTime())
		local d = DamageInfo()
			d:SetDamage( ent:Health() )
			d:SetAttacker( self.Owner )
			d:SetDamageType( DMG_SHOCK )
			if ent != self.Owner then
				ent:TakeDamageInfo( d )
			end
		--debugoverlay.Sphere(hitpos,5,1)
		ParticleEffect( self.CollidePCF, hitpos, self:GetAngles() )
		self:EmitSound(self.CollideSND)
		return true
	end
	function ENT:StartTouch(ent)
		if (ent:GetClass() == "prop_dynamic") or (ent:GetClass() == "nz_spawn_zombie_normal") or (ent:GetClass() == "nz_spawn_zombie_special") or (ent:GetClass() == "nz_spawn_player") then return end
		self:OnCollide(ent,self:GetPos())
	end
	function ENT:Think(engine)
		local ct = CurTime()
		if self.DoRemove then
			self:SetMoveType(MOVETYPE_NONE)
			self:NextThink(ct+1)
			return true
		end
		if self.LifeTime < ct then
			self:OnCollide(self,self:GetPos())
		end
		self:NextThink(ct+0.1)
		return true
	end
	function ENT:PhysicsCollide(data)
		self:OnCollide(data.HitEntity,data.HitPos)
	end
end