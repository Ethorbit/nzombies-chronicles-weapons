if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Precision Bolt"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["+"], "Alternate zoom mode", "~150% higher damage" }
ATTACHMENT.Icon = "vgui/gauss_icons/scope.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PB"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[2] = 1
	},
	["Bodygroups_W"] = {
		[2] = 1
	},
	["VElements"] = {
		["ammodigit1"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["ammodigit1"] = {
			["active"] = true
		}
	},
	["data"] = {
		["ironsights"] = 1
	},
	["CanPB"] = true
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end