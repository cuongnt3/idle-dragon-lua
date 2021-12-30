require "lua.logicBattle._gen._LuaRequire"
require "lua.client.utils.json"
require "lua.client.core.UnityLib"
require "lua.libs.Class"
require "lua.libs.collection.Dictionary"
require "lua.libs.collection.List"
require "lua.client.utils.CsvReaderUtils"
require "lua.logicBattle.services.ServiceController"
require "lua.client.core.UnityLib"
require "lua.client.utils.Coroutine"
require "lua.client.utils.XDebug"
require "lua.client.analyticTool.AnalyticUtils"
require "lua.client.core.ResourceMgr"
require "lua.client.analyticTool.AnalyticCoroutine"

--- @type CS_ZgMgr
zgUnity = {}
zgUnity.UrlLua = string.format("%s/../../XLua/", U_Application.dataPath)

--- @class AnalyticTool
local AnalyticTool = Class(AnalyticTool)

--- @return void
function AnalyticTool:Ctor()
    XDebug.Log("Run analytic tool success")
    self:InitButtonListener()

    AnalyticUtils.InitService(self)
end

function AnalyticTool:InitButtonListener()

    battle.btnRunBattle.onClick:AddListener(function()
        self.numberRepeat = battle.numberRepeat
        self.attackerCount = battle.attackerList.Count
        self.attackerList = battle.attackerList
        self.defenderCount = battle.defenderList.Count
        self.defenderList = battle.defenderList
        self.isLogDetail = battle.isLogDetail
        self.isContinue = battle.isContinue
        self.numberMerger = battle.numberMerger
        local key = "AnalyticTool"
        assert(AnalyticCoroutine.start(function()
            local count = 0
            local countMerger = 0
            local totalBattle = battle.totalBattle
            local startTime = os.time()
            local data = ""

            local startAttacker = 1
            local startDefender = 1
            local startRepeat = 1
            if self.isContinue then
                local localObject = U_PlayerPrefs.GetString(key, nil)
                XDebug.Log("Read: " .. LogUtils.ToDetail(localObject))
                if localObject ~= nil then
                    localObject = json.decode(localObject)
                    localObject.numberRepeat = localObject.numberRepeat + 1
                    startRepeat = localObject.numberRepeat % self.numberRepeat
                    localObject.defenderCount = localObject.defenderCount + (localObject.numberRepeat > self.numberRepeat and 1 or 0)
                    startDefender = localObject.defenderCount % self.defenderCount
                    localObject.attackerCount = localObject.attackerCount + (localObject.defenderCount > self.defenderCount and 1 or 0)
                    startAttacker = localObject.attackerCount % self.attackerCount
                    count = localObject.count
                end
                --XDebug.Log("After Load: " .. LogUtils.ToDetail(localObject))
            end

            XDebug.Log(string.format("attacker: %s, defender: %s, repeat: %s, total: %s, count: %s", startAttacker, startDefender, startRepeat, totalBattle, count))
            for i = startAttacker, self.attackerCount do
                local attackerTeam = self.attackerList[i - 1]
                for j = startDefender, self.defenderCount do
                    local defenderTeam = self.defenderList[j - 1]
                    for k = startRepeat, self.numberRepeat do
                        local battleMgr, battleResult = self:CalculateBattleResultFromCsv(attackerTeam, defenderTeam)

                        if self.isLogDetail == true then
                            local writePath = string.format("%sbattle_result_detail/%s-%s.txt", battle.rootAnalytic, os.time(), count)
                            AnalyticUtils.WriteFile(writePath, battleResult:ToString(RunMode.TEST))
                        end

                        local attackerData = self:Analytic(path, battleMgr, battleResult, true)
                        local defenderData = self:Analytic(path, battleMgr, battleResult, false)
                        attackerData.enemyCode = defenderData.code
                        defenderData.enemyCode = attackerData.code

                        data = data .. json.encode(attackerData) .. '\n'
                        data = data .. json.encode(defenderData) .. '\n'

                        count = count + 1
                        countMerger = countMerger + 1

                        if countMerger == self.numberMerger or count == totalBattle then
                            local writePath = string.format("%sbattle_result_analytic/%s-%s.json", CS.Utility.ROOT_ANALYTIC, os.time(), count)
                            AnalyticUtils.WriteFile(writePath, data)
                            data = ""
                            countMerger = 0
                            if count ~= totalBattle then
                                local object = {}
                                object.attackerCount = i
                                object.defenderCount = j
                                object.numberRepeat = k
                                object.count = count
                                --XDebug.Log("Write: " .. LogUtils.ToDetail(object))
                                U_PlayerPrefs.SetString(key, json.encode(object))
                            else
                                U_PlayerPrefs.DeleteKey(key)
                            end
                        end

                        if count % 10 == 0 then
                            coroutine.waitforendofframe()
                            local countTime = os.time() - startTime
                            battle.textTime.text = tostring(countTime) .. "s"
                            battle.textTotalTime.text = tostring(MathUtils.Round(countTime * totalBattle / count)) .. "s"
                            battle.textNumberBattle.text = tostring(count) .. "/" .. tostring(totalBattle)
                        end
                    end
                    startRepeat = 1
                end
                startDefender = 1
            end

        end))

    end)
