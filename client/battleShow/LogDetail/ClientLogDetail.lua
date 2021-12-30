require "lua.client.utils.ClientActionResultUtils"
require "lua.client.battleShow.LogDetail.ClientTeamDetail"

require "lua.client.battleShow.LogDetail.ClientEffectLogDetailBuilder"

require "lua.client.battleShow.LogDetail.ClientTurnDetail"
require "lua.client.battleShow.LogDetail.ActionDetail.ClientActionDetailBuilder"

--- @class ClientLogDetail
ClientLogDetail = Class(ClientLogDetail)

--- @return void
--- @param battle Battle
--- @param battleResult BattleResult
function ClientLogDetail:Ctor(battle, battleResult)
    if battle == nil or battleResult == nil then
        assert(false, "data is not valid")
    end
    --- @type RunMode
    self.runMode = battle.runMode
    --- @type ClientTeamDetail
    self.attackerTeam = nil
    --- @type ClientTeamDetail
    self.defenderTeam = nil

    --- @type ClientTurnDetail[] List
    self.turnDetailList = List()

    --- @type number
    self.winnerTeam = nil

    --- @type number
    self.numberRounds = nil

    --- @type number
    self.currentRound = nil
    --- @type number`
    self.currentTurn = nil

    --- @type HeroStatusLog[] List
    self.beforeAttackerTeamLog = List()
    --- @type HeroStatusLog[] List
    self.beforeDefenderTeamLog = List()

    self:InitTeam(battle)
    self:CreateLog(battleResult)
    self:InitStartBattleLog(battleResult)
end

--- @return void
--- @param battleResult BattleResult
function ClientLogDetail:CreateLog(battleResult)
    self.numberRounds = battleResult.numberRounds
    self.winnerTeam = battleResult.winnerTeam

    for i = 1, battleResult.battleRoundLogs:Count() do
        --- @type BattleRoundLog
        local roundLog = battleResult.battleRoundLogs:Get(i)
        self.currentRound = roundLog.roundNumber
        self:CreateLogFromBeforeRounds(roundLog.beforeRoundResults)
        self:CreateLogFromBattleLogTurns(roundLog.battleTurnLogs)
        self:CreateLogFromAfterRounds(roundLog.afterRoundResults)
    end
end

--- @return void
--- @param beforeRoundResults BaseActionResult[] List
function ClientLogDetail:CreateLogFromBeforeRounds(beforeRoundResults)
    self.currentTurn = 0
    self:CreateLogFromActions(ActionType.NOTHING, beforeRoundResults)
end

--- @return void
--- @param battleTurnLogs BattleTurnLog[] List
function ClientLogDetail:CreateLogFromBattleLogTurns(battleTurnLogs)
    for i = 1, battleTurnLogs:Count() do
        --- @type BattleTurnLog
        local turnLog = battleTurnLogs:Get(i)
        self.currentTurn = turnLog.turn
        self:CreateLogFromActions(turnLog.actionType, turnLog.actionResults, turnLog)
    end
end

--- @return void
--- @param afterRoundResults BaseActionResult[] List
function ClientLogDetail:CreateLogFromAfterRounds(afterRoundResults)
    self.currentTurn = 0
    self:CreateLogFromActions(ActionType.NOTHING, afterRoundResults)
end

--- @return void
--- @param actionType ActionType
--- @param actionResults List -- BaseActionResult
function ClientLogDetail:CreateLogFromActions(actionType, actionResults)
    -- filter depend on type
    if actionResults:Count() == 0 then
        return
    end
    -- create turn list
    local listOfListTurn = self:SeparateActions(actionResults)
    for i = 1, listOfListTurn:Count() do
        --- @type List
        local listActionResults = listOfListTurn:Get(i)
        local actionDict = Dictionary()
        for j = 1, listActionResults:Count() do
            --- @type BaseActionResult
            local action = listActionResults:Get(j)
            action.index = j

            self:SetClientActionDetail(action, actionDict)
        end

        --- action List
        local actionDetailList = List()
        --- @param value ClientActionDetail
        for _, value in pairs(actionDict:GetItems()) do
            value:Execute()
            actionDetailList:AddAll(value:GetItems())
            if value.type == ActionResultType.CHANGE_EFFECT then
                actionDetailList:AddAll(value:GetCCItems())
            end
        end
        if actionDetailList:Count() > 0 then
            self:AddTurn(actionType, actionDetailList)
        end
    end
end

--- @return List -- List<List<BaseActionResult>>
--- @param actionResults List -- BaseActionResult[]
function ClientLogDetail:SeparateActions(actionResults)
    local turnList = List()
    local actionTurnList = List()
    local rebornTurnList = List()
    local deadForDisplayList = List()

    --- @type number
    local numberBouncing
    --- @type List
    local listBouncingResult

    --print(">>>>>>>> actionResults ", actionResults:Count())
    for i = 1, actionResults:Count() do
        --- @type BaseActionResult
        local baseActionResult = actionResults:Get(i)
        --- @type ActionResultType
        local actionResultType = baseActionResult.type
        --print("actionResultType ", actionResultType)

        --- @type BaseActionResult
        local firstAction
        if actionTurnList:Count() > 0 then
            firstAction = actionTurnList:Get(1)
        end

        if actionResultType == ActionResultType.DEAD_FOR_DISPLAY then
            deadForDisplayList:Add(baseActionResult)
        end

        local AddBouncingToTurnList = function()
            if listBouncingResult ~= nil and listBouncingResult:Count() > 0 then
                turnList:Add(listBouncingResult)
                listBouncingResult = List()
            end
            numberBouncing = nil
        end

        if ClientActionResultUtils.IsRegenerate(actionResultType) then
            AddBouncingToTurnList()

            if baseActionResult.isTransform then
                rebornTurnList:Add(baseActionResult)
                if firstAction ~= nil and ClientActionResultUtils.IsKeepAliveAnim(firstAction.type) == false then

                    turnList:Add(actionTurnList)
                    actionTurnList = List()
                end
            end
            actionTurnList:Add(baseActionResult)
        elseif ClientActionResultUtils.IsKeepAliveAnim(actionResultType) then
            rebornTurnList:Add(baseActionResult)
            if firstAction ~= nil and ClientActionResultUtils.IsKeepAliveAnim(firstAction.type) == false then
                turnList:Add(actionTurnList)
                actionTurnList = List()
            end
            actionTurnList:Add(baseActionResult)
        elseif ClientActionResultUtils.IsIndependentTurn(actionResultType) then
            AddBouncingToTurnList()

            if actionTurnList:Count() > 0 then
                turnList:Add(actionTurnList)
                actionTurnList = List()
            end
            actionTurnList:Add(baseActionResult)
        elseif actionResultType == ActionResultType.BOUNCING_DAMAGE then
            local number = baseActionResult.numberBouncing
            if numberBouncing == nil then
                if actionTurnList:Count() > 0 then
                    turnList:Add(actionTurnList)
                    actionTurnList = List()
                end
                listBouncingResult = List()
                numberBouncing = 1
                listBouncingResult:Add(baseActionResult)
                --print("Create Bouncing")
            elseif numberBouncing ~= number then
                if listBouncingResult ~= nil and listBouncingResult:Count() > 0 then
                    turnList:Add(listBouncingResult)
                    listBouncingResult = List()
                end
                numberBouncing = number
                listBouncingResult:Add(baseActionResult)
                --print("Create More Bouncing")
            else
                listBouncingResult:Add(baseActionResult)
                --print("Add More Bouncing")
            end
        elseif ClientActionResultUtils.IsMergerTurn(actionResultType) then
            if firstAction ~= nil and firstAction.type ~= actionResultType then
                turnList:Add(actionTurnList)
                actionTurnList = List()
            end
            actionTurnList:Add(baseActionResult)
        elseif numberBouncing ~= nil then
            listBouncingResult:Add(baseActionResult)
        else
            actionTurnList:Add(baseActionResult)
        end
    end

    if listBouncingResult ~= nil and listBouncingResult:Count() > 0 then
        turnList:Add(listBouncingResult)
    end
    if actionTurnList:Count() > 0 then
        turnList:Add(actionTurnList)
    end

    if rebornTurnList:Count() > 0 then
        for _, actionDeadForDisplay in ipairs(deadForDisplayList:GetItems()) do
            for _, actionReborn in ipairs(rebornTurnList:GetItems()) do
                if actionDeadForDisplay.target == actionReborn.target then
                    actionDeadForDisplay.isReviveSoon = true
                end
            end
            --- remove effect
            local hero = actionDeadForDisplay.target
            local team = self:GetTeam(hero.teamId)
            team.heroEffectDict:RemoveByKey(hero)
        end
    end

    return turnList
end

--- @return void
--- @param baseActionResult BaseActionResult
--- @param actionDict Dictionary -- ClientActionDetail
function ClientLogDetail:SetClientActionDetail(baseActionResult, actionDict)
    local actionResultType = baseActionResult.type
    --- @type ClientActionDetail
    local clientActionDetail = actionDict:Get(actionResultType)
    if clientActionDetail == nil then
        clientActionDetail = ClientActionDetailBuilder.Create(actionResultType)
        actionDict:Add(actionResultType, clientActionDetail)
        clientActionDetail:Add(baseActionResult)
    else
        local otherActionDetail = ClientActionDetailBuilder.Create(actionResultType)
        otherActionDetail:OverloadAction(clientActionDetail)
        otherActionDetail:Add(baseActionResult)
        actionDict:Add(actionResultType, otherActionDetail)
    end
end

--- @return void
--- @param actionType ActionType
--- @param actionList List -- | ClientActionDetail
function ClientLogDetail:AddTurn(actionType, actionList)
    local clientTurn = self.turnDetailList:Count() + 1
    --- @type ClientTurnDetail
    local clientTurnDetail = ClientTurnDetail(self, clientTurn, self.currentRound, self.currentTurn)
    clientTurnDetail:SetData(actionType, actionList)
    if self.turnDetailList:Count() > 0 then
        --- @type ClientTurnDetail
        local preTurnDetail = self.turnDetailList:Get(self.turnDetailList:Count())

        if ClientActionResultUtils.IsAttackMultiTimes(clientTurnDetail.actionType) then
            --print(1, clientTurnDetail.actionType)
            --local preClientTurnActionType = preTurnDetail.actionType
            --print("pre ", preClientTurnActionType)
            --if preClientTurnActionType == ClientActionType.BASIC_ATTACK
            --        or preClientTurnActionType == ClientActionType.USE_SKILL then
            --    preTurnDetail:SetExtraTurnInfo(preClientTurnActionType)
            --    clientTurnDetail:SetExtraTurnInfo(preTurnDetail.extraTurnInfo.clientActionType)
            --else
            --    clientTurnDetail:SetExtraTurnInfo(preTurnDetail.extraTurnInfo.clientActionType, 1)
            --end
            if preTurnDetail.actionType == ClientActionType.BASIC_ATTACK
                    or preTurnDetail.actionType == ClientActionType.USE_SKILL then
                preTurnDetail:SetExtraTurnInfo(preTurnDetail.actionType)
            end
            clientTurnDetail:SetExtraTurnInfo(preTurnDetail.extraTurnInfo.clientActionType)
        elseif ClientActionResultUtils.IsAttackMultiTimes(preTurnDetail.actionType) then
            local prepreTurnDetail = self.turnDetailList:Get(self.turnDetailList:Count() - 1)
            preTurnDetail:SetExtraTurnInfo(prepreTurnDetail.extraTurnInfo.clientActionType, 0)
        end
    end

    self.turnDetailList:Add(clientTurnDetail)
end

--- @return void
--- @param battle Battle
function ClientLogDetail:InitTeam(battle)
    self.attackerTeam = ClientTeamDetail(battle:GetAttackerTeam())
    self.defenderTeam = ClientTeamDetail(battle:GetDefenderTeam())
end

--- @return ClientTeamDetail
--- @param teamId number
function ClientLogDetail:GetTeam(teamId)
    if teamId == BattleConstants.ATTACKER_TEAM_ID then
        return self.attackerTeam
    else
        return self.defenderTeam
    end
end

--- @param battleResult BattleResult
function ClientLogDetail:InitStartBattleLog(battleResult)
    self.beforeAttackerTeamLog = battleResult.attackerTeamLog.beforeLogs
    self.beforeDefenderTeamLog = battleResult.defenderTeamLog.beforeLogs
end

--- @return string
function ClientLogDetail:ToString()
    local content = "__________________ START LOG ___________________\n"
    content = content .. "[ATTACKER TEAM]\n" .. self.attackerTeam:ToString()
    content = content .. "[DEFENDER TEAM]\n" .. self.defenderTeam:ToString()

    --content = content .. "____ START TURN ____\n"
    for i = 1, self.turnDetailList:Count() do
        content = content .. self.turnDetailList:Get(i):ToString()
    end
    return content
end