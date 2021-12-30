--- @class ClientHero50020ActiveSkill : BaseSkillShow
ClientHero50020ActiveSkill = Class(ClientHero50020ActiveSkill, BaseSkillShow)

--- @param actionResults List<BaseActionResult>
function ClientHero50020ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(0.5, 1, 0.3)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)
end

function ClientHero50020ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_HARD)
    BaseSkillShow.OnTriggerActionResult(self)
end

function ClientHero50020ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end