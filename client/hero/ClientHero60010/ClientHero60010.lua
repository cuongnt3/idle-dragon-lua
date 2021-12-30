require "lua.client.hero.ClientHero60010.ClientHero60010RangeAttack"
require "lua.client.hero.ClientHero60010.ClientHero60010ActiveSkill"

--- Diadora
--- @class ClientHero60010 : ClientHero
ClientHero60010 = Class(ClientHero60010, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero60010:CreateInstance(heroModelType)
    return ClientHero60010(heroModelType)
end

function ClientHero60010:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero60010RangeAttack(self)
        self.basicAttack:SetFrameActionEvent(50, 51, 35, 30)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero60010ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(80, 81, 54, 26)
    end
end

function ClientHero60010:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero60010:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero60010