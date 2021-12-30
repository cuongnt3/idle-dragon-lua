--- @class Hero50003_Initializer
Hero50003_Initializer = Class(Hero50003_Initializer, HeroInitializer)

--- @return void
function Hero50003_Initializer:CreateListeners()
    HeroInitializer.CreateListeners(self)
    self.myHero.attackListener = Hero50003_AttackListener(self.myHero)
end
