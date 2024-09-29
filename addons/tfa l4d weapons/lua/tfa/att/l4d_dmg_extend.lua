if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Hight Velocity Bullets"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Increases the damage of your bullets."
}
ATTACHMENT.Icon = "models/wick/weapons/l4d1/att/ex_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "EXDMG"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat * 1.3 end,
	},
}

function ATTACHMENT:Attach(wep)
	wep:Unload()
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
