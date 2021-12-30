require "lua.client.hero.ClientHero60003.ClientHero60003BaseAttack"
require "lua.client.hero.ClientHero60003.ClientHero60003ActiveSkill"

--- Zalidus
--- @class ClientHero60003 : ClientHero
ClientHero60003 = Class(ClientHero60003, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero60003:CreateInstance(heroModelType)
    return ClientHero60003(heroModelType)
end

function ClientHero60003:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        if self.skinId == 60003002 then
            require "lua.client.hero.ClientHero60003.ClientHero60003002.ClientHero60003002BaseAttack"
            self.basicAttack = ClientHero60003002BaseAttack(self)
            self.basicAttack:SetFrameActionEvent(55, 56, 23, 0)
        else
            self.basicAttack = ClientHero60003BaseAttack(self)
            self.basicAttack:SetFrameActionEvent(55, 56, 23, -1)
        end
    end
    if self.heroModelType >= HeroModelType.Full then
        if self.skinId == 60003002 then
            require "lua.client.hero.ClientHero60003.ClientHero60003002.ClientHero60003002ActiveSkill"
            self.skillAttack = ClientHero60003002ActiveSkill(self)
        else
            self.skillAttack = ClientHero60003ActiveSkill(self)
        end
        self.skillAttack:SetFrameActionEvent(101, 102, 57, 0)
    end
end

function ClientHero60003:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 2)
end

function ClientHero60003:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    if self.skinId == 60003002 then
        ClientHero.PlayAnimation(self, "fx", true, 0)
    else
        ClientHero.PlayAnimation(self, "fx_body", true, 0)
        ClientHero.PlayAnimation(self, "fx_neck", true, 1)
    end
end

return ClientHero60003