--- @class ClientHero10016ActiveSkill : BaseSkillShow
ClientHero10016ActiveSkill = Class(ClientHero10016ActiveSkill, BaseSkillShow)

function ClientHero10016ActiveSkill:DeliverCtor()
    self.effect1Name = string.format("hero_%d_eff_skill_%s", self.baseHero.id, self.clientHero.skinName)
    self.effect2Name = "hero_10016_skill_atk"
end

--- @param actionResults List<BaseActionResult>
function ClientHero10016ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(1.5, 1.3, 0.5)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)
end

function ClientHero10016ActiveSkill:OnCastEffect()
    --- @type ClientEffect
    for i = 1, self.listTargetHero:Count() do
        local clientTargetHero = self.clientBattleShowController:GetClientHeroByBaseHero(self.listTargetHero:Get(i))
        local effect = self:GetClientEffect(AssetType.HeroBattleEffect, self.effect2Name)
        if effect ~= nil then
            effect:SetToHeroAnchor(clientTargetHero)
        end
    end
end

function ClientHero10016ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end