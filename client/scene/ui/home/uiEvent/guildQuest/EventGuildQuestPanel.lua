---COMMENT_CONFIG_HOME    require "lua.client.scene.ui.home.uiEvent.guildQuest.EventGuildQuestPanelConfig"

--- @class EventGuildQuestPanel : IconView
EventGuildQuestPanel = Class(EventGuildQuestPanel, IconView)

function EventGuildQuestPanel:Ctor()
    --- @type EventGuildQuestModel
    self.eventPopupModel = nil
    ---@type List
    self.listItem = List()
    ---@type List --<GuildQuestExchangeData>
    self.listData = List()
    ---@type List
    self.listMoneyBar = List()
    ---@type List
    self.listRewardInfo = List()

    ---@type GuildQuestMinDonate
    self.minDonate = nil

    IconView.Ctor(self)
end

function EventGuildQuestPanel:SetPrefabName()
    self.prefabName = 'event_guild_quest'
    self.uiPoolType = UIPoolType.EventGuildQuestPanel
end

--- @param transform UnityEngine_Transform
function EventGuildQuestPanel:SetConfig(transform)
    --- @type EventGuildQuestPanelConfig
    ---@type EventGuildQuestPanelConfig
    self.config = UIBaseConfig(transform)

    self.config.buttonDonateHelp.onClick:AddListener(function ()
        self:OnClickHelpInfo()
    end)

    self.config.buttonDonateHistory.onClick:AddListener(function ()
        self:OnClickHistory()
    end)

    self.config.buttonDonateApple.onClick:AddListener(function ()
        self:OnClickDonate(MoneyType.EVENT_GUILD_QUEST_APPLE)
    end)

    self.config.buttonDonatePear.onClick:AddListener(function ()
        self:OnClickDonate(MoneyType.EVENT_GUILD_QUEST_PEAR)
    end)

    self.config.bgButtonReward.onClick:AddListener(function ()
        self:OnClickHideRewardInfo()
    end)
end

--- @return void
function EventGuildQuestPanel:OnClickHelpInfo()
    PopupMgr.ShowPopup(UIPopupName.UIGuildDonateHelp)
end

--- @return void
function EventGuildQuestPanel:OnClickHistory()
    PopupMgr.ShowPopup(UIPopupName.UIGuildDonateHistory, {["dictDonate"] = self.eventPopupModel.dictUserDonate})
end

--- @return void
---@param moneyType MoneyType
function EventGuildQuestPanel:OnClickDonate(moneyType)
    if zg.playerData:GetMethod(PlayerDataMethod.GUILD_BASIC_INFO).isHaveGuild then
        local canDonate = InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, moneyType, 1))
        if canDonate then
            local data = {}
            data.moneyType = moneyType
            data.currentDonate = self.eventPopupModel:GetGuildDonate(moneyType)
            data.callbackDonate = function(donateValue)
                self.eventPopupModel:AddDonate(moneyType, donateValue)
                if moneyType == MoneyType.EVENT_GUILD_QUEST_APPLE then
                    self:UpdateProgressApple()
                elseif moneyType == MoneyType.EVENT_GUILD_QUEST_PEAR then
                    self:UpdateProgressPear()
                end
                self:UpdateListItem()
            end
            PopupMgr.ShowPopup(UIPopupName.UIGuildQuestDonate, data)
        end
    else
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("not_in_guild"))
    end
end

--- @param eventPopupModel EventGuildQuestModel
function EventGuildQuestPanel:SetData(eventPopupModel)
    local time = zg.timeMgr:GetServerTime()
    if self.lastRequestMoney == nil or time - self.lastRequestMoney > 10 then
        self.lastRequestMoney = time
        PlayerDataRequest.RequestAndCallback({PlayerDataMethod.BASIC_INFO}, function ()
            ---@param v MoneyBarView
            for _, v in pairs(self.listMoneyBar:GetItems()) do
                v:UpdateView()
            end
        end)
    end
    self.eventPopupModel = eventPopupModel
    self.listData = ResourceMgr.GetGuildQuestExchangeConfig():GetDataFromId(self.eventPopupModel.timeData.dataId)
    self.minDonate = ResourceMgr.GetGuildQuestMinDonateConfig():GetDataFromId(self.eventPopupModel.timeData.dataId)
    self:CreateListItem()
    self:CreateMoneyBar()
    self:UpdateProgressApple()
    self:UpdateProgressPear()
    local localizeDonate = LanguageUtils.LocalizeCommon("donate")
    self.config.textDonate1.text = localizeDonate
    self.config.textDonate2.text = localizeDonate

    self:UnsubscribeDonate()
    self.subscriptionDonate = RxMgr.serverNotification:Filter(function (data)
        return BitUtils.IsOn(data, ServerNotificationType.EVENT_GUILD_QUEST_DONATE)
    end)
            :Merge(RxMgr.guildMemberAdded)
            :Merge(RxMgr.guildMemberKicked)
            :Subscribe(function ()
        self:DelayRequestDonate(20)
    end)

    self.subscriptionAddGuild = RxMgr.guildMemberAdded
                                   :Merge(RxMgr.guildMemberKicked)
                                   :Subscribe(function ()
        self:DelayRequestDonate(1)
    end)
