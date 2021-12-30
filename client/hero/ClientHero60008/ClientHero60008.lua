require "lua.client.hero.ClientHero60008.ClientHero60008ActiveSkill"
require "lua.client.hero.ClientHero60008.ClientHero60008BaseAttack"

--- Hound Master
--- @class ClientHero60008 : ClientHero
ClientHero60008 = Class(ClientHero60008, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero60008:CreateInstance(heroModelType)
    return ClientHero60008(heroModelType)
end

function ClientHero60008:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        if self.skinId == 60008001 then
            self.basicAttack = ClientHero60008BaseAttack(self)
            self.basicAttack:SetFrameActionEvent(45, 46, 27, -1)
        else
            self.basicAttack = ClientHero60008BaseAttack(self)
            self.basicAttack:SetFrameActionEvent(45, 46, 27, -1)
        end
    end
    if self.heroModelType >= HeroModelType.Full then
        if self.skinId == 60008001 then
            self.skillAttack = ClientHero60008ActiveSkill(self)
            self.skillAttack:SetFrameActionEvent(80, 95, 58, -1)
        else
            self.skillAttack = ClientHero60008ActiveSkill(self)
            self.skillAttack:SetFrameActionEvent(80, 95, 58, -1)
        end
    end
end

function ClientHero60008:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero60008:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero60008