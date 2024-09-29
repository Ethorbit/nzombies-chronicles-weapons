ENT.Author = "Ethorbit"
ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "nZombies Orb"
ENT.Category		= "None"
ENT.Spawnable		= false
ENT.AdminSpawnable	= false

ENT.MyModelScale = 1
ENT.Damage = 9999999
ENT.Radius = 200
ENT.LifeTime = 7
ENT.Velocity = 100
ENT.MaxBounces = 30

if SERVER then
    AddCSLuaFile()

    function ENT:Initialize()
        self.Bounces = 0
        self.TimeLeft = CurTime() + self.LifeTime
        self:SetModel("models/effects/combineball.mdl")
        self:PhysicsInitSphere( 1, "metal_bouncy" )
        self:UseTriggerBounds(true, 100)
        self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
        util.SpriteTrail(self, 0, Color(255, 0, 0), false, 14, 0, 0.3, 1 / 10 * 0.5, "trails/plasma")
        local phys = self:GetPhysicsObject()
        if (IsValid(phys)) then
            phys:SetMass(0.1)
            phys:EnableGravity(false)

            if (IsValid(self:GetOwner())) then
                phys:ApplyForceCenter(self:GetOwner():GetAimVector() * self.Velocity)
            end
        end
    end 

    ENT.LastTouchedEnemies = {}

    function ENT:Touch(ent)
        if (IsValid(ent) and ent:IsValidZombie() and (!self.LastTouchedEnemies[ent] or CurTime() > self.LastTouchedEnemies[ent] + 0.5)) then
            self.LastTouchedEnemies[ent] = CurTime()
            
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(self:GetOwner())
            dmginfo:SetDamage(self.Damage)
            dmginfo:SetDamageType(DMG_DISSOLVE)
            ent:TakeDamageInfo(dmginfo)
            self:EmitSound("NPC_CombineBall.KillImpact")
        end
    end

    function ENT:PhysicsCollide(colData, collider)
        if (colData.HitEntity:IsWorld()) then
            self.LastBounceTime = CurTime()
            self.Bounces = self.Bounces + 1
            if (self.Bounces >= self.MaxBounces) then
                self:EmitSound("NPC_CombineBall.Explosion")
                local effect = EffectData()
                effect:SetOrigin(self:GetPos())
                util.Effect("cball_explode", effect)
                effects.BeamRingPoint(self:GetPos(), 0.5, 0, 1024, 64, 0, Color(255, 0, 0))
                self:Remove()
            else
                effects.BeamRingPoint(self:GetPos(), 0.1, 0, 54, 15, 0, Color(255, 0, 0))
                self:EmitSound("NPC_CombineBall.Impact")
            end
        end
    end

    function ENT:Think()
        if (self.LastBounceTime and CurTime() > self.LastBounceTime + 2) then
            self:Remove()
            self:EmitSound("NPC_CombineBall.Explosion")
        end
    end
end

if CLIENT then
    function ENT:Draw()
		self:DrawModel()
    end

    function ENT:Think()
        local angle = self:GetAngles()
        angle:RotateAroundAxis(Vector(0, 0, 1), 20)
        self:SetAngles(angle)
    end

    -- -- Uncomment if you want screen shaking.. I don't.
    -- function ENT:OnRemove()
    --     if (LocalPlayer() == self:GetOwner()) then
    --         util.ScreenShake(self:GetPos(), 20.0, 150.0, 1.0, 1250.0)
    --     end
    -- end
end