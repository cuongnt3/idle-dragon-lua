--- @class ClientHero50004BaseAttack : BaseSkillShow
ClientHero50004BaseAttack = Class(ClientHero50004BaseAttack, BaseSkillShow)

--- @param clientHero ClientHero
function ClientHero50004BaseAttack:Ctor(clientHero)
    BaseSkillShow.Ctor(self, clientHero, true)
    self.moveBone = self.clientHero.components:FindChildByPath("Model/SkeletonUtility-Root/root/move_attack")
end

--- @param actionResults List<BaseActionResult>
function ClientHero50004BaseAttack:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)

    local target = self.listTargetHero:Get(1)
    local clientTarget = self.clientBattleShowController:GetClientHeroByBaseHero(target)
    self.moveBone.position = clientTarget.components:GetAnchorPosition(ClientConfigUtils.FOOT_ANCHOR)
end

function ClientHero50004BaseAttack:OnCompleteActionTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    self.clientHero:FinishActionTurn()
end

function ClientHero50004BaseAttack:ResetMoveBone()
    self.moveBone.localPosition = U_Vector3.zero
end

function ClientHero50004BaseAttack:BreakSkillAction()
    BaseSkillShow.BreakSkillAction(self)
    self:ResetMoveBone()
end