--- @class ClientHero20008BaseAttack : BaseRangeAttack
ClientHero20008BaseAttack = Class(ClientHero20008BaseAttack, BaseRangeAttack)

function ClientHero20008BaseAttack:DeliverCtor()
    self.targetBone = self.clientHero.components:FindChildByPath("Model/SkeletonUtility-Root/root/target")
    self.projectileLaunchPos = self.targetBone:Find("launch_position")
    self.deltaX = 2
    if self.baseHero.teamId == BattleConstants.ATTACKER_TEAM_ID then
        self.deltaX = -2
    end
end

--- @param actionResults List<BaseActionResult>
function ClientHero20008BaseAttack:CastOnTarget(actionResults)
    BaseRangeAttack.CastOnTarget(self, actionResults)

    --- @type BaseHero
    local firstTarget = self.listTargetHero:Get(1)
    local linePos = PositionConfig.GetLinePosition(firstTarget.teamId, firstTarget.positionInfo.isFrontLine)
    self.targetBone.position = linePos + U_Vector3(self.deltaX, 5, 0)
end

function ClientHero20008BaseAttack:OnCastEffect()
    self:CastNewProjectileOnTargets(AssetType.HeroBattleEffect, self.projectileName, nil, nil, self.projectileLaunchPos.position)
end