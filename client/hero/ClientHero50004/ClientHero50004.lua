require "lua.client.hero.ClientHero50004.ClientHero50004ActiveSkill"
require "lua.client.hero.ClientHero50004.ClientHero50004BaseAttack"

--- Grimm
--- @class ClientHero50004 : ClientHero
ClientHero50004 = Class(ClientHero50004, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero50004:CreateInstance(heroModelType)
    return ClientHero50004(heroModelType)
end

function ClientHero50004:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero50004BaseAttack(self)
        self.basicAttack:SetFrameActionEvent(55, 60, 28, -1)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero50004ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(80, 90, 65, 50)
    end
end

return ClientHero50004