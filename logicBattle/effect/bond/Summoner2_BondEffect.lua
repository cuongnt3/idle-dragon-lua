--- @class Summoner2_BondEffect
Summoner2_BondEffect = Class(Summoner2_BondEffect, BondEffect)

--- @return void
--- @param target BaseHero
--- call right before remove effect from hero
function Summoner2_BondEffect:OnEffectRemove(target)
    BondEffect.OnEffectRemove(self, target)
    if self.initiator == self.tanker then
        local i = 1
        while i <= self.bond.bondedHeroList:Count() do
            local bondedHero = self.bond.bondedHeroList:Get(i)
            if bondedHero ~= self.initiator then
                local bondEffectList = bondedHero.effectController:GetEffectWithType(EffectType.BOND_EFFECT)

                for j = 1, bondEffectList:Count() do
                    local bondEffect = bondEffectList:Get(j)
                    if bondEffect.initiator == self.initiator and bondEffect.myHero == bondedHero then
                        bondedHero.effectController:ForceRemove(bondEffect)
                    end
                end
            end

            i = i + 1
        end
    end
end
