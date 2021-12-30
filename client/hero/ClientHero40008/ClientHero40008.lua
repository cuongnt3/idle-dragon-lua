require "lua.client.hero.ClientHero40008.ClientHero40008ActiveSkill"

--- Lass
--- @class ClientHero40008 : ClientHero
ClientHero40008 = Class(ClientHero40008, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero40008:CreateInstance(heroModelType)
    return ClientHero40008(heroModelType)
end

function ClientHero40008:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        require "lua.client.hero.ClientHero40008.ClientHero40008RangeAttack"
        if self.skinId == 40008001 then
            require "lua.client.hero.ClientHero40008.40008001.ClientHero40008001RangeAttack"
            self.basicAttack = ClientHero40008001RangeAttack(self)
        else
            self.basicAttack = ClientHero40008RangeAttack(self)
        end
        self.basicAttack:SetFrameActionEvent(50, 51, 36, 31)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero40008ActiveSkill(self)
        if self.skinId == 40008001 then
            self.skillAttack:SetFrameActionEvent(69, 90, 64, 55)
        else
            self.skillAttack:SetFrameActionEvent(69, 70, 64, 55)
        end
    end
end

function ClientHero40008:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero40008:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
end

return ClientHero40008