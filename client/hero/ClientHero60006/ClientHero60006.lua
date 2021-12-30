require "lua.client.hero.ClientHero60006.ClientHero60006MeleeAttack"
require "lua.client.hero.ClientHero60006.ClientHero60006ActiveSkill"

--- Hehta
--- @class ClientHero60006 : ClientHero
ClientHero60006 = Class(ClientHero60006, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero60006:CreateInstance(heroModelType)
    return ClientHero60006(heroModelType)
end

function ClientHero60006:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero60006MeleeAttack(self)
        self.basicAttack:SetFrameActionEvent(66, 67, 24, -1)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero60006ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(89, 90, 30, 28)
    end
end

function ClientHero60006:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero60006:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero60006