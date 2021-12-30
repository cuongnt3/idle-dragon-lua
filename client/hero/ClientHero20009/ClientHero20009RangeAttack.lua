--- @class ClientHero20009RangeAttack : BaseRangeAttack
ClientHero20009RangeAttack = Class(ClientHero20009RangeAttack, BaseRangeAttack)

function ClientHero20009RangeAttack:Ctor(clientHero)
    BaseRangeAttack.Ctor(self, clientHero)
    if self.clientHero.heroModelType ~= HeroModelType.Full then
        return
    end
    self.projectileLaunchPos = self.clientHero.components:FindChildByPath("Model/launch_position").position
end

function ClientHero20009RangeAttack:OnCastEffect()

end