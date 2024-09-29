if not ATTACHMENT then
	ATTACHMENT = {}
end
local zoom = 3 --Your desired scope zoom
local fov = 90 / zoom / 2 --Put this at the top; RT FOV

ATTACHMENT.Name = "Red Dot Sight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {TFA.AttachmentColors["="], "Red Dot Sight"}
ATTACHMENT.Icon = "entities/mw2_rds.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "RDS"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["mw2_rds_rtcircle"] = {
			["active"] = true
		},
			["mw2_rds"] = {
			["active"] = true
		}
	},
	["Bodygroups_V"] = {
		[1] = 1
	},
	["IronSightsPos"] = function(wep, val) return wep.IronSightsPos_RDS or val, true end,
	["IronSightsAng"] = function(wep, val) return wep.IronSightsAng_RDS or val, true end,
		["Primary"] = {
		["IronAccuracy"] = function(wep, val) return val * .0001 end
	},
	["Secondary"] = {
		["IronFOV"] = function(wep, val) return val * 1 end
	},
	["RTMaterialOverride"] = -1,
	["BlowbackVector"] = Vector(0.00,-0.50,0.00),
	["IronSightsSensitivity"] = 0.25,
	
	["RTScopeFOV"] = fov--And add this here

}

local cd = {}
local rtmod2 = Color(255,255,255,2)
local myret = Material("scope/aimpoint")
local myshad = Material("vgui/scope_shadowmask_test")
local shadowborder = 512
function ATTACHMENT:Attach(wep)
	if not IsValid(wep) then return end
	wep.RTCodeOld = wep.RTCodeOld or wep.RTCode

	wep.RTCode = function(myself, rt, scrw, scrh)
		if not IsValid(myself.Owner) then return end
		local wcol = myself.Owner:GetWeaponColor()
		rtmod2.r = wcol.x * 255 * 2
		rtmod2.g = wcol.y * 255 * 2
		rtmod2.b = wcol.z * 255 * 2

		if not myret then
			myret = Material("scope/gdcw_scopesight")
		end
		if not myshad then
			myshad = Material( "vgui/scope_shadowmask_test")
		end

		render.OverrideAlphaWriteEnable(true, true)
		surface.SetDrawColor(color_white)
		surface.DrawRect(-0, -0, ScrW(), ScrH())
		render.OverrideAlphaWriteEnable(true, true)
		local ang = myself.Owner:EyeAngles()
		cd.angles = ang
		cd.origin = myself.Owner:GetShootPos()
		local rtw, rth = ScrW(), ScrH()
		cd.x = 0
		cd.y = 0
		cd.w = rtw
		cd.h = rth
		cd.fov = fov --Use fov from the top
		cd.drawviewmodel = false
		cd.drawhud = false
		render.Clear(0, 0, 0, 255, true, true)
		render.SetScissorRect(0, 0, rtw, rth, true)

		if myself.CLIronSightsProgress > 0.005 then
			render.RenderView(cd)
		end

		render.SetScissorRect(0, 0, rtw, rth, false)
		render.OverrideAlphaWriteEnable(false, true)
		cam.Start2D()
		draw.NoTexture()
		surface.SetDrawColor(ColorAlpha(color_black, 255 * (1 - myself.CLIronSightsProgress)))
		surface.DrawRect(0, 0, rtw, rth)
		surface.SetMaterial(myret)
		surface.SetDrawColor(color_white)
		surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		surface.SetDrawColor(rtmod2)
		--surface.DrawRect(0, 0, 512, 512)
		surface.SetMaterial(myshad)
		shadowborder = ScrW() / 2
		surface.SetDrawColor(color_white)
		surface.DrawTexturedRect(-shadowborder, -shadowborder, shadowborder * 2 + ScrW() , shadowborder * 2 + ScrH() )
		cam.End2D()
	end
end


function ATTACHMENT:Detach(wep)
	if not IsValid(wep) then return end
	wep.RTCode = wep.RTCodeOld
	wep.RTCodeOld = nil
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end