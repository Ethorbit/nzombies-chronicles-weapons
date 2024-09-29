if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Fast Mag(Shotgun)"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Fast Magazines",TFA.AttachmentColors["+"],"Reload Shells 50% Faster"}
ATTACHMENT.Icon = "entities/bo2_fastmag.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FASTMAG"

ATTACHMENT.WeaponTable = {
["ShellTime"] = function(wep, val) return val * 0.5 end,
}
if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end