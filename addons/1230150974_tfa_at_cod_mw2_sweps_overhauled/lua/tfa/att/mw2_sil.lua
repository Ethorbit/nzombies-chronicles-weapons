if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Silencer"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Standard Suppressor",TFA.AttachmentColors["-"],"20% less damage",TFA.AttachmentColors["+"],"50% Less Kick Up",}
ATTACHMENT.Icon = "entities/mw2_sil.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["mw2_sil"] = {
			["active"] = false
		}
	},
	["Bodygroups_V"] = {
		[2] = 1
	},
	["Primary"] = {
                -- ["Sound"] = function( wep, stat) return wep.Primary.Sound_SIL or stat end, --Silenced sound
                -- ["Damage"] = function( wep, stat ) return stat * 0.80 end,
                -- ["KickUp"] = function( wep, stat ) return stat * 0.65 end,
                -- ["KickDown"] = function( wep, stat ) return stat * 0.65 end,
                -- ["KickHorizontal"] = function( wep, stat ) return stat * 0.65 end
        },
	--["MuzzleAttachmentMod"] = 4,--Muzzle flash attachment
	--["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end