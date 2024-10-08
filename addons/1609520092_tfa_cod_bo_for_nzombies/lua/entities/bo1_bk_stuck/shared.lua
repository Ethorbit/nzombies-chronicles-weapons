
-- Copyright (c) 2018-2019 TFA Base Devs

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

ENT.Type = "anim"
ENT.PrintName = "TFBow Arrow Stuck"
ENT.Author = "TheForgottenArchitect"
ENT.Contact = "Don't"
ENT.Purpose = "Arrow Entity"
ENT.Instructions = "Arrow that's stuck in ground"

local cv_al = GetConVar("sv_tfa_arrow_lifetime")

function ENT:Initialize()
	if SERVER then
		if cv_al:GetInt() ~= -1 then
			timer.Simple( cv_al:GetFloat(), function()
				if IsValid(self) then
					self:Remove()
				end
			end)
		end

		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		local phys = self:GetPhysicsObject()

		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(2)
		end

		if IsValid(self) and self.SetUseType then
			self:SetUseType(SIMPLE_USE)
		end
	end

	if (self:GetModel() and self:GetModel() == "") then
		self:SetModel("models/weapons/w_tfa_arrow.mdl")
	end

	self:SetOwner(nil)
	self.PhysicsCollide = function() end
	self:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Sleep()
	end
end

function ENT:Use(activator, caller)
	if activator:IsPlayer() and activator:GetWeapon(self.gun) then
		local ballistic_knife = activator:GetWeapon("nz_robotnik_bo1_bk")
		if IsValid(ballistic_knife) then
			if ballistic_knife.Ammo1 and ballistic_knife.Primary and ballistic_knife.Primary.MaxAmmo then
				if ballistic_knife:Ammo1() < ballistic_knife.Primary.MaxAmmo then
					self:Remove()
					activator:GiveAmmo(1, activator:GetWeapon(self.gun):GetPrimaryAmmoType(), false)
				end
			end
		end	
	end
end
