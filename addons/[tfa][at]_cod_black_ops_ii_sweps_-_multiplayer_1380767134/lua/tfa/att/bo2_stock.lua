if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Adjustable Stock"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Custom Stock",TFA.AttachmentColors["+"],"Move Faster When Aiming"}
ATTACHMENT.Icon = "entities/bo2_stock.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "STOCK"

ATTACHMENT.WeaponTable = {
		["IronSightsMoveSpeed"] = function( wep, stat ) return stat * 2 end,
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end