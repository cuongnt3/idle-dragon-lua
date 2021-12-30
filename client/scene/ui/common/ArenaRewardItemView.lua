--- @class ArenaRewardItemView : IconView
ArenaRewardItemView = Class(ArenaRewardItemView, IconView)

--- @return void
function ArenaRewardItemView:Ctor()
    ---@type ArenaOpponentInfo
    IconView.Ctor(self)
    ---@type ArenaRewardRankingConfig
    self.rewardRanking = nil
    ---@type List
    self.listReward = List()

    self.color = nil
end

--- @return void
function ArenaRewardItemView:SetPrefabName()
    self.prefabName = 'arena_reward_item_view'
    self.uiPoolType = UIPoolType.ArenaRewardItemView
end

--- @return void
--- @param transform UnityEngine_Transform
function ArenaRewardItemView:SetConfig(transform)
    assert(transform)
    --- @type ArenaRewardItemConfig
    ---@type ArenaRewardItemConfig
    self.config = UIBaseConfig(transform)
    self.color = self.config.textRankName.color
end

--- @return void
---@param rewardRanking ArenaRewardRankingConfig
---@param isCurrentRanking boolean
function ArenaRewardItemView:SetData(rewardRanking, isCurrentRanking, featureType)
    self.config.currentRank:SetActive(isCurrentRanking or false)
    self.rewardRanking = rewardRanking
    if rewardRanking == ResourceMgr.GetArenaRewardRankingConfig():GetArenaTopRanking(1, featureType) then
        self.config.iconLeaderBoard.sprite = ResourceLoadUtils.LoadArenaRank12Icon(1)
        self.config.textRankName.text = LanguageUtils.LocalizeCommon("ranking_top_1")
    elseif rewardRanking == ResourceMgr.GetArenaRewardRankingConfig():GetArenaTopRanking(2, featureType) then
        self.config.iconLeaderBoard.sprite = ResourceLoadUtils.LoadArenaRank12Icon(2)
        self.config.textRankName.text = LanguageUtils.LocalizeCommon("ranking_top_2")
    else
        self.config.iconLeaderBoard.sprite = ResourceLoadUtils.LoadArenaRankIcon(rewardRanking.rankType)
        self.config.textRankName.text = LanguageUtils.LocalizeRanking(rewardRanking.rankType)
    end
    self.config.iconLeaderBoard:SetNativeSize()
    local topRankingPoint = ""
    if rewardRanking.eloMin >= 0 and rewardRanking.eloMax >= 0 then
        topRankingPoint = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("point_x_x"), rewardRanking.eloMin, rewardRanking.eloMax)
    elseif rewardRanking.eloMin < 0 then
        topRankingPoint = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("point_x-"), rewardRanking.eloMax)
    elseif rewardRanking.eloMax < 0 then
        topRankingPoint = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("point_x+"), rewardRanking.eloMin)
    end

    local topReward = nil
    if rewardRanking.topMax ~= nil then
        if rewardRanking.topMax ~= rewardRanking.topMin then
            topReward = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("top_x_x"), rewardRanking.topMin, rewardRanking.topMax)
        else
            topReward = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("top_x"), rewardRanking.topMin)
        end
    elseif rewardRanking.topMin ~= 1 then
        topReward = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("top_x+"), rewardRanking.topMin)
    end
    if topReward ~= nil then
        topRankingPoint = string.format("%s , %s", topRankingPoint, UIUtils.SetColorString(UIUtils.color2, topReward))
    end

    self.config.textLeaderBoardTop.text = topRankingPoint
    for _, v in pairs(rewardRanking.listRewardItem:GetItems()) do
        ---@type IconView
        local iconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.config.reward)
        iconView:SetIconData(v)
        iconView:RegisterShowInfo()
        self.listReward:Add(iconView)
    end

    if isCurrentRanking == true then
        self.config.textRankName.color = U_Color.white
    else
        self.config.textRankName.color = self.color
    end
end

--- @return void
function ArenaRewardItemView:ReturnPoolListReward()
    ---@type IconView
    for _, v in pairs(self.listReward:GetItems()) do
        v:ReturnPool()
    end
    self.listReward:Clear()
end

--- @return void
function ArenaRewardItemView:ReturnPool()
    IconView.ReturnPool(self)
    self:ReturnPoolListReward()
end

return ArenaRewardItemView