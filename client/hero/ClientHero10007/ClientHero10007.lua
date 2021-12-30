require "lua.client.hero.ClientHero10007.clientHero10007ActiveSkill"

--- Lashna
--- @class ClientHero10007 : ClientHero
ClientHero10007 = Class(ClientHero10007, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero10007:CreateInstance(heroModelType)
    return ClientHero10007(heroModelType)
end

function ClientHero10007:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = BaseRangeAttack(self)
        self.basicAttack:SetFrameActionEvent(56, 57, 27, 22)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero10007ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(73, 74, 35, 5)
    end
end

function ClientHero10007:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 2)
end

function ClientHero10007:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
    ClientHero.PlayAnimation(self, "duoi", true, 1)
end

return ClientHero10007