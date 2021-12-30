---@class ClientBattleTeamController
ClientBattleTeamController = Class(ClientBattleTeamController)

function ClientBattleTeamController:Ctor(clientBattleShowController)
    --- @type number
    self.formationId = 0
    self.teamId = 0
    self.companionId = 0

    --- @type ClientBattleShowController
    self.clientBattleShowController = clientBattleShowController

	--- @type Dictionary<BaseHero, ClientHero>
    self.heroDictionary = Dictionary()

    --- @type table<BaseHero, ClientHero>
    self.heroTeamTable = {}

    --- @type boolean
    self.isEnableDivineShield = false

    --- @type Dictionary -- EffectLogType, ClientEffect
    self.teamEffectDict = Dictionary()

    --- @type BaseHero
    self.summoner = nil
end

--- @param clientTeamDetail ClientTeamDetail
--- @param teamId number
function ClientBattleTeamController:Init(teamId, clientTeamDetail)
    self.formationId = clientTeamDetail.formationId
    self.teamId = teamId

    if clientTeamDetail.companionBuffId ~= nil then
        self.companionId = clientTeamDetail.companionBuffId
    end
end

--- @param baseHero BaseHero
function ClientBattleTeamController:AddHero(baseHero, clientHero)
    self.heroDictionary:Add(baseHero, clientHero)
    if baseHero.isSummoner == true and baseHero.isDummy == false then
        self.summoner = baseHero
    end
end

--- @params beforeTurnActionResults List<BaseActionResult>
function ClientBattleTeamController:DoBeforeTurnActionResults(beforeTurnActionResults)
end

--- @param battleTurnLog BattleTurnLog
function ClientBattleTeamController:DoActivelyAction(battleTurnLog)
    local _initiator = self.heroDictionary:Get(battleTurnLog.initiator)
    assert(_initiator)
    _initiator:DoActivelyAction(battleTurnLog)
end

--- @param actionResults List<BaseActionResult>
function ClientBattleTeamController:DoTargetActionLog(actionResults)
    for i = 1, actionResults:Count() do
        local _result = actionResults:Get(i)

        --- @type ActionResultType
        local _hero = self.heroDictionary:Get(_result.target)
        if _hero ~= nil then
            _hero:DoTargetActionLog(_result)
        end
    end
end

--- @param battleTeamLog BattleTeamLog
function ClientBattleTeamController:DoTurnResultStatus(battleTeamLog)
    --- @type HeroStatusLog[] List
    local _beforeLogs = battleTeamLog.beforeLogs
    local _afterLogs = battleTeamLog.afterLogs

    for _baseHero, _hero in pairs(self.heroTeamTable) do
        local _beforeStatus = self:GetBaseHeroStatusLogs(_beforeLogs, _baseHero)
        local _afterStatus = self:GetBaseHeroStatusLogs(_afterLogs, _baseHero)

        _hero:DoTurnResultStatus(_beforeStatus, _afterStatus)
    end
end

function ClientBattleTeamController:TriggerActivelyActionResult()
    self.clientBattleShowController:TriggerActivelyActionResult()
end

--- @param beforeRoundActionResults List<BaseActionResult>
function ClientBattleTeamController:DoBeforeRoundActionResults(beforeRoundActionResults)
    for k, _hero in pairs(self.heroTeamTable) do
        _hero:DoBeforeRoundActionResults(beforeRoundActionResults)
    end
end

--- @param beforeRoundStatusLogs HeroStatusLog[]
function ClientBattleTeamController:DoBeforeRoundStatus(beforeRoundStatusLogs)
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        local _beforeStatus = self:GetBaseHeroStatusLogs(beforeRoundStatusLogs, _baseHero)
        if _beforeStatus ~= nil then
            _hero:DoBeforeRoundStatus(_beforeStatus)
        end
    end
end

--- @param afterRoundStatusLogs HeroStatusLog[]
function ClientBattleTeamController:DoAfterRoundStatus(afterRoundStatusLogs)
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        local _afterStatus = self:GetBaseHeroStatusLogs(afterRoundStatusLogs, _baseHero)
        if _afterStatus ~= nil then
            _hero:DoAfterRoundStatus(_afterStatus)
        end
    end
end

--- Action after attacker's action
--- @param afterTurnActionResults List<BaseActionResult>
function ClientBattleTeamController:DoAfterTurnActionResults(afterTurnActionResults)
    for k, _hero in pairs(self.heroTeamTable) do
        _hero:DoAfterTurnActionResults(afterTurnActionResults)
    end
end

