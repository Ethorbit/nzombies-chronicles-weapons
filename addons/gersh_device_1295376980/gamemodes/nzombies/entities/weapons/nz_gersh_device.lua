if SERVER then
	AddCSLuaFile("nz_gersh_device.lua")
	SWEP.Weight			= 5
	SWEP.AutoSwitchTo	= false
	SWEP.AutoSwitchFrom	= true
end

if CLIENT then

	SWEP.PrintName     	    = "Gersh Device"			
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	SWEP.DrawAmmo			= false
	SWEP.DrawCrosshair		= true
	
	SWEP.Category			= "nZombies"

end


SWEP.Author			= "Zet0r, Hidden & Raven"
SWEP.Contact		= "twitter.com/LambdaHidden"
SWEP.Purpose		= "Throws a Gersh device if you have any"
SWEP.Instructions	= "Let the gamemode give you it"

SWEP.NZWonderWeapon = true

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

SWEP.HoldType = "slam"

SWEP.ViewModel	= "models/weapons/gersch/v_gersch.mdl"
SWEP.WorldModel	= "models/weapons/gersch/w_gersch.mdl"
SWEP.ViewModelFOV	= 54
SWEP.UseHands = true
SWEP.vModel = true

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.NextReload				= 1


SWEP.PrimeSounds = {
	"nz/gersh/raise.wav"
}

function SWEP:Initialize()
	
	self:SetHoldType( "slam" )

end

function SWEP:Deploy()
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	self:SetHoldType( "slam" )
	timer.Simple(2, function() if IsValid(self) then self:SetHoldType("grenade") end end)
	if CLIENT then
		local sound = self.PrimeSounds[math.random(1,#self.PrimeSounds)]
		surface.PlaySound(sound)
		timer.Simple(1.0, function() 
			if IsValid(self) then
				surface.PlaySound("nz/gersh/flipdown.wav")
				timer.Create("MonkeyCymbalViewmodel", 0.23, 1, function()
					surface.PlaySound("nz/gersh/switch.wav")
				end)
			end
		end)
		
	else
		self:CallOnClient("Deploy")
	end
end

function SWEP:PrimaryAttack()
	if SERVER then
		self:ThrowBomb(400)
	end
end

function SWEP:SecondaryAttack()
	return end

function SWEP:ThrowBomb(force)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SendWeaponAnim(ACT_VM_THROW)
	timer.Create("throwdelay", 0.20, 1, function()
		local nade = ents.Create("nz_gershdevice")
		local pos = self.Owner:EyePos() + (self.Owner:GetAimVector() * 20)
		local ang = Angle((self.Owner:GetPos() - pos):Angle()[1]-85,(self.Owner:GetPos() - pos):Angle()[2]+180,(self.Owner:GetPos() - pos):Angle()[3])
		nade:SetPos(pos)
		nade:SetAngles(ang)
		nade:Spawn()
		nade:Activate()
		nade:SetOwner(self.Owner)
		
		local nadePhys = nade:GetPhysicsObject()
			if !IsValid(nadePhys) then return end
		nadePhys:ApplyForceCenter(self.Owner:GetAimVector():GetNormalized() * force + self.Owner:GetVelocity())
		nade:EmitSound("nz/gersh/throw.wav")
	end)
end

function SWEP:PostDrawViewModel()

end

function SWEP:OnRemove()
	
end

function SWEP:GetViewModelPosition( pos, ang )
 
 	local newpos = LocalPlayer():EyePos()
	local newang = LocalPlayer():EyeAngles()
	local up = newang:Up()
	
	newpos = newpos + LocalPlayer():GetAimVector()*6 - up*65
	
	return newpos, newang
 
end