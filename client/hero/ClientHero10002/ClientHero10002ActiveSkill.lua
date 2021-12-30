--- @class ClientHero10002ActiveSkill : BaseSkillShow
ClientHero10002ActiveSkill = Class(ClientHero10002ActiveSkill, BaseSkillShow)

function ClientHero10002ActiveSkill:DeliverCtor()
    self.projectileLaunchPos = self.clientHero.components:FindChildByPath("Model/bone_gun_shooter/launch_position")
    self.chuyName = string.format("hero_%s_skill_chuy", self.baseHero.id)
    self.chuyObj = nil
    self.targetPosition = nil
    self.fxExplosionName = string.format("hero_%s_explosion", self.baseHero.id)
    self.skillTargetBone = self.clientHero.components:FindChildByPath("Model/SkeletonUtility-Root/root/skill_target")
    self.launchSkillBone = self.clientHero.components:FindChildByPath("Model/launch_skill_position")
end

function ClientHero10002ActiveSkill:DeliverSetFrameAction()
    self:AddFrameAction(37, function()
        self:ThrowChuy()
    end)
end

--- @param actionResults List<BaseActionResult>
function ClientHero10002ActiveSkill:CastOnTarget(actionResults)
    BaseSkillShow.CastOnTarget(self, actionResults)
    self:DoAnimation()

    self.clientBattleShowController:DoCoverBattle(1.2, 0.7, 0.3)
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.FRONT_BATTLE_LAYER_ID)

    if self.clientHero.baseHero.teamId == BattleConstants.ATTACKER_TEAM_ID then
        self.targetPosition = PositionConfig.GetCenterTeamPosition(BattleConstants.DEFENDER_TEAM_ID)
    else
        self.targetPosition = PositionConfig.GetCenterTeamPosition(BattleConstants.ATTACKER_TEAM_ID)
    end
    self.targetPosition = self.targetPosition + U_Vector3.up
    self.skillTargetBone.position = self.targetPosition
end

function ClientHero10002ActiveSkill:OnCastEffect()
    self:CastNewProjectileOnTargets(AssetType.HeroBattleEffect, self.projectileName, nil, nil, self.projectileLaunchPos.position)
end

--- @param effectType string
--- @param effectName string
--- @param flyTime number
function ClientHero10002ActiveSkill:CastNewProjectileOnTargets(effectType, effectName, flyTime)
    flyTime = flyTime or ClientConfigUtils.PROJECTILE_FRY_TIME
    effectName = effectName or self.projectileName
    local projectile = self:GetClientEffect(effectType, effectName)
    if projectile ~= nil then
        projectile:SetPosition(self.projectileLaunchPos.position)
        projectile:LookAtPosition(self.targetPosition)
        projectile:DoMoveTween(self.targetPosition, flyTime, function()
            projectile:Release()
        end)
        projectile:Play()
    end
end

function ClientHero10002ActiveSkill:OnTriggerActionResult()
    self.clientBattleShowController:DoShake(ClientConfigUtils.SHAKE_NORMAL)
    BaseSkillShow.OnTriggerActionResult(self)

    local explosionFx = self:GetClientEffect(AssetType.HeroBattleEffect, self.fxExplosionName)
    explosionFx:SetPosition(self.targetPosition)
    explosionFx:Play()
end

function ClientHero10002ActiveSkill:OnEndTurn()
    BaseSkillShow.ChangeListTargetLayer(self, ClientConfigUtils.BATTLE_LAYER_ID)
    BaseSkillShow.OnEndTurn(self)
end

function ClientHero10002ActiveSkill:ThrowChuy()
    self.chuyObj = self:GetChuy(AssetType.HeroBattleEffect, self.chuyName)
    self.chuyObj.configTable.bounceBezier:DoBounceTarget(self.chuyObj.config.transform, self.launchSkillBone.position,
            self.targetPosition,
            25 / ClientConfigUtils.FPS,
            function()
                self:ReleaseChuy()
            end)
end

function ClientHero10002ActiveSkill:BreakSkillAction()
    BaseSkillShow.BreakSkillAction(self)
    self:ReleaseChuy(true)
end

--- @param killAction boolean
function ClientHero10002ActiveSkill:ReleaseChuy(killAction)
    if self.chuyObj ~= nil then
        SmartPool.Instance:DespawnGameObject(AssetType.GeneralBattleEffect, "bounce_bezier", self.chuyObj.configTable.bounceBezier.transform)
        self.chuyObj.configTable.bounceBezier:StopBounceTweener()
        self.chuyObj:Release()
        if killAction == true then
            self.chuyObj:KillAction()
        end
        self.chuyObj = nil
    end
end

--- @return ClientEffect
--- @param effectType number
--- @param effectName string
function ClientHero10002ActiveSkill:GetChuy(effectType, effectName)
    local effect = self:GetClientEffect(effectType, effectName)
    local bounceBezierObject = SmartPool.Instance:SpawnGameObject(AssetType.GeneralBattleEffect, "bounce_bezier")
    effect:AddConfigField("bounceBezier", bounceBezierObject:GetComponent(ComponentName.BezierSpline))
    effect:Play()
    return effect
end