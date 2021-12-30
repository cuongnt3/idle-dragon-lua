require "lua.client.hero.ClientHero30003.ClientHero30003RangeAttack"
require "lua.client.hero.ClientHero30003.ClientHero30003ActiveSkill"

--- Nero
--- @class ClientHero30003 : ClientHero
ClientHero30003 = Class(ClientHero30003, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero30003:CreateInstance(heroModelType)
    return ClientHero30003(heroModelType)
end

--- Init frame Action Event
function ClientHero30003:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero30003RangeAttack(self)
        self.basicAttack:SetFrameActionEvent(60, 61, 20, 15)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero30003ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(88, 89, 57, 57)
    end
end

function ClientHero30003:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero30003:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero30003