end

--- @param index number
--- @param path string
--- @param battleMgr = Battle
--- @param battleResult BattleResult
function AnalyticTool:Analytic(path, battleMgr, battleResult, isAttacker)
    local data = {}
    data.path = path
    self:AnalyticBattle(battleMgr, isAttacker, data)
    self:AnalyticBattleResult(battleResult, isAttacker, data)
    data.code = string.format("%s-%s", data.heroIdCode, data.formationCode)
    return data
end

--- @return string
--- @param battle Battle
--- @param isAttacker boolean
function AnalyticTool:AnalyticBattle(battle, isAttacker, data)
    --- @param battleTeam BattleTeam
    local getTeam = function(battleTeam, object)
        object.formationId = battleTeam.formationId
        object.heroIdCode = ""
        object.formationCode = ""
        object.team = {}
        --- @param hero BaseHero
        for _, hero in ipairs(battleTeam:GetHeroList():GetItems()) do
            local position = (hero.positionInfo.isFrontLine and 10 or 0) + hero.positionInfo.position
            object.heroIdCode = object.heroIdCode == "" and hero.id or object.heroIdCode .. '.' .. hero.id
            object.formationCode = object.formationCode == "" and position or object.formationCode .. '.' .. position
        end
    end

    if isAttacker then
        getTeam(battle:GetAttackerTeam(), data)
    else
        getTeam(battle:GetDefenderTeam(), data)
    end
end

