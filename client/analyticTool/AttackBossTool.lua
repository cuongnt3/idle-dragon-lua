require "lua.logicBattle._gen._LuaRequire"
require "lua.client.core.UnityLib"
require "lua.client.core.ClientRequire"
require "lua.client.utils.XDebug"
require "lua.client.analyticTool.AnalyticUtils"
require "lua.client.analyticTool.AnalyticCoroutine"
require "lua.client.data.DefenderTeamData"


--- @class AttackBossTool
AttackBossTool = Class(AttackBossTool)

--- @return void
function AttackBossTool:Ctor()

    ---@type Dictionary
    self.requireDict = Dictionary()

    self.serviceController = ServiceController.GetInstance()

    local battleService = BattleService()
    local heroDataService = HeroDataService()
    local itemService = ItemDataService()
    local predefineTeamDataService = PredefineTeamDataService()

    AnalyticUtils.InitHeroDataService(heroDataService)
    AnalyticUtils.InitItemDataService(itemService)
    AnalyticUtils.InitPredefineTeamDataService(predefineTeamDataService)

    self.serviceController:SetHeroDataService(heroDataService)
    self.serviceController:SetBattleService(battleService)
    self.serviceController:SetItemDataService(itemService)
    self.serviceController:SetPredefineDataService(predefineTeamDataService)
    self.serviceController:BindDependencies()
end

--- @param pathCsvDefenderTeam string
--- @param pathCsvAttackerTeam string
---@param loop number
function AttackBossTool:GenData(pathCsvDefenderTeam, pathCsvAttackerTeam, indexDefenderTeam, loop, mode)
    ---@type List
    local listAttackerTeam = self:LoadDataTeam(pathCsvAttackerTeam)
    ---@type List
    local listDefenderTeam = self:LoadDataTeam(pathCsvDefenderTeam)

    local content = AnalyticUtils.ReadFile(pathCsvAttackerTeam)
    local lines = content:SplitLine("\n")
    local newContent = lines[1]
    local parsedData = CsvReader.ReadContent(content)
    for k, _ in ipairs(parsedData) do
        local linesIndex = lines[k + 1]:SplitLine(",")
        lines[k + 1] = linesIndex[1]
        for i = 2, 12 do
            if linesIndex[i] ~= nil then
                lines[k + 1] = StringUtils.Trim(lines[k + 1]) .. ',' .. StringUtils.Trim(linesIndex[i])
            else
                lines[k + 1] = StringUtils.Trim(lines[k + 1]) .. ','
            end
        end
        for _ = 1, loop do
            local attackerTeam = listAttackerTeam:Get(k)
            local defenderTeam = listDefenderTeam:Get(indexDefenderTeam)
            if attackerTeam == nil  then
                print("nil attacker team" .. k)
            elseif defenderTeam == nil then
                print("nil defenderTeam" .. indexDefenderTeam)
            else
                local battleCount, listRound = self:RunBattle(attackerTeam, defenderTeam, mode)
                local round = listRound:Get(1)
                if listRound:Count() > 1 then
                    for j = 2, listRound:Count() do
                        round = round .. "_" .. listRound:Get(j)
                    end
                end
                lines[k + 1] = lines[k + 1] .. ',' .. battleCount .. ',' .. round
            end
        end
        newContent = newContent .. "\n" .. lines[k + 1]
    end
    AnalyticUtils.WriteFile(pathCsvAttackerTeam, newContent)
    print("Finish Gen Data Attack Boss")
end

--- @param battleTeamInfo BattleTeamInfo
function AttackBossTool:RequireBattleTeam(battleTeamInfo)
    --- @param v HeroBattleInfo
    for _, v in ipairs(battleTeamInfo:GetListHero():GetItems()) do
        local heroId = v.heroId
        if self.requireDict[heroId] == nil then
            local luaFiles = ResourceMgr.GetHeroesConfig():GetHeroLua():Get(heroId)
            for _, value in pairs(luaFiles) do
                require(value)
            end
            self.requireDict[heroId] = true
        end
    end
