AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Damage = 1

function ENT:Draw()
end

function ENT:Initialize()
	self.Damage = 1
	self:SetNWBool("extinguished",false)
	if SERVER then
		self:SetModel( "models/weapons/tfa_csgo/w_eq_incendiarygrenade_thrown.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_NONE )
		self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		self:DrawShadow( false )
	end
	self:NextThink( CurTime() )
end

function ENT:Think()
	if SERVER then
		for k, v in pairs( ents.FindInSphere( self:GetPos(), 150 ) ) do
			if v:IsPlayer() then
				if v:GetPos():Distance( self:GetPos() ) < 150 then
					damage = DamageInfo()
					damage:SetDamage( math.random( 3, 7 ) )
					damage:SetAttacker( self:GetOwner() )
					damage:SetInflictor( self:GetCreator() )
					damage:SetDamageType( DMG_BURN )
					v:TakeDamageInfo( damage )
				end
			elseif v:IsNPC() then
				v:Ignite( 30 )
			end
		end
	end
	self:NextThink( CurTime() + math.Rand( 0.2, 0.7 ) )
end