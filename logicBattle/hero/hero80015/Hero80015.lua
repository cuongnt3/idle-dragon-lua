--- @class Hero80015 Fang
Hero80015 = Class(Hero80015, BaseHero)

--- @return Hero30003
function Hero80015:CreateInstance()
    return Hero80015()
end

--- @return HeroInitializer
function Hero80015:CreateInitializer()
    return Hero80015_Initializer(self)
end

return Hero80015