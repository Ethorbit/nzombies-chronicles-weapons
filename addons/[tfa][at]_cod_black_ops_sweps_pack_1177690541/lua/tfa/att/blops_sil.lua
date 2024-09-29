if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Silencer"
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Standard Suppressor",TFA.AttachmentColors["-"],"5% less damage",TFA.AttachmentColors["+"],"50% Less Kick Up",}
ATTACHMENT.Icon = "entities/blops_sil.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
			["blops_sil"] = {
			["active"] = false
		}
	},
	["Primary"] = {
                --["Sound"] = function( wep, stat) return wep.Primary.Sound_SIL or stat end, --Silenced sound
                -- ["Damage"] = function( wep, stat ) return stat * 0.95 end,
                -- ["KickUp"] = function( wep, stat ) return stat * 0.65 end,
                -- ["KickDown"] = function( wep, stat ) return stat * 0.65 end,
                -- ["KickHorizontal"] = function( wep, stat ) return stat * 0.65 end
        },
	--["MuzzleAttachmentMod"] = 4 --Muzzle flash attachment
	--["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end