if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Fast Mag"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Fast Magazines",TFA.AttachmentColors["+"],"Faster Reloads"}
ATTACHMENT.Icon = "entities/bo2_fastmag.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FASTMAG"

ATTACHMENT.WeaponTable = {
	["Animations"] = {
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_fm_tac"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_fm_empty"
	},
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end