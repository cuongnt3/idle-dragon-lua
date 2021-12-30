require "lua.client.core.network.playerData.arena.SingleArenaRanking"

--- @class ServerArenaRankingInBound
ServerArenaRankingInBound = Class(ServerArenaRankingInBound)

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function ServerArenaRankingInBound:ReadBuffer(buffer)
    --- @type List
    self.listRanking = NetworkUtils.GetListDataInBound(buffer, SingleArenaRanking)
    if self.listRanking:Count() > 0 then
        --- @type number
        self.currentRanking = buffer:GetInt()
    end
end

--- @param key string
function ServerArenaRankingInBound:UpdateInfoByKey(key, newValue)
    for i = 1, self.listRanking:Count() do
        --- @type SingleArenaRanking
        local singleArenaRanking = self.listRanking:Get(i)
        if singleArenaRanking.playerId == PlayerSettingData.playerId then
            singleArenaRanking:UpdateInfoByKey(key, newValue)
            break
        end
    end
end