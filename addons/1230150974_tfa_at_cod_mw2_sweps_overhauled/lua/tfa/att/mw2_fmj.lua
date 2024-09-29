if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Full Metal Jacket"
ATTACHMENT.ShortName = "FMJ" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "10% More Damage",TFA.AttachmentColors["+"], "3 Times More Penetration"}
ATTACHMENT.Icon = "entities/mw2_fmj.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = function( wep, stat ) return stat * 1.10 end,
		["PenetrationMultiplier"] = function(wep, val) return val * 3 end
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
