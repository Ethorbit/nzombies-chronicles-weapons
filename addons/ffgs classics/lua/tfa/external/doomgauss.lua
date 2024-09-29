TFA.AddStatus( "gauss_siege_start" )
TFA.AddStatus( "gauss_siege_loop" )
TFA.AddStatus( "gauss_siege_shoot" )
TFA.AddStatus( "gauss_siege_end" )

TFA.Enum.HUDDisabledStatus = TFA.Enum.HUDDisabledStatus or {}
TFA.Enum.GaussSiegeStatus = TFA.Enum.GaussSiegeStatus or {}
TFA.Enum.ReadyStatus = TFA.Enum.ReadyStatus or {}

TFA.Enum.ReadyStatus[ TFA.GetStatus("gauss_siege_loop") ] = true

TFA.Enum.HUDDisabledStatus[ TFA.GetStatus("gauss_siege_start") ] = true
TFA.Enum.HUDDisabledStatus[ TFA.GetStatus("gauss_siege_loop") ] = true
TFA.Enum.HUDDisabledStatus[ TFA.GetStatus("gauss_siege_end") ] = true
TFA.Enum.HUDDisabledStatus[ TFA.GetStatus("gauss_siege_shoot") ] = true

TFA.Enum.GaussSiegeStatus[ TFA.GetStatus("gauss_siege_start") ] = true
TFA.Enum.GaussSiegeStatus[ TFA.GetStatus("gauss_siege_loop") ] = true
TFA.Enum.GaussSiegeStatus[ TFA.GetStatus("gauss_siege_end") ] = true
TFA.Enum.GaussSiegeStatus[ TFA.GetStatus("gauss_siege_shoot") ] = true









TFA_GAUSS_AMMO = TFA.AddAmmo( "doom_plasma", "Plasma" )