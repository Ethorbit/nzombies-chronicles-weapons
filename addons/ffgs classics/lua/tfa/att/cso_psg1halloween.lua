if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Halloween" -- skin name
ATTACHMENT.Description = {TFA.AttachmentColors["+"],"x5 Damage"}
ATTACHMENT.Icon = "entities/att/cso_psg1halloween.png" -- icon
ATTACHMENT.ShortName = "Halloween" -- short name that displayed inside the icon

ATTACHMENT.WeaponTable = {
	MaterialTable = { -- materials that are present on both view- and worldmodel
	[1] = "models/weapons/tfa_cso/paint/psg1_halloween",
},
	["Primary"] = {
	["Damage"] = function(wep, stat) return stat * 5 end,
	},
--	 MaterialTable_V = {
--	 [1] = "models/weapons/tfa_cso/ak47/ak47_paint1",
--	 }, -- separate table for viewmodel materials, overrides main table
--	 MaterialTable_W = {
--     [1] = "models/weapons/tfa_cso/ak47/ak47_paint1",	 
--	 }, -- separate table for worldmodel materials, overrides main table
}

local function resetMatCache(att, wep)
	wep.MaterialCached = false
end

ATTACHMENT.Attach = resetMatCache
ATTACHMENT.Detach = resetMatCache

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
