AddCSLuaFile("autorun/particle_additions.lua")

game.AddParticles("particles/hellretriever_particles.pcf")

if engine.ActiveGamemode() == "nzombies" then
hook.Add("InitPostEntity", "setup_axes", function()
	nzSpecialWeapons:AddSpecialGrenade( "nz_hellsretriever", 1, false, 0.05, false, 0.85 )
	nzSpecialWeapons:AddSpecialGrenade( "nz_hellsredeemer", 1, false, 0.05, false, 0.85 )
	
	--nzSpecialWeapons:AddDisplay( "nz_afterlife_revive", false, function(wep)
			--return !IsValid(wep.Owner:GetPlayerReviving())
	--end)
end)
end

// -tools -nop4