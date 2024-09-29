if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Mags"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Larger Magazines",TFA.AttachmentColors["+"],"More Ammo per Clip"}
ATTACHMENT.Icon = "entities/bo2_bigammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "XTENDEDMAGS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["blops_xtend_mdl"] = {
			["active"] = true
			}
		}	,
	["Bodygroups_V"] = {
		[2] = 1
		},
	["Animations"] = {
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "bigammo_reload_tac"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "bigammo_reload_empty"
		}
	},
		["Primary"] = {
               ["ClipSize"] = function( wep, stat) return wep.Primary.ClipSize_XM or stat end,
			}
		}	
if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
