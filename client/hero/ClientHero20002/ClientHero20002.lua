require "lua.client.hero.ClientHero20002.ClientHero20002RangeAttack"
require "lua.client.hero.ClientHero20002.ClientHero20002ActiveSkill"

--- Arien
--- @class ClientHero20002 : ClientHero
ClientHero20002 = Class(ClientHero20002, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero20002:CreateInstance(heroModelType)
    return ClientHero20002(heroModelType)
end

function ClientHero20002:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero20002RangeAttack(self)
        self.basicAttack:SetFrameActionEvent(50, 51, 28, 23)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero20002ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(90, 91, 80, 52)
    end
end

function ClientHero20002:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 2)
end

function ClientHero20002:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "FX_Fire_Mix", true, 0)
    ClientHero.PlayAnimation(self, "FX_Fire_Ball", true, 1)
end

return ClientHero20002