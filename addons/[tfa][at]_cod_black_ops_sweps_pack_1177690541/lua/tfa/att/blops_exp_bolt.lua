if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Explosive Tip"
ATTACHMENT.ShortName = "EXPTIP" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Bolts with Semtex on the tip.", "Explosive damage" }
ATTACHMENT.Icon = "entities/blops_exptip.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Ent = "ent_bo1_grenade"
ATTACHMENT.WeaponTable = {
["Primary"] = {
	["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BLAST ) end,
	["Damage"] = function(wep,stat) return stat * 2 end,
	},
	["ProjectileEntity"] = "ent_bo1_grenade",
	["Bodygroups_V"] = {
		[2] = 1
	},
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end