--- @class Hero80015_Initializer
Hero80015_Initializer = Class(Hero80015_Initializer, HeroInitializer)

--- @return void
function Hero80015_Initializer:CreateListeners()
    HeroInitializer.CreateListeners(self)
    self.myHero.attackListener = Hero80015_AttackListener(self.myHero)
end