end

function EventGuildQuestPanel:DelayRequestDonate(time)
    if self.coroutineDelayRequest == nil then
        self.coroutineDelayRequest = Coroutine.start(function ()
            coroutine.waitforseconds(time)
            self:RefreshData()
            self.coroutineDelayRequest = nil
        end)
    end
end

function EventGuildQuestPanel:UnsubscribeDonate()
    if self.subscriptionDonate ~= nil then
        self.subscriptionDonate:Unsubscribe()
        self.subscriptionDonate = nil
    end
    if self.subscriptionAddGuild ~= nil then
        self.subscriptionAddGuild:Unsubscribe()
        self.subscriptionAddGuild = nil
    end
end

function EventGuildQuestPanel:RemoveCoroutineDelayRequest()
    if self.coroutineDelayRequest ~= nil then
        Coroutine.stop(self.coroutineDelayRequest)
        self.coroutineDelayRequest = nil
    end
end

function EventGuildQuestPanel:RefreshData()
    self.lastRequestEventData = zg.timeMgr:GetServerTime()
    EventInBound.RequestEventDataByType(EventTimeType.EVENT_GUILD_QUEST, function ()
        XDebug.Log("EventInBound.RequestEventDataByType success")
        self:UpdateProgressApple()
        self:UpdateProgressPear()
    end)
end

function EventGuildQuestPanel:CreateMoneyBar()
    self:ReturnPoolMoneyBar()
    ---@type MoneyBarView
    local moneyBar = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyBarView, self.config.moneyBar)
    moneyBar:SetIconData(MoneyType.EVENT_GUILD_QUEST_APPLE)
    self.listMoneyBar:Add(moneyBar)
    ---@type MoneyBarView
    local moneyBar = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyBarView, self.config.moneyBar)
    moneyBar:SetIconData(MoneyType.EVENT_GUILD_QUEST_PEAR)
    self.listMoneyBar:Add(moneyBar)
end

function EventGuildQuestPanel:CreateListItem()
    self:ReturnListItem()
    ---@param v GuildQuestExchangeData
    for _, v in ipairs(self.listData:GetItems()) do
        ---@type GuildDonateItemView
        local iconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.GuildDonateItemView, self.config.scrollView.content )
        iconView:SetIconData(v)
        iconView:InitOnClickReward(function ()
            self:OnClickReward(iconView)
        end)
        self.listItem:Add(iconView)
    end
    self:UpdateListItem()
    self:SetProgressBg()
end

---@param iconView GuildDonateItemView
function EventGuildQuestPanel:OnClickReward(iconView)
    if iconView.isUnlock == true and iconView.isClaim ~= true then
        local passMinDonate = false
        ---@type EventGuildQuestDonationBoardInBound
        local playerDonate = self.eventPopupModel.dictUserDonate:Get(PlayerSettingData.playerId)
        if playerDonate ~= nil then
            local pass = true
            for money, min in pairs(self.minDonate.dictMinDonate:GetItems()) do
                local count = playerDonate.moneyDict:Get(money)
                if count == nil or min > count then
                    pass = false
                    break
                end
            end
            passMinDonate = pass
        end
        if passMinDonate == true then
            NetworkUtils.RequestAndCallback(OpCode.EVENT_GUILD_QUEST_CLAIM_REWARD, UnknownOutBound.CreateInstance(PutMethod.Int, iconView.iconData.id),function ()
                PopupUtils.ClaimAndShowRewardList(iconView.iconData.listReward)
                iconView:UpdateStateView(true, true)
                self.eventPopupModel.listClaim:Add(iconView.iconData.id)
            end, SmartPoolUtils.LogicCodeNotification)
        else
            SmartPoolUtils.ShowShortNotification(StringUtils.FormatLocalizeStart1(
                    LanguageUtils.LocalizeCommon("min_donate_event_guild_quest"),
                    self.minDonate:GetMinDonateByMoneyType(MoneyType.EVENT_GUILD_QUEST_APPLE), LanguageUtils.LocalizeMoneyType(MoneyType.EVENT_GUILD_QUEST_APPLE),
                    self.minDonate:GetMinDonateByMoneyType(MoneyType.EVENT_GUILD_QUEST_PEAR), LanguageUtils.LocalizeMoneyType(MoneyType.EVENT_GUILD_QUEST_PEAR)
            ))
        end
    else
        self.config.rewardInfo:SetActive(true)
        self.config.rewardInfo.transform.position = iconView.config.transform.position
        ---@param v RewardInBound
        for _, v in ipairs(iconView.iconData.listReward:GetItems()) do
            --- @type RootIconView
            local item = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.config.contentReward)
            item:SetIconData(v:GetIconData())
            item:RegisterShowInfo()
            item:ActiveMaskSelect(iconView.isClaim, UIUtils.sizeItem)
            self.listRewardInfo:Add(item)
        end
    end
