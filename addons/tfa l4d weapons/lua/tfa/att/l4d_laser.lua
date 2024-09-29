if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Laser Pointer"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "30% lower base spread", TFA.AttachmentColors["-"], "20% higher max spread" }
ATTACHMENT.Icon = "models/wick/weapons/l4d1/att/laser.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LASER"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["l4d_laser"] = {
			["active"] = true
		},
		["l4d_beam"] = {
			["active"] = true
		},
	},
	["WElements"] = {
		["l4d_laser"] = {
			["active"] = true
		},
		["l4d_beam"] = {
			["active"] = true
		},
	},
	["Primary"] = {
		["Spread"] = function(wep,stat) return math.max( stat * 0.9, stat - 0.01 ) end,
		["SpreadMultiplierMax"] = function(wep,stat) return stat * ( 1 / 0.9 ) * 1.1 end
	},
	["LaserSightAttachment"] = function(wep,stat) return wep.LaserSightModAttachment end,
	["LaserSightAttachmentWorld"] = function(wep,stat) return wep.LaserSightModAttachmentWorld or wep.LaserSightModAttachment end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
