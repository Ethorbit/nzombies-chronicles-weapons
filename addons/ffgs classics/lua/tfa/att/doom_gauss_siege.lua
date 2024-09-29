if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Siege"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["+"], "Alternate charged fire", TFA.AttachmentColors["+"], "~250% more damage", TFA.AttachmentColors["+"], "~100% larger radius" }
ATTACHMENT.Icon = "vgui/gauss_icons/siege.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "Sg"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 1
	},
	["Bodygroups_W"] = {
		[1] = 1
	},
	["CanSiege"] = true
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end