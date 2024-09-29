resource.AddFile("resource/fonts/square.ttf")

if CLIENT then
    surface.CreateFont( "Halo3WepAmmo", {
        font = "SquareFont", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
        extended = false,
        size = 92,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = true,
        underline = false,
        italic = false,
        strikeout = false,
        symbol = false,
        rotary = false,
        shadow = false,
        additive = false,
        outline = false,
    } )
end