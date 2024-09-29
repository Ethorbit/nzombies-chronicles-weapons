if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Magazine"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Increases magazine capacity to 21 rounds."
}
ATTACHMENT.Icon = "models/wick/weapons/l4d1/att/add_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "EXMAG"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["ClipSize"] = function(wep, val)
			return wep.Primary.ClipSize_Drum or 21
		end,
	},
}

function ATTACHMENT:Attach(wep)
	wep:Unload()
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
