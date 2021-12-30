require "lua.client.data.DefenderTeamData"

--- @class GroupDungeonDefenderData
GroupDungeonDefenderData = Class(GroupDungeonDefenderData)

--- @return void
function GroupDungeonDefenderData:Ctor()
    ---@type number
    self.groupId = nil
    ---@type number
    self.stageMin = nil
    ---@type number
    self.stageMax = nil
    ---@type List -- DefenderTeamData
    self.listDefender = List()
end

--- @return void
--- @param data string
function GroupDungeonDefenderData:AddDefender(data)
    local defender = DefenderTeamData(data)
    defender.rate = tonumber(data["rate"])
    self.listDefender:Add(defender)
end