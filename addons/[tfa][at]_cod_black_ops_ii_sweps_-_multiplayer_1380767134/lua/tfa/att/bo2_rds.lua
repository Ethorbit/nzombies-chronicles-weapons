if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Reflex Sight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Red Dot Sight"}
ATTACHMENT.Icon = "entities/bo2_rds.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "RDS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["bo2_rds_sprite"] = {
			["active"] = true
		},
			["bo2_rds"] = {
			["active"] = true
		}
	},
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_RDS or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_RDS or val, true end,
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end