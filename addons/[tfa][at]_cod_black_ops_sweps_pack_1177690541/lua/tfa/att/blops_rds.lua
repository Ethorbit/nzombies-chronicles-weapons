if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Red Dot Sight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Red Dot Sight"}
ATTACHMENT.Icon = "entities/blops_rds.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "RDS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["blops_rds_sprite"] = {
			["active"] = true
		},
		["blops_siderail"] = {
			["active"] = true
		},
			["blops_rds"] = {
			["active"] = true
		}
	},
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_RDS or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_RDS or val, true end,
	["IronSightTime"] = function(wep, val) return val * 1 end,
	["IronSightsSensitivity"] = 0.75,
	["RTMaterialOverride"] = -1,
	["BlowbackVector"] = Vector(0.00,-0.75,0.00)
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end