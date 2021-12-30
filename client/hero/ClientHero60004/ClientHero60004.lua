require "lua.client.hero.ClientHero60004.ClientHero60004RangeAttack"
require "lua.client.hero.ClientHero60004.ClientHero60004ActiveSkill"

--- Karos
--- @class ClientHero60004 : ClientHero
ClientHero60004 = Class(ClientHero60004, ClientHero)

--- @param heroModelType HeroModelType
function ClientHero60004:CreateInstance(heroModelType)
    return ClientHero60004(heroModelType)
end

function ClientHero60004:InitSkill()
    if self.heroModelType == HeroModelType.Dummy then
        return
    end
    if self.heroModelType >= HeroModelType.Basic then
        self.basicAttack = ClientHero60004RangeAttack(self)
        self.basicAttack:SetFrameActionEvent(60, 61, 45, 39)
    end
    if self.heroModelType >= HeroModelType.Full then
        self.skillAttack = ClientHero60004ActiveSkill(self)
        self.skillAttack:SetFrameActionEvent(80, 81, 55, 15)
    end
end

function ClientHero60004:InitAnimationComponent()
    ClientHero.InitAnimationComponent(self, 1)
end

function ClientHero60004:PlayStartAnimation()
    ClientHero.PlayStartAnimation(self)
    ClientHero.PlayAnimation(self, "fx", true, 0)
    self:EnableFx(true)
end

--- @param effectLogType EffectLogType
function ClientHero60004:OnCompleteGettingFreezed(effectLogType)
    ClientHero.OnCompleteGettingFreezed(self, effectLogType)
    self:EnableFx(false)
end

--- @param effectLogType EffectLogType
function ClientHero60004:RemoveFreezedByType(effectLogType)
    ClientHero.RemoveFreezedByType(self, effectLogType)
    self:EnableFx(true)
end

function ClientHero60004:EnableFx(isEnable)
    if self.fx == nil then
        self.fx = self.components:FindChildByPath("Model/effect_circle/bone_effect")
    end
    self.fx.gameObject:SetActive(isEnable)
end

return ClientHero60004