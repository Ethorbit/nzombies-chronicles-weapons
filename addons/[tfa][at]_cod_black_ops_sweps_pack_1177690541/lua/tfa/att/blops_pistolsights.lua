if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Upgraded Iron Sights"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Upgraded Ironsights for Better Aiming Down Sights"}
ATTACHMENT.Icon = "entities/blops_upsights.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "Reflex"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_REF or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_REF or val, true end,
			["Primary"] = {
		["IronAccuracy"] = function(wep, val) return val * .005 end
	},
	["IronSightTime"] = function(wep, val) return val * 1 end,
	["IronSightsSensitivity"] = 0.75,
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end