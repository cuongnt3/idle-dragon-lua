require "lua.client.hero.ClientHero40002.ClientHero40002RangeAttack"
require "lua.client.hero.ClientHero40002.ClientHero40002ActiveSkill"

--- Wisecedar
--- @class ClientHero40002 : ClientHero
ClientHero40002 = Class(ClientHero40002, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero40002:CreateInstance(heroModelType)
    return ClientHero40002(heroModelType)
end

function ClientHero40002:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero40002RangeAttack(self)
        self.basicAttack:SetFrameActionEvent(20, 40, 13, 0)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero40002ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(41, 90, 40, 0)
    end
end

function ClientHero40002:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero40002:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero40002