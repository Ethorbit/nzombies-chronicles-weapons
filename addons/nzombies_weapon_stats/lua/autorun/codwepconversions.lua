-- Functions for converting COD numbers to Gmod nZombies numbers
-- For use within TFA base weapons!

-- We split up each equation in a function so that if there are flaws with how something 
-- is converted it can be corrected without needing to edit every single weapon again.

function NZCoDDMG(dmg)
    local basehp = GetConVar("nz_difficulty_zombie_health_base"):GetInt()
    local codbasehp = 150
    return ((dmg / codbasehp) * basehp)
end

function NZCoDRadius(meters)
    return (52.49 * meters)
end

function NZCoDRange(meters)
    return (52.49 * meters)
    --return meters * 39.3701 * 4 / 3
end