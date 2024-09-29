AddCSLuaFile()

ENT.Base = "tfbow_arrow_stuck_clientside"

function ENT:SetupDataTables()
	self:NetworkVar( "Bool", 0, "PaPd" )
end

local sprite = Material("nzr/nz/zlight")
local offset = Vector(0, 0, 3)
ENT.BoltGlowColor = Color(0, 255, 0)
ENT.LastCreated = CurTime()

function ENT:Initialize()
    if self:GetPaPd() then
        self.BoltGlowColor = Color(255, 0, 0)
    else
        self.BoltGlowColor = Color(0, 255, 0)
    end

    self:SetTargetPriority(TARGET_PRIORITY_SPECIAL)
    self.LastCreated = CurTime()
end

function ENT:Draw()
    self:DrawModel()

    cam.Start3D()
        render.SetMaterial(sprite)
        render.DrawSprite(self:GetPos() + offset, 12, 12, self.BoltGlowColor)
    cam.End3D()
end

function ENT:Think()
	if CurTime() - self.LastCreated > 20 then -- We should be gone now..
        self:Remove()
    end
end
