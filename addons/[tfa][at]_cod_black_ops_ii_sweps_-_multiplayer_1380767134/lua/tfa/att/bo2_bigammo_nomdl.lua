if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Mags"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Larger Magazines",TFA.AttachmentColors["+"],"More Ammo per Clip"}
ATTACHMENT.Icon = "entities/bo2_bigammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "XTENDEDMAGS"

ATTACHMENT.WeaponTable = {
		["Primary"] = {
               ["ClipSize"] = function( wep, stat) return wep.Primary.ClipSize_XM or stat end,
			}
		}	
if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
