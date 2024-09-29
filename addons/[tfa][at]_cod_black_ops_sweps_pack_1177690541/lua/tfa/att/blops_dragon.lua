if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Dragon's Breath Ammunition"
ATTACHMENT.ShortName = "DRAGON" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Incinerate Your Enemies!"}
ATTACHMENT.Icon = "entities/blops_dragon.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BURN ) end
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
