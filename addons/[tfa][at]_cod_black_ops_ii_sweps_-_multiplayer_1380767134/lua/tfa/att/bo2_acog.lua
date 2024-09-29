if not ATTACHMENT then
	ATTACHMENT = {}
end
local zoom = 5 --Your desired scope zoom
local fov = 70 / zoom / 2 --Put this at the top; RT FOV

ATTACHMENT.Name = "ACOG"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "4x zoom"}
ATTACHMENT.Icon = "entities/bo2_acog.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "ACOG"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["bo2_acog_sprite"] = {
			["active"] = true
		},
			["bo2_acog"] = {
			["active"] = true
		},
			["original_rtcircle"] = {
			["active"] = false
		}
	},
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_ACOG or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_ACOG or val, true end,
		["Primary"] = {
		["IronAccuracy"] = function(wep, val) return val * .001 end
	},
	["IronSightsSensitivity"] = 0.25,
	["BlowbackVector"] = Vector(0.00,-0.50,0.00),
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end