--- @param baseHeroStatusLogs HeroStatusLog[]
--- @param baseHero BaseHero
function ClientBattleTeamController:GetBaseHeroStatusLogs(baseHeroStatusLogs, baseHero)
    for i = 1, baseHeroStatusLogs:Count() do
        if baseHeroStatusLogs:Get(i).myHero == baseHero  then
            return baseHeroStatusLogs:Get(i)
        end
    end
    return nil
end

function ClientBattleTeamController:DoCounterAttackAction(counterAttackResult, baseHero)
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        if _baseHero == baseHero then
             _hero:DoCounterAttackAction(counterAttackResult)
        end
    end
end

function ClientBattleTeamController:DoCounterAttackStatus(counterAttackResult, baseHero)
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        if _baseHero == baseHero then
            _hero:DoCounterAttackStatus(counterAttackResult)
        end
    end
end

--- @param effectLogType EffectLogType
--- @param clientEffectDetail ClientEffectDetail
function ClientBattleTeamController:UpdateTeamEffect(effectLogType, clientEffectDetail)
    if clientEffectDetail.buff > 0 or clientEffectDetail.debuff > 0 then
        self:EnableTeamEffect(effectLogType)
    else
        self:DisableTeamEffect(effectLogType)
    end
end

function ClientBattleTeamController:ClearTeamTotalActionResultType()
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        _hero:ClearTotalActionResultType()
    end
end

function ClientBattleTeamController:LogTeamViewAllActionResultType()
    for _baseHero, _hero in pairs(self.heroTeamTable) do
        _hero:LogViewAllActionResultType()
    end
end

function ClientBattleTeamController:GetTeamBossCount()
    local count = 0
    --- @param baseHero BaseHero
    for baseHero, _ in pairs(self.heroDictionary:GetItems()) do
        if baseHero.isBoss == true then
            count = count + 1
        end
    end
    return count
end

--- @return number
function ClientBattleTeamController:GetDamageDealAtKeyTurn(key)
    local total = 0
    local heroStatisticsDict = ClientBattleData.battleResult.heroStatisticsDict
    --- @param baseHero BaseHero
    --- @param heroStatistics HeroStatistics
    for baseHero, heroStatistics in pairs(heroStatisticsDict:GetItems()) do
        if baseHero.teamId == BattleConstants.ATTACKER_TEAM_ID then
            local damageDealHistory = heroStatistics.damageDealHistory
            if damageDealHistory:IsContainKey(key) then
                total = total + damageDealHistory:Get(key)
            end
        end
    end
    return total
end

--- @param actionResultType ActionResultType
--- @param baseActionResult BaseActionResult
function ClientBattleTeamController:DoTeamAction(actionResultType, baseActionResult)
    if actionResultType == ActionResultType.DIVINE_SHIELD then
        --- @type DivineEffectResult
        local divineEffectResult = baseActionResult
        local remainingRound = baseActionResult.remainingRound
        if remainingRound < 0 then
            self:DisableTeamEffect(EffectLogType.DIVINE_SHIELD)
        else
            self:EnableTeamEffect(EffectLogType.DIVINE_SHIELD)
        end
        local battleTextLog = self.clientBattleShowController:GetUIBattleTextLog()
        if battleTextLog ~= nil then
            battleTextLog:LogDamageAtPosition(PositionConfig.GetCenterTeamPosition(self.teamId), divineEffectResult.damage)
        end
    end
end

--- @param effectLogType EffectLogType
function ClientBattleTeamController:EnableTeamEffect(effectLogType)
    --- @type ClientEffect
    local clientEffect = self.teamEffectDict:Get(effectLogType)
    if clientEffect == nil then
        clientEffect = self.clientBattleShowController:GetClientEffect(AssetType.GeneralBattleEffect, "effect_type_" .. effectLogType)

        clientEffect:SetPosition(U_Vector3.zero)
        clientEffect:LookAtPosition(PositionConfig.GetOpponentCenterTeamPosition(self.teamId))

        clientEffect:Play()

        self.teamEffectDict:Add(effectLogType, clientEffect)
    end
end


--- @param effectLogType EffectLogType
function ClientBattleTeamController:DisableTeamEffect(effectLogType)
    --- @type ClientEffect
    local clientEffect = self.teamEffectDict:Get(effectLogType)
    if clientEffect ~= nil then
        clientEffect:Release()
        self.teamEffectDict:RemoveByKey(effectLogType)
    end
end

function ClientBattleTeamController:ReturnPool()
    --- @param v ClientEffect
    for k, v in pairs(self.teamEffectDict:GetItems()) do
        v:ReturnPool()
    end
end