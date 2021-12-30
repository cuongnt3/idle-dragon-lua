--- @class ClientHero50004ActiveSkill : BaseSkillShow
ClientHero50004ActiveSkill = Class(ClientHero50004ActiveSkill, BaseSkillShow)

--- @param actionResults List - BaseActionResult
function ClientHero50004ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(1, 1, 0.4)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)
end

function ClientHero50004ActiveSkill:OnCastEffect()
    self:CastImpactFromConfig()
end

function ClientHero50004ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_HARD)
    self:CastSfxImpactFromConfig()
    self.clientHero:TriggerActionResult()
end

function ClientHero50004ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end