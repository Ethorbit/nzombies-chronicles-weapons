if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Rapid Fire"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Higher RPM",TFA.AttachmentColors["-"],"20% more recoil",TFA.AttachmentColors["-"], "20% more spread"}
ATTACHMENT.Icon = "entities/bo2_rapidfire.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "RAPID"

ATTACHMENT.WeaponTable = {
			["Primary"] = {
               ["RPM"] = function( wep, stat) return wep.Primary.RPM_R or stat end,
			   ["KickUp"] = function( wep, stat ) return stat * 1.20 end,
               ["KickDown"] = function( wep, stat ) return stat * 1.20 end,
               ["KickHorizontal"] = function( wep, stat ) return stat * 1.20 end,
			   ["Spread"] = function( wep, stat ) return stat * 1.20 end,
			   ["IronAccuracy"] = function( wep, stat ) return stat * 1.20 end,
        },
		
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end