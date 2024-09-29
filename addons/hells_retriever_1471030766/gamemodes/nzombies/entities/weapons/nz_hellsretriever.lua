
if (SERVER) then
	AddCSLuaFile()
end

if (CLIENT) then
	SWEP.Slot = 0
	SWEP.SlotPos = 5
	SWEP.PrintName = "Hell's Retriever"
	SWEP.DrawCrosshair = true
	SWEP.DrawAmmo = false
	SWEP.Category = "nZombies"
	SWEP.ViewModelFOV = 65
end

SWEP.Author	= "Roach & Hidden"

SWEP.ViewModel 			= "models/weapons/bo2/hells_retriever/v_hells_retriever.mdl"
SWEP.WorldModel 		= "models/weapons/hell/w_hell.mdl"
SWEP.HoldType = "slam"
SWEP.ViewModelFlip = false
SWEP.UseHands = true

SWEP.AdminSpawnable = true
SWEP.Spawnable = true
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = true

SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.ClipSize = -1
SWEP.Primary.Ammo = "none"

SWEP.FirstRaise = true
SWEP.Charged = 0

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"


function SWEP:Initialize()
	timer.Simple(0.1, function()
		if SERVER then
			self.Owner:GiveAmmo(1,"nz_specialgrenade",true)
		end
		self.Owner:SelectWeapon("nz_hellsretriever")
	end)
	self:SetWeaponHoldType("grenade")
end

function SWEP:PrimaryAttack()
	if !SERVER then return end
	if !self.FirstRaise then

		self:SendWeaponAnim(ACT_VM_THROW)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
		self.Owner:EmitSound("weapons/roach/tomahawk/throw"..math.random(1,2)..".mp3")

		timer.Simple(self.Weapon:SequenceDuration()/3,function()
			self:ThrowGrenade(3500)
		end)
	end
end

function SWEP:ThrowGrenade(force)
	if SERVER then
		local nade = ents.Create("obj_retriever_thrown")
		nade:SetPos(self.Owner:EyePos() + (self.Owner:GetAimVector() * 20))
		nade:SetAngles( self.Owner:GetAngles() )
		nade:Spawn()
		nade:Activate()
		nade:SetOwner(self.Owner)
		nade.Charged = self.Charged
		nade.Upgraded = false
		ParticleEffectAttach("retriever_trail1", PATTACH_ABSORIGIN_FOLLOW, nade, 0)

		local throwdir = Vector(self.Owner:GetAimVector()[1],self.Owner:GetAimVector()[2],self.Owner:GetAimVector()[3]+0.2)
		local nadePhys = nade:GetPhysicsObject()
			if !IsValid(nadePhys) then return end
		nadePhys:ApplyForceCenter(throwdir:GetNormalized() * force + self.Owner:GetVelocity())
		nadePhys:AddAngleVelocity(Vector(0,1000,0))
		timer.Destroy("chargetimer")
		self.Charged = 0
	end
end

function SWEP:SecondaryAttack()
	return
end
function SWEP:OnRemove()

end

function SWEP:Deploy()
	if self.FirstRaise == true then
		self:SendWeaponAnim(ACT_VM_DRAW)
		timer.Simple(self.Weapon:SequenceDuration(),function()
			if SERVER then
				self.Owner:GiveAmmo(1,"nz_specialgrenade",true)
			end
		end)
		timer.Simple(self.Weapon:SequenceDuration()/3,function()
			self.FirstRaise = false
		end)
		self:EmitSound("weapons/roach/tomahawk/first_raise.mp3")
	else
		self:SendWeaponAnim(ACT_VM_IDLE)
		self:SetNextPrimaryFire(0.2)

		local effectdata = EffectData()
		effectdata:SetEntity(self.Owner)

		timer.Create("chargetimer", 1.5, 1, function()
			self.Charged = self.Charged or 0
			self.Charged = self.Charged + 1
			effectdata:SetOrigin(self.Owner:GetPos() + Vector(0,0,4))
			util.Effect("retriever_chargering", effectdata)
			ParticleEffectAttach("retriever_charge", PATTACH_ABSORIGIN_FOLLOW, self.Owner, 0)
		end)
		effectdata:SetOrigin(self.Owner:GetPos() + Vector(0,0,4))
		util.Effect("retriever_chargering", effectdata)
		ParticleEffectAttach("retriever_charge", PATTACH_ABSORIGIN_FOLLOW, self.Owner, 0)
	end
	return true
end

function SWEP:DrawWorldModel()
	self:DrawModel()
end
