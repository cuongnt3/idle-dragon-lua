require "lua.client.hero.ClientHero30008.ClientHero30008MeleeAttack"
require "lua.client.hero.ClientHero30008.ClientHero30008ActiveSkill"

--- Kozorg
--- @class ClientHero30008 : ClientHero
ClientHero30008 = Class(ClientHero30008, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero30008:CreateInstance(heroModelType)
    return ClientHero30008(heroModelType)
end

function ClientHero30008:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero30008MeleeAttack(self)
        self.basicAttack:SetFrameActionEvent(60, 61, 25, -1)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero30008ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(80, 81, 45, 0)
    end
end

return ClientHero30008