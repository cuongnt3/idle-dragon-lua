require "lua.client.core.network.battleRecord.TeamRecordShort"

--- @class TowerRecord
TowerRecord = Class(TowerRecord)

--- @param buffer UnifiedNetwork_ByteBuf
function TowerRecord:Ctor(buffer)
    --- @type number
    self.timeInSec = buffer:GetLong()
    --- @type OtherPlayerInfoInBound
    self.attackerTeam = OtherPlayerInfoInBound.CreateByBuffer(buffer)
    --- @type number
    self.seed = buffer:GetInt()
    --- @type number
    self.numberRandom = buffer:GetInt()
end
