require "lua.client.data.DefenderTeamData"
--- @class TowerLevelConfig
TowerLevelConfig = Class(TowerLevelConfig)

function TowerLevelConfig:Ctor()
    --- @type Dictionary<number, table>
    self._dataDictionary = Dictionary()
end

--- @data string
function TowerLevelConfig:ParseCsv(parsedData)
    for k, v in ipairs(parsedData) do
        local levelId = tonumber(v[PredefineConstants.STAGE_TAG])
        if MathUtils.IsInteger(levelId) then
            local data = DefenderTeamData(v)
            self._dataDictionary:Add(data.stage, data)
        end
    end
    self:_InitPowerTeam()
end

--- @return void
function TowerLevelConfig:_InitPowerTeam()
    local data = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.TOWER_DEFENDER_POWER_PATH)
    for i = 1, #data do
        local v = data[i]
        self._dataDictionary:Get(tonumber(v.stage)).powerTeam = v.power
    end
end

--- @return DefenderTeamData
function TowerLevelConfig:GetTowerLevelConfigById(levelId)
    if self._dataDictionary:IsContainKey(levelId) == true then
        return self._dataDictionary:Get(levelId)
    end
    XDebug.Error(string.format("No tower level config: %d", levelId))
    return 0
end