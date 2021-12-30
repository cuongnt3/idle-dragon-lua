require "lua.logicBattle._gen._LuaRequire"
require "lua.client.core.UnityLib"
require "lua.client.core.ClientRequire"
require "lua.client.utils.XDebug"
require "lua.client.analyticTool.AnalyticUtils"
require "lua.client.analyticTool.AnalyticCoroutine"
require "lua.client.analyticTool.GroupDungeonDefenderData"

DUNGEON_DEFENDER_PATH = "csv/dungeon/defender_team.csv"
DUNGEON_ATTACKER_PATH = "csv/dungeon/dungeon_config.csv"

--- @class DungeonTool
DungeonTool = Class(DungeonTool)

--- @return void
function DungeonTool:Ctor()
    self:LoadDataDungeon()
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
---@param loop number
function DungeonTool:GenData(pathCsvDefenderTeam, loop)
    local content = AnalyticUtils.ReadFile(pathCsvDefenderTeam)
    local lines = content:SplitLine("\n")
    local newContent = lines[1]
    local parsedData = CsvReader.ReadContent(content)
    for k, v in ipairs(parsedData) do
        ---@type HeroResource
        local heroResource = HeroResource(v)
        heroResource:SetData(nil, tonumber(v['hero_id']), tonumber(v['star']), tonumber(v['level']))
        for i = 1, 6 do
            local id = tonumber(v["item_" .. i])
            --if id > 0 then
                heroResource.heroItem:Add(i, id)
            --end
        end
        local linesIndex = lines[k + 1]:SplitLine(",")
        lines[k + 1] = linesIndex[1]
        for i = 2, 9 do
            lines[k + 1] = lines[k + 1] .. ',' .. linesIndex[i]
        end
        for i = 1, loop do
            local stage = self:RunBattleDungeon(heroResource)
            lines[k + 1] = lines[k + 1] .. ',' .. stage
        end
        newContent = newContent .. "\n" .. lines[k + 1]
    end
    AnalyticUtils.WriteFile(pathCsvDefenderTeam, newContent)
    print("Finish Gen Data Dungeon")
end

--- @param battleTeamInfo BattleTeamInfo
function DungeonTool:RequireBattleTeam(battleTeamInfo)
    --- @param v HeroBattleInfo
    for i, v in ipairs(battleTeamInfo:GetListHero():GetItems()) do
        local heroId = v.heroId
        if self.requireDict[heroId] == nil then
            local luaFiles = ResourceMgr.GetHeroesConfig():GetHeroLua():Get(heroId)
            for key, value in pairs(luaFiles) do
                require(value)
            end
            self.requireDict[heroId] = true
        end
    end
end

--- @return void
function DungeonTool:LoadDataDungeon()
    ---@type {formation, isFront, position}
    self.dungeonConfig = {}
    local parsedData
    parsedData = CsvReaderUtils.ReadAndParseLocalFile(DUNGEON_ATTACKER_PATH)
    self.dungeonConfig.formation = tonumber(data[1]['formation_attacker'])
    self.dungeonConfig.isFront = MathUtils.ToBoolean(data[1]['is_front'])
    self.dungeonConfig.position = tonumber(data[1]['position'])

    ---@type List
    self.listDungeonDefender = List()
    parsedData = CsvReaderUtils.ReadAndParseLocalFile(DUNGEON_DEFENDER_PATH)
    local cacheStage
    ---@type GroupDungeonDefenderData
    local groupData
    for i = 1, #parsedData do
        local data = parsedData[i]
        if(groupData == nil) then
            groupData = GroupDungeonDefenderData()
            groupData:AddDefender(data)
            if cacheStage ~= nil then
                groupData.stageMin = cacheStage
            end
        end
        if data.stage ~= nil and data.stage ~= "" then
            cacheStage = tonumber(data.stage)
            if groupData.stageMin == nil then
                groupData.stageMin = cacheStage
            else
                groupData.stageMax = cacheStage
                ClientMathUtils.CalculateRate(groupData.listDefender:GetItems(), "rate")
                self.listDungeonDefender:Add(groupData)
                groupData = nil
            end
        end
    end
end

--- @return DefenderTeamData
---@param stage number
function DungeonTool:GetDefenderTeam(stage)
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
---@param heroResource HeroResource
function DungeonTool:RunBattleDungeon(heroResource)
    local stage = 1

    ---@type BattleTeamInfo
    local attackerTeamInfo = BattleTeamInfo()
    attackerTeamInfo:SetFormationId(self.dungeonConfig.formation)
    local heroInfo = HeroBattleInfo()
    heroInfo:SetInfo(1, heroResource.heroId, heroResource.heroStar, heroResource.heroLevel)
    heroInfo:SetPosition(self.dungeonConfig.isFront, self.dungeonConfig.position)
    heroInfo:SetState(1, 0)
    for i, v in pairs(heroResource.heroItem:GetItems()) do
        heroInfo.items:Add(i, v)
    end
    attackerTeamInfo:AddHero(heroInfo)

    local attacker = SummonerBattleInfo()
    attacker:SetInfo(1, 0, 3, 1)
    attacker:SetSkills(3, 3, 3, 3)
    attacker.isDummy = true
    attackerTeamInfo:SetSummonerBattleInfo(attacker)

    ---@type BattleTeamInfo
    local defenderTeamInfo
    ---@type DefenderTeamData
    local defenderTeam

    ---@type BattleResult
    local battleResult
    --- @type HeroState
    local heroState

    while true do
        if heroState ~= nil then
            heroInfo:SetState(heroState.hpPercent, heroState.position)
        end
        defenderTeam = self:GetDefenderTeam(stage)
        if defenderTeam ~= nil then
            defenderTeamInfo = self.serviceController.predefineDataService:GetBattleTeamInfoByDefenderTeamData(defenderTeam)
            local defender = SummonerBattleInfo()
            defender:SetInfo(2, 0, 3, 1)
            defender:SetSkills(3, 3, 3, 3)
            defender.isDummy = true
            defenderTeamInfo:SetSummonerBattleInfo(defender)

            self:RequireBattleTeam(attackerTeamInfo)
            self:RequireBattleTeam(defenderTeamInfo)

            ---@type Battle
            local battle = Battle()
            battle:SetGameMode(GameMode.DUNGEON)
            battle:SetTeamInfo(attackerTeamInfo, defenderTeamInfo, ClientMathUtils.randomHelper)
            battleResult = self.serviceController.battleService:CalculateBattleResult(battle, RunMode.FAST)
            if battleResult.winnerTeam == BattleConstants.ATTACKER_TEAM_ID then
                stage = stage + 1
                heroState = battle:GetHeroState(attackerTeamInfo, 1)
            else
                break
            end
        else
            stage = stage - 1
            break
        end
    end
    return stage
end