end

function EventGuildQuestPanel:OnClickHideRewardInfo()
    self.config.rewardInfo:SetActive(false)
    self:ReturnListReward()
end

function EventGuildQuestPanel:UpdateListItem()
    local apple = self.eventPopupModel:GetGuildDonate(MoneyType.EVENT_GUILD_QUEST_APPLE)
    local pear = self.eventPopupModel:GetGuildDonate(MoneyType.EVENT_GUILD_QUEST_PEAR)
    ---@param v GuildDonateItemView
    for _, v in ipairs(self.listItem:GetItems()) do
        v:UpdateStateView(apple >= v.iconData.numberApple and pear >= v.iconData.numberPear,
                self.eventPopupModel.listClaim:IsContainValue(v.iconData.id))
        v:UpdateProgress(apple >= v.iconData.numberApple, pear >= v.iconData.numberPear)
    end
end

function EventGuildQuestPanel:SetProgressBg()
    if self.sizeStart == nil then
        self.sizeStart = self.config.bgAppleProgressBar2.sizeDelta.x
    end
    self.sizeMax = self.sizeStart + self.listItem:Count() * self.config.content.spacing
    self.config.bgAppleProgressBar2.sizeDelta = U_Vector2(self.sizeMax, self.config.bgAppleProgressBar2.sizeDelta.y)
    self.config.bgPearProgressBar2.sizeDelta = U_Vector2(self.sizeMax, self.config.bgPearProgressBar2.sizeDelta.y)
end

---@param moneyType MoneyType
---@param progress UnityEngine_RectTransform
---@param key string
function EventGuildQuestPanel:SetProgress(moneyType, progress, key)
    local current = self.eventPopupModel:GetGuildDonate(moneyType)
    if current == 0 then
        progress.sizeDelta = U_Vector2(0, progress.sizeDelta.y)
    else
        local value1 = 0
        local value2 = nil
        local index = 0
        ---@param v GuildQuestExchangeData
        for i, v in ipairs(self.listData:GetItems()) do
            local number = v[key]
            if current < number then
                value2 = number
                index = i
                break
            else
                value1 = number
            end
        end
        local size = self.sizeMax
        if value2 ~= nil then
            if index > 1 then
                size = self.sizeStart + (index - (value2 - current)/(value2 - value1))  * self.config.content.spacing
            else
                size = self.sizeStart - self.config.content.padding.left + 5
                        + (current - value1)/(value2 - value1)  * (self.config.content.spacing + self.config.content.padding.left - 5)
            end
        end
        progress.sizeDelta = U_Vector2(size, progress.sizeDelta.y)
    end
end

function EventGuildQuestPanel:UpdateProgressApple()
    self.config.textTotalAppleValue.text = self.eventPopupModel:GetGuildDonate(MoneyType.EVENT_GUILD_QUEST_APPLE)
    self:SetProgress(MoneyType.EVENT_GUILD_QUEST_APPLE, self.config.bgAppleProgressBar1, "numberApple")
end

function EventGuildQuestPanel:UpdateProgressPear()
    self.config.textTotalPearValue.text = self.eventPopupModel:GetGuildDonate(MoneyType.EVENT_GUILD_QUEST_PEAR)
    self:SetProgress(MoneyType.EVENT_GUILD_QUEST_PEAR, self.config.bgPearProgressBar1, "numberPear")
end

function EventGuildQuestPanel:ReturnListItem()
    ---@param v GuildDonateItemView
    for _, v in pairs(self.listItem:GetItems()) do
        v:ReturnPool()
    end
    self.listItem:Clear()
end

function EventGuildQuestPanel:ReturnListReward()
    ---@param v IconView
    for i, v in pairs(self.listRewardInfo:GetItems()) do
        v:ReturnPool()
    end
    self.listRewardInfo:Clear()
end

function EventGuildQuestPanel:ReturnPoolMoneyBar()
    ---@param v MoneyBarView
    for _, v in pairs(self.listMoneyBar:GetItems()) do
        v:ReturnPool()
    end
    self.listMoneyBar:Clear()
end

function EventGuildQuestPanel:ReturnPool()
    IconView.ReturnPool(self)
    self:ReturnListItem()
    self:ReturnPoolMoneyBar()
    self:ReturnListReward()
    self:UnsubscribeDonate()
    self:RemoveCoroutineDelayRequest()
end

return EventGuildQuestPanel