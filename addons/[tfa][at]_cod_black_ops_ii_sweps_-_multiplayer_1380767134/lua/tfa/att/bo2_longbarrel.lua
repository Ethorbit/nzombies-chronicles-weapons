if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Long Barrel"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Free Floating Heavy Barrel",TFA.AttachmentColors["+"],"50% Higher ADS Accuracy",TFA.AttachmentColors["-"],"33% More Hip Spread"}
ATTACHMENT.Icon = "entities/bo2_longbarrel.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HEAVYBAR"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["heavybarrel_rif"] = {
			["active"] = true
		}
	},
		["Primary"] = {
                ["IronAccuracy"] = function( wep, stat ) return stat * 0.5 end,
                ["Spread"] = function( wep, stat ) return stat * 1.33 end
        }
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end