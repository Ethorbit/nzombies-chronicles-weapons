if not ATTACHMENT then
	ATTACHMENT = {}
end
local zoom = 5 --Your desired scope zoom
local fov = 70 / zoom / 2 --Put this at the top; RT FOV

ATTACHMENT.Name = "ACOG"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "4x zoom", TFA.AttachmentColors["-"], "15% higher zoom time"}
ATTACHMENT.Icon = "entities/mw2_acog.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "ACOG"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["mw2_acog"] = {
			["active"] = true
		},
			["original_rtcircle"] = {
			["active"] = false
		},
			["siderail"] = {
			["active"] = true
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
	["IronSightTime"] = function(wep, val) return val * 1.10 end,
	["IronSightsSensitivity"] = 0.25,
	["RTMaterialOverride"] = -1,
	["BlowbackVector"] = Vector(0.00,-0.50,0.00),
	["RTScopeFOV"] = fov--And add this here

}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end