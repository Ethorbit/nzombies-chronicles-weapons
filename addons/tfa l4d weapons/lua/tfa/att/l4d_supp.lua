if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Silencer"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Less firing noise", TFA.AttachmentColors["+"], "20% less spread", TFA.AttachmentColors["+"], "20% less recoil", TFA.AttachmentColors["-"], "5% less damage" }
ATTACHMENT.Icon = "models/wick/weapons/l4d1/att/Silencer.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUPP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["l4d_sil"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["l4d_sil"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat * 0.8 end,
		["KickUp"] = function(wep,stat) return stat * 0.98 end,
		["KickDown"] = function(wep,stat) return stat * 0.98 end,
		["Spread"] = function(wep,stat) return stat * 0.98 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.98 end,
		["Sound"] = function(wep,stat) return wep.Primary.SilencedSound or stat end
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
	["MuzzleAttachmentMod"] = function(wep,stat) return wep.MuzzleAttachmentSilenced or stat end,
	["Silenced"] = true,
}

function ATTACHMENT:Attach(wep)
	wep.Silenced = true
	wep:SetSilenced(wep.Silenced)
end

function ATTACHMENT:Detach(wep)
	wep.Silenced = false
	wep:SetSilenced(wep.Silenced)
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