end

--- @return DefenderTeamData
--- @param pathCsvTeam string
function AttackBossTool:LoadDataTeam(pathCsvTeam)
    ---@type List
    local listTeamData = List()
    local content = AnalyticUtils.ReadFile(pathCsvTeam)
    local parsedData = CsvReader.ReadContent(content)
    for _, v in ipairs(parsedData) do
        local data = DefenderTeamData(v)
        listTeamData:Add(data)
    end
    return listTeamData
end

--- @return DefenderTeamData
---@param stage number
function AttackBossTool:GetDefenderTeam(stage)
    ---@type DefenderTeamData
    local defenderTeam
    ---@param v GroupDungeonDefenderData
    for _, v in ipairs(self.listDungeonDefender:GetItems()) do
        if v.stageMin <= stage and v.stageMax >= stage then
            defenderTeam = ClientMathUtils.RandomData(v.listDefender:GetItems())
            break
        end
    end
    return defenderTeam
end

--- @return number
---@param attacker DefenderTeamData
---@param defender DefenderTeamData
function AttackBossTool:RunBattle(attacker, defender, mode)
    local runMode = RunMode.FAST
    if mode ~= nil then
        runMode = mode
    end
    local battleCount = 0
    ---@type List
    local listRound = List()
    ---@type BattleTeamInfo
    local attackerTeamInfo = self.serviceController.predefineDataService:GetBattleTeamInfoByDefenderTeamData(attacker)
    attackerTeamInfo.teamId = BattleConstants.ATTACKER_TEAM_ID
    attackerTeamInfo.summonerBattleInfo.teamId = BattleConstants.ATTACKER_TEAM_ID
    ---@type List --<HeroBattleInfo>
    local attackerListHeroInfo = attackerTeamInfo:GetListHero()
    ---@param v HeroBattleInfo
    for _, v in ipairs(attackerListHeroInfo:GetItems()) do
        v.teamId = BattleConstants.ATTACKER_TEAM_ID
    end
    ---@type BattleTeamInfo
    local defenderTeamInfo = self.serviceController.predefineDataService:GetBattleTeamInfoByDefenderTeamData(defender)
    --local defender = SummonerBattleInfo()
    --defender:SetInfo(2, 0, 3, 10)
    --defender:SetSkills(3, 3, 3, 3)
    --defender.isDummy = true
    --defenderTeamInfo:SetSummonerBattleInfo(defender)

    self:RequireBattleTeam(attackerTeamInfo)
    self:RequireBattleTeam(defenderTeamInfo)

    ---@type BattleResult
    local battleResult

    while true do
        ---@type Battle
        local battle = Battle()
        battle:SetGameMode(GameMode.CAMPAIGN)

        battle:SetTeamInfo(attackerTeamInfo, defenderTeamInfo, ClientMathUtils.randomHelper)
        battleResult = self.serviceController.battleService:CalculateBattleResult(battle, runMode)
        print(battleCount .. battleResult:ToString(runMode))
        battleCount = battleCount + 1
        listRound:Add(battleResult.numberRounds)
        if battleResult.winnerTeam == BattleConstants.ATTACKER_TEAM_ID or battleCount == 100 then
            break
        else
            ---@type List --<HeroBattleInfo>
            local defenderListHeroInfo = defenderTeamInfo:GetListHero()
            local index = defenderListHeroInfo:Count()
            while true do
                if index < 0 then
                    break
                end
                local heroInfo = defenderListHeroInfo:Get(index)
                local heroState = battle:GetHeroState(defenderTeamInfo, index)
                --print("heroState " .. i .. ": ".. LogUtils.ToDetail(heroState))
                if(heroState ~= nil and heroState.hpPercent > 0) then
                    heroInfo:SetState(heroState.hpPercent, heroState.position)
                else
                    defenderTeamInfo.listHeroInfo:RemoveByIndex(index)
                end
                index = index - 1
            end
        end
    end
    return battleCount, listRound
end