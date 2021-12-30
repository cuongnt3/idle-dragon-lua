--- @class ClientHero20009ActiveSkill : BaseSkillShow
ClientHero20009ActiveSkill = Class(ClientHero20009ActiveSkill, BaseSkillShow)

--- @param clientHero ClientHero
function ClientHero20009ActiveSkill:Ctor(clientHero)
    BaseSkillShow.Ctor(self, clientHero)
    if self.clientHero.heroModelType ~= HeroModelType.Full then
        return
    end
end

--- @param actionResults List<BaseActionResult>
function ClientHero20009ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(1.5, 0.8, 0.4)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)
end

function ClientHero20009ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_HARD)
    BaseSkillShow.OnTriggerActionResult(self)
end

function ClientHero20009ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end

function ClientHero20009ActiveSkill:OnCastEffect()

end