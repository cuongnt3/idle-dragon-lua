require "lua.client.core.network.playerData.common.BattleResultInBound"

--- @class BattleRaidInBound
BattleRaidInBound = Class(BattleRaidInBound)

--- @return void
function BattleRaidInBound:Ctor()
    --- @type BattleResultInBound
    self.battleResultInBound = nil
    --- @type List
    self.listReward = List()
end

--- @return BattleRaidInBound
--- @param buffer UnifiedNetwork_ByteBuf
function BattleRaidInBound.CreateByBuffer(buffer)
    local data = BattleRaidInBound()
    data.battleResultInBound = BattleResultInBound.CreateByBuffer(buffer)
    data.listReward = NetworkUtils.GetListDataInBound(buffer, RewardInBound.CreateByBuffer)
    data.listReward = NetworkUtils.AddInjectRewardInBoundList(buffer, data.listReward)
    return data
end