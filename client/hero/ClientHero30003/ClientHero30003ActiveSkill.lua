--- @class ClientHero30003ActiveSkill : BaseSkillShow
ClientHero30003ActiveSkill = Class(ClientHero30003ActiveSkill, BaseSkillShow)

function ClientHero30003ActiveSkill:DeliverCtor()
    self.effectName = string.format("hero_%d_skill_impact", self.baseHero.id)
end

--- @param actionResults List<BaseActionResult>
function ClientHero30003ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(0.5, 0.7, 0.3)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)

    for i = 1, self.listTargetHero:Count() do
        local effect = self:GetClientEffect(AssetType.HeroBattleEffect, self.effectName)
        if effect ~= nil then
            local clientTargetHero = self.clientBattleShowController:GetClientHeroByBaseHero(self.listTargetHero:Get(i))
            effect:SetToHeroAnchor(clientTargetHero)
        end
    end
end

function ClientHero30003ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_MEDIUM)
    BaseSkillShow.OnTriggerActionResult(self)
end

function ClientHero30003ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end