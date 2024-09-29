if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Ballistics CPU"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["+"], "Better Accuracy When Aiming"}
ATTACHMENT.Icon = "entities/bo2_balcpu.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CPU"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["bo2_cpu"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_REF or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_REF or val, true end,
			["Primary"] = {
		["IronAccuracy"] = function(wep, val) return val * .005 end
	},
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end