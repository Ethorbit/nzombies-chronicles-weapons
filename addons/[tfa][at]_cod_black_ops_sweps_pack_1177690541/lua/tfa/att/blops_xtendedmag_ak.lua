if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Mags"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "More Ammo In Each Magazine",TFA.AttachmentColors["+"],"More Rounds Per Mag"}
ATTACHMENT.Icon = "entities/blops_xtendedmag.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "XTNDEDMAGS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["blops_akxtend"] = {
			["active"] = true
			}
		},
			["Primary"] = {
               ["ClipSize"] = function( wep, stat) return wep.Primary.ClipSize_X or stat end,
        },
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end