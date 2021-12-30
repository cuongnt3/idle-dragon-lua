--- @class Hero50007_Initializer
Hero50007_Initializer = Class(Hero50007_Initializer, HeroInitializer)

--- @return void
function Hero50007_Initializer:CreateListeners()
    HeroInitializer.CreateListeners(self)
    self.myHero.attackListener = Hero50007_AttackListener(self.myHero)
    self.myHero.battleListener = Hero50007_BattleListener(self.myHero)
end
