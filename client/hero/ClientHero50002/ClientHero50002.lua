require "lua.client.hero.ClientHero50002.ClientHero50002ActiveSkill"
require "lua.client.hero.ClientHero50002.ClientHero50002MeleeAttack"

--- Phalanx
--- @class ClientHero50002 : ClientHero
ClientHero50002 = Class(ClientHero50002, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero50002:CreateInstance(heroModelType)
    return ClientHero50002(heroModelType)
end

function ClientHero50002:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero50002MeleeAttack(self)
        self.basicAttack:SetFrameActionEvent(60, 61, 21, -1)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero50002ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(110, 111, 68, -1)
    end
end

function ClientHero50002:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero50002:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero50002