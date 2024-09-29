AddCSLuaFile()

if engine.ActiveGamemode() == "nzombies" then
hook.Add("InitPostEntity", "setup_gersh", function()
	nzSpecialWeapons:AddSpecialGrenade( "nz_gersh_device", 3, false, 2.5, false, 0.6 )
end)
end