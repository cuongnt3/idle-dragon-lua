--- @class ClientHero50017ActiveSkill : BaseSkillShow
ClientHero50017ActiveSkill = Class(ClientHero50017ActiveSkill, BaseSkillShow)

--- @param actionResults List<BaseActionResult>
function ClientHero50017ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(0.8, 0.5, 0.3)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)
end

function ClientHero50017ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_MEDIUM)
    BaseSkillShow.OnTriggerActionResult(self)
end

function ClientHero50017ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end