--- @class HeroFactionType
HeroFactionType = {
    WATER = 1,
    FIRE = 2,
    ABYSS = 3,
    NATURE = 4,

    LIGHT = 5,
    DARK = 6,

    --- Faction of main character only
    CHAOS = 7,
    METAL = 8,
}

--- @return boolean
function HeroFactionType.IsValidType(type)
    if HeroFactionType.WATER <= type and type <= HeroFactionType.METAL then
        return true
    end

    return false
end

return HeroFactionType