--- @return table
--- @param battleResult BattleResult
--- @param isAttacker boolean
function AnalyticTool:AnalyticBattleResult(battleResult, isAttacker, object)
    object.seed = battleResult.seed
    object.gameMode = battleResult.gameMode
    object.numberRounds = battleResult.numberRounds

    -- companion
    local getCompanionBuff = function(companionBuff)
        if companionBuff ~= nil then
            local temp = {}
            temp.name = companionBuff.name
            temp.id = companionBuff.id
        end
        return nil
    end

    -- linking
    local getLinking = function(linkings)
        if linkings:Count() > 0 then
            local tempLinkings = {}
            for i = 1, linkings:Count() do
                local linking = linkings:Get(i)
                local lin = {}
                lin.id = linking.id
                lin.name = linking.name
                tempLinkings[i] = lin
            end
            return tempLinkings
        end
        return nil
    end

    --- @param teamId number
    local genTeam = function(teamId)
        local heroList = battleResult.heroStatisticsDict:GetItems()
        local team = {}
        local count = 0

        local dictToList = function(dict)
            local dictCount = 0
            local list = {}
            for k, v in pairs(dict) do
                dictCount = dictCount + 1
                list[dictCount] = {}
                list[dictCount].id = k
                list[dictCount].value = v
            end
            return list
        end

        --- @param baseHero BaseHero
        local getItems = function(baseHero)
            local equipments = baseHero.equipmentController.equipments
            local str
            for i = 1, ItemConstants.NUMBER_EQUIPMENT_SLOT do
                local e = equipments:Get(i)
                if e ~= nil then
                    str = (str == nil and string.format("%s.%s", i, e) or string.format("%s.%s.%s", str, i, e))
                end
            end
            return str
        end
        --- @param hero HeroStatistics
        for _, hero in pairs(heroList) do
            if hero.myHero ~= nil and hero.myHero.teamId == teamId then
                hero.id = hero.myHero.id
                hero.damageDealBySources = hero.damageDealBySources:Count() > 0 and dictToList(hero.damageDealBySources:GetItems()) or nil
                hero.damageTakenBySources = hero.damageTakenBySources:Count() > 0 and dictToList(hero.damageTakenBySources:GetItems()) or nil
                hero.damageDealHistory = hero.damageDealHistory:Count() > 0 and dictToList(hero.damageDealHistory:GetItems()) or nil
                hero.damageTakenHistory = hero.damageTakenHistory:Count() > 0 and dictToList(hero.damageTakenHistory:GetItems()) or nil
                hero.hpHealBySources = hero.hpHealBySources:Count() > 0 and dictToList(hero.hpHealBySources:GetItems()) or nil
                hero.hpHealTakenBySources = hero.hpHealTakenBySources:Count() > 0 and dictToList(hero.hpHealTakenBySources:GetItems()) or nil
                hero.hpHealHistory = hero.hpHealHistory:Count() > 0 and dictToList(hero.hpHealHistory:GetItems()) or nil
                hero.hpHealTakenHistory = hero.hpHealTakenHistory:Count() > 0 and dictToList(hero.hpHealTakenHistory:GetItems()) or nil
                hero.effectCreatedHistory = hero.effectCreatedHistory:Count() > 0 and dictToList(hero.effectCreatedHistory:GetItems()) or nil
                hero.statChangerBuffCreatedHistory = hero.statChangerBuffCreatedHistory:Count() > 0 and dictToList(hero.statChangerBuffCreatedHistory:GetItems()) or nil
                hero.statChangerDebuffCreatedHistory = hero.statChangerDebuffCreatedHistory:Count() > 0 and dictToList(hero.statChangerDebuffCreatedHistory:GetItems()) or nil
                hero.items = getItems(hero.myHero)
                hero.myHero = nil

                count = count + 1
                team[count] = hero
            end
        end
        return team
    end

    --- @param team table
    --- deal + taken
    local getTotalValue = function(team)
        local totalDeal = 0
        local totalDealTaken = 0
        local totalHeal = 0
        local totalHealTaken = 0
        --- @param hero HeroStatistics
        for _, hero in pairs(team) do
            totalDeal = totalDeal + hero.damageDeal
            totalDealTaken = totalDealTaken + hero.damageTaken

            totalHeal = totalHeal + hero.hpHeal
            totalHealTaken = totalHealTaken + hero.hpHealTaken
        end
        return totalDeal, totalDealTaken, totalHeal, totalHealTaken
    end

    if isAttacker then
        object.isWin = battleResult.winnerTeam == battleResult.attackerTeamLog.teamId
        object.companionBuff = getCompanionBuff(battleResult.attackerCompanionBuff)
        object.linking = getLinking(battleResult.attackerLinkings)
        object.team = genTeam(battleResult.attackerTeamLog.teamId)
    else
        object.isWin = battleResult.winnerTeam == battleResult.defenderTeamLog.teamId
        object.companionBuff = getCompanionBuff(battleResult.defenderCompanionBuff)
        object.linking = getLinking(battleResult.defenderLinkings)
        object.team = genTeam(battleResult.defenderTeamLog.teamId)
    end

    local totalDamage, totalDamageTaken, totalHeal, totalHealTaken = getTotalValue(object.team)
    object.totalDamage = totalDamage
    object.totalDamageTaken = totalDamageTaken
    object.totalHeal = totalHeal
    object.totalHealTaken = totalHealTaken
end

--- @return BattleResult
function AnalyticTool:CalculateBattleResultFromCsv(attackerTeam, defenderTeam)
    local str = "seed,formation_id,team_id,hero_id,is_front,position,star,level,item_1,item_2,item_3,item_4,item_5,item_6,summoner_skill_1,summoner_skill_2,summoner_skill_3,summoner_skill_4,is_dummy,boss_id"
    str = str .. attackerTeam
    str = str .. defenderTeam
    local csvBattleContent = string.gsub(str, "9999", battle.random)
    print(csvBattleContent)
    local csvMasteryLevelContent = CsvReaderUtils.ReadLocalFile(CsvPathConstants.MASTERY_LEVEL_PATH)
    AnalyticUtils.RequireLuaFiles(CsvReader.ReadContent(csvBattleContent))
    local battle = Battle()
    battle:ParseCsv(csvBattleContent, csvMasteryLevelContent)

    return battle, ResourceMgr.GetServiceConfig():GetBattle():CalculateBattleResult(battle, self.isLogDetail and RunMode.TEST or RunMode.FAST)
end

AnalyticTool()


