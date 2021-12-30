--- @class RankingRewardByRangeConfig
RankingRewardByRangeConfig = Class(RankingRewardByRangeConfig)

--- @param minRank number
--- @param maxRank number
function RankingRewardByRangeConfig:Ctor(minRank, maxRank)
    --- @type number
    self.minRank = minRank
    --- @type number
    self.maxRank = maxRank
    --- @type List<RewardInBound>
    self.listRewardConfig = List()
end

--- @param rewardData RewardInBound
function RankingRewardByRangeConfig:AddRewardToList(rewardData)
    self.listRewardConfig:Add(rewardData)
end

--- @return List<ItemIconData>
function RankingRewardByRangeConfig:GetListRewardItemIcon()
    local listIconData = List()
    for i = 1, self.listRewardConfig:Count() do
        listIconData:Add(self.listRewardConfig:Get(i):GetIconData())
    end
    return listIconData
end

function RankingRewardByRangeConfig:IsFitRank(rankValue)
    return self.minRank <= rankValue and (rankValue <= self.maxRank or self.maxRank == -1)
end