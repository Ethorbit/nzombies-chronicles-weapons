if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Holographic Sight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Holo Sight"}
ATTACHMENT.Icon = "entities/mw2_holo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HOLO"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["mw2_holo_sprite"] = {
			["active"] = true
		},
			["mw2_holo"] = {
			["active"] = true
		}
	},
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_HOL or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_HOL or val, true end,
	["IronSightTime"] = function(wep, val) return val * 1 end,
	["IronSightsSensitivity"] = 0.75,
	["BlowbackVector"] = Vector(0.00,-1,0.00)
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end