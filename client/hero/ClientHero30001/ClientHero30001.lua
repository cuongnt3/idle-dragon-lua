require "lua.client.hero.ClientHero30001.ClientHero30001ActiveSkill"
require "lua.client.hero.ClientHero30001.ClientHero30001BaseAttack"

--- Charon
--- @class ClientHero30001 : ClientHero
ClientHero30001 = Class(ClientHero30001, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero30001:CreateInstance(heroModelType)
    return ClientHero30001(heroModelType)
end

function ClientHero30001:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero30001BaseAttack(self)
        self.basicAttack:SetFrameActionEvent(56, 57, 15, -1)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero30001ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(105, 106, 65, -1)
    end
end

function ClientHero30001:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 2)
end

function ClientHero30001:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "effect", true, 0)
    ClientHero.PlayAnimation(self, "detail", true, 1)
end

return ClientHero30001