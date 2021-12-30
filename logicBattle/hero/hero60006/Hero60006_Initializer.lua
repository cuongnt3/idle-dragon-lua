--- @class Hero60006_Initializer
Hero60006_Initializer = Class(Hero60006_Initializer, HeroInitializer)

--- @return void
function Hero60006_Initializer:CreateListeners()
    HeroInitializer.CreateListeners(self)
    self.myHero.attackListener = Hero60006_AttackListener(self.myHero)
end
