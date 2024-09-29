if not ATTACHMENT then
	ATTACHMENT = {}
end
ATTACHMENT.Name = "Iron Sight"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Rail Mounted Tritium Iron Sights",TFA.AttachmentColors["+"], "Aim Down Sights Faster"}
ATTACHMENT.Icon = "entities/bo2_irons.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "IRONS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["original_rtcircle"] = {
			["active"] = false
			}
		},
	["Bodygroups_V"] = {
		[1] = 2
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_IRON or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_IRON or val, true end,
		["Primary"] = {
		["IronAccuracy"] = function(wep, val) return val * 1 end
	},
	["IronSightTime"] = function(wep, val) return val * 0.75 end,
	["IronSightsSensitivity"] = 0.5,

}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end