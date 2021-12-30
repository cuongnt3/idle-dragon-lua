require "lua.logicBattle._gen._LuaRequire"
require "lua.client.core.UnityLib"
require "lua.client.utils.XDebug"
require "lua.client.utils.json"
require "lua.logicBattle.services.ServiceController"
require "lua.client.core.ResourceMgr"
require "lua.client.utils.SortUtils"
require "lua.client.utils.base64.Base64Helper"
require "lua.client.utils.ClientConfigUtils"
require "lua.client.utils.CsvReaderUtils"
require "lua.client.utils.InventoryUtils"
require "lua.client.utils.ClientMathUtils"
require "lua.client.utils.BitUtils"

require "lua.client.utils.XDebug"
require "lua.client.analyticTool.AnalyticUtils"

IS_CLIENT_RUNNING = true
EnableXDebug = true

--- @class PowerTool
PowerTool = {}

require("lua.client.data.Service.ServiceConfig")
local serviceConfig = ServiceConfig()

--- @param defenderTeam DefenderTeamData
function PowerTool.CalculatePower(defenderTeam)
    ---@type BattleTeamInfo
    local battleTeamInfo = serviceConfig:GetPredefineTeam():GetBattleTeamInfoByDefenderTeamData(defenderTeam)
    --- @param l HeroBattleInfo
    for i, l in ipairs(battleTeamInfo:GetListHero():GetItems()) do
        local heroId = l.heroId
        local luaFiles = ResourceMgr.GetHeroesConfig():GetHeroLua():Get(heroId)
        for _, value in pairs(luaFiles) do
            require(value)
        end
    end
    local teamPowerCalculator = TeamPowerCalculator()
    teamPowerCalculator:SetTeamInfo(battleTeamInfo)
    return math.floor(teamPowerCalculator:CalculatePower(serviceConfig:GetBattle()))
end

--- @param pathCsvDefenderTeam string
function PowerTool.GenPower(pathCsvDefenderTeam)
    local content = AnalyticUtils.ReadFile(pathCsvDefenderTeam)
    local lines = content:SplitLine("\n")
    local titles = lines[1]:SplitLine(",")
    local indexPower
    for i, v in ipairs(titles) do
        if StringUtils.Trim(v) == "power" then
            indexPower = i
            break
        end
    end
    if indexPower == nil then
        lines[1] = StringUtils.Trim(lines[1]) .. ",power"
    end
    local power = {}
    local parsedData = CsvReader.ReadContent(content)
    for k, v in ipairs(parsedData) do
        power[k] = PowerTool.CalculatePower(DefenderTeamData(v))
    end
    local newContent = lines[1]
    for i, s in ipairs(lines) do
        if i > 1 then
            if indexPower == nil then
                if #power >= i -1 then
                    lines[i] = StringUtils.Trim(lines[i]) .. "," .. power[i - 1]
                end
            else
                local values = lines[i]:SplitLine(",")
                values[indexPower] = power[i - 1]
                lines[i] = ""
                for j, v in ipairs(values) do
                    if lines[i] == "" then
                        lines[i] = v
                    else
                        lines[i] = lines[i] .. "," .. v
                    end
                end
            end

            newContent = newContent .. "\n" .. lines[i]
        end
    end
    AnalyticUtils.WriteFile(pathCsvDefenderTeam, newContent)
    print("Finish Gen Power")
end

--- @return void
function PowerTool.GenPowerAllModes()
    PowerTool.GenPowerRaidMode()
    PowerTool.GenPowerCampaignMode()
    PowerTool.GenPowerTowerMode()
end

--- @return void
function PowerTool.GenPowerRaidMode()
    require("lua.client.data.Raid.RaidDataConfig")
    local raidData = RaidDataConfig()

    --- @param goldList List
    --- @param magicPotionList List
    --- @param fragmentList List
    local WriteFile = function(goldList, magicPotionList, fragmentList)
        local content = "stage,power,mode\n"

        local GetContent = function(list, mode)
            local localContent = ""
            --- @param v DefenderTeamData
            for i, v in ipairs(list:GetItems()) do
                localContent = localContent .. string.format("%s,%s,%d\n",v.stage, PowerTool.CalculatePower(v), mode)
            end
            return localContent
        end
        content = content .. GetContent(goldList, 1)
        content = content .. GetContent(magicPotionList, 2)
        content = content .. GetContent(fragmentList, 3)
        local path = U_Application.dataPath .. "/../../XLua/" .. CsvPathConstants.RAID_DEFENDER_POWER_PATH
        AnalyticUtils.WriteFile(path, content)
        print("Write Power Raid Mode Complete: " .. path)
    end

    WriteFile(raidData:GetDefenderMode(1), raidData:GetDefenderMode(2), raidData:GetDefenderMode(3))
end

--- @return void
--- @param dict Dictionary
--- @param path string
function PowerTool.GenFromDict(dict, path)
    local content = "stage,power\n"

    --- @param v DefenderTeamData
    for i, v in pairs(dict:GetItems()) do
        content = content .. string.format("%s,%s\n",v.stage, PowerTool.CalculatePower(v))
    end

    local tempPath = U_Application.dataPath .. "/../../XLua/" .. path
    AnalyticUtils.WriteFile(tempPath, content)
    print("Write Power Mode Complete: " .. tempPath)
end

--- @return void
function PowerTool.GenPowerCampaignMode()
    require("lua.client.data.CampaignData.CampaignDataConfig")
    local campaignData = CampaignDataConfig()
    campaignData:_InitCampaignStageConfig()
    PowerTool.GenFromDict(campaignData.campaignStageConfig._dataDictionary, CsvPathConstants.CAMPAIGN_DEFENDER_POWER_PATH)
end

--- @return void
function PowerTool.GenPowerTowerMode()
    require("lua.client.data.Tower.TowerData")
    local towerData = TowerData()
    towerData:_InitLevelConfig()
    PowerTool.GenFromDict(towerData.levelConfig._dataDictionary, CsvPathConstants.TOWER_DEFENDER_POWER_PATH)
end

