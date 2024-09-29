if not ATTACHMENT then
	ATTACHMENT = {}
end
ATTACHMENT.Name = "Quick Draw Handle"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Ergonomic handle for faster aiming", TFA.AttachmentColors["+"], "30% faster Aim Time"}
ATTACHMENT.Icon = "entities/bo2_quickdraw.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "QCKDRAW"

ATTACHMENT.WeaponTable = {
	["IronSightTime"] = function(wep, val) return val * 0.7 end
}
if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end