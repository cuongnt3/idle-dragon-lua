require "lua.client.core.network.raid.BattleRaidOutBound"
require "lua.client.core.network.raid.BattleRaidInBound"
require "lua.client.core.network.battleFormation.BattleFormationOutBound"

--- @class UIRaidView : UIBaseView
UIRaidView = Class(UIRaidView, UIBaseView)

--- @return void
--- @param model UIRaidModel
function UIRaidView:Ctor(model)
    ---@type UIRaidConfig
    self.config = nil
    ---@type MoneyType
    self.raidMoneyType = nil
    ---@type RaidModeType
    self.raidModeType = nil

    self.tabDic = Dictionary()
    ---@type List
    self.listRaidRewardConfig = nil
    ---@type List
    self.listRaidDefenderConfig = nil
    ---@type number
    self.cacheStage = nil
    ---@type boolean
    self.cacheData = false
    ---@type RaidInBound
    self.raidInbound = nil
    UIBaseView.Ctor(self, model)
    --- @type UIRaidModel
    self.model = model
end

--- @return void
function UIRaidView:OnReadyCreate()
    ---@type UIRaidConfig
    self.config = UIBaseConfig(self.uiTransform)
    uiCanvas:SetBackgroundSize(self.config.backGround)

    self:InitSelectTab()
    self:InitButtonListener()
    self:InitUpdateTime()
end

function UIRaidView:InitSelectTab()
    self.currentTab = RaidModeType.Gold
    self.selectTab = function(currentTab)
        --if self.currentTab == currentTab then
        --    return
        --end
        self.currentTab = currentTab
        for k, v in pairs(self.tabDic:GetItems()) do
            local isSelect = k == currentTab
            v:SetTabState(isSelect)
            if isSelect then
                v.config.textTabName.color = U_Color(80 / 255, 68 / 255, 56 / 255, 1)
                self.config.banner.sprite = ResourceLoadUtils.LoadBannerRaid(currentTab)
                self.config.banner:SetNativeSize()
            end
        end
        self:UpdateUI()
    end
    local addTab = function(tabId, anchor, localizeFunction)
        self.tabDic:Add(tabId, UITabItem(anchor, self.selectTab, localizeFunction, tabId))
    end
    addTab(RaidModeType.GOLD, self.config.goldTab, function()
        return LanguageUtils.LocalizeRaidType(RaidModeType.GOLD - 1)
    end)
    addTab(RaidModeType.MAGIC_POTION, self.config.magicPotionTab, function()
        return LanguageUtils.LocalizeRaidType(RaidModeType.MAGIC_POTION - 1)
    end)
    addTab(RaidModeType.HERO_FRAGMENT, self.config.heroFragmentTab, function()
        return LanguageUtils.LocalizeRaidType(RaidModeType.HERO_FRAGMENT - 1)
    end)

    --- @param obj RaidStageView
    --- @param index number
    local onCreateItem = function(obj, index)
        ---@type RaidRewardConfig
        local raidRewardConfig = self.listRaidRewardConfig:Get(index + 1)
        ---@type DefenderTeamData
        local defenderTeamData = self.listRaidDefenderConfig:Get(index + 1)
        local onClickChallenge = function()
            self:OnClickChallenge(obj)
        end
        obj:SetData(defenderTeamData:GetPowerTeam(), raidRewardConfig, onClickChallenge)
    end
    ---@type UILoopScroll
    self.uiScroll = UILoopScroll(self.config.scroll, UIPoolType.RaidStageView, onCreateItem, onCreateItem)
    self.uiScroll:SetUpMotion(MotionConfig())
end

--- @return void
function UIRaidView:InitLocalization()
    self.config.textTitle.text = LanguageUtils.LocalizeFeature(FeatureType.RAID)
    self.config.localizeRemaining.text = LanguageUtils.LocalizeCommon("remaining_attempts")

    if self.tabDic ~= nil then
        --- @param v UITabItem
        for _, v in pairs(self.tabDic:GetItems()) do
            v:InitLocalization()
        end
    end
end

--- @return void
function UIRaidView:InitButtonListener()
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.buttonBuyTurn.onClick:AddListener(function()
        self:OnClickBuyTurn()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)
    self.config.buttonHelp.onClick:AddListener(function()
        self:OnClickHelpInfo()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)
end

function UIRaidView:InitUpdateTime()
    --- @param isSetTime boolean
    self.updateTime = function(isSetTime)
        if isSetTime == true then
            self:SetTimeRefresh()
        else
            self.timeRefresh = self.timeRefresh - 1
        end
        self.config.textTimeRefesh.text = string.format(LanguageUtils.LocalizeCommon("refresh_in"),
                UIUtils.SetColorString(UIUtils.green_light, TimeUtils.SecondsToClock(self.timeRefresh)))
    end
end

function UIRaidView:SetTimeRefresh()
    self.timeRefresh = zg.timeMgr:GetRemainingTime()
end

--- @return void
function UIRaidView:StartTimeRefresh()
    zg.timeMgr:AddUpdateFunction(self.updateTime)
end

--- @return void
function UIRaidView:OnReadyShow()
    self.raidInbound = zg.playerData:GetMethod(PlayerDataMethod.RAID)
    if self.currentTab == nil then
        self.selectTab(RaidModeType.GOLD)
    else
        --if self.currentTab ~= RaidModeType.Gold then
        --    self.selectTab(RaidModeType.GOLD)
        --end
        self.selectTab(self.currentTab)
    end
    self:StartTimeRefresh()
    self.uiScroll:PlayMotion()
end

--- @return void
function UIRaidView:Hide()
    UIBaseView.Hide(self)
    self.uiScroll:Hide()
    self.cacheStage = nil
    zg.timeMgr:RemoveUpdateFunction(self.updateTime)
end

--- @return void
function UIRaidView:UpdateUI()
    local raid = ResourceMgr.GetRaidConfig()
    self.listRaidRewardConfig = raid:GetRewardMode(self.currentTab)
    self.listRaidDefenderConfig = raid:GetDefenderMode(self.currentTab)
    if self.currentTab == RaidModeType.GOLD then
        self.raidModeType = RaidModeType.GOLD - 1
        self.raidMoneyType = MoneyType.RAID_GOLD_TURN
    elseif self.currentTab == RaidModeType.MAGIC_POTION then
        self.raidModeType = RaidModeType.MAGIC_POTION - 1
        self.raidMoneyType = MoneyType.RAID_MAGIC_POTION_TURN
    else
        self.raidModeType = RaidModeType.HERO_FRAGMENT - 1
        self.raidMoneyType = MoneyType.RAID_HERO_FRAGMENT_TURN
    end
    self:UpdateUITurn()
    self.uiScroll:SetSize(self.listRaidRewardConfig:Count())
    local stage = 1
    ---@param v RaidRewardConfig
    for _, v in ipairs(self.listRaidRewardConfig:GetItems()) do
        if v.levelRequired <= zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).level and v.stage > stage then
            stage = v.stage
        end
    end
    local index = MathUtils.Clamp(stage - 2, 0, self.listRaidRewardConfig:Count() - 3)
    self.uiScroll:RefillCells(index)
end

--- @return void
function UIRaidView:UpdateUITurn()
    self.config.textTurn.text = string.format("%s/%s", InventoryUtils.GetMoney(self.raidMoneyType),
            ResourceMgr.GetRaidConfig().raidConfig.turnResetDaily + self.raidInbound.turnBuyInDay:Get(self.raidModeType))
    self:UpdateNotify()
end

--- @return void
function UIRaidView:UpdateNotify()
    self.config.notifyRaid1:SetActive(InventoryUtils.GetMoney(MoneyType.RAID_GOLD_TURN) > 0)
    self.config.notifyRaid2:SetActive(InventoryUtils.GetMoney(MoneyType.RAID_MAGIC_POTION_TURN) > 0)
    self.config.notifyRaid3:SetActive(InventoryUtils.GetMoney(MoneyType.RAID_HERO_FRAGMENT_TURN) > 0)
end

--- @return void
function UIRaidView:OnClickHelpInfo()
    local info = LanguageUtils.LocalizeHelpInfo("raid_info")
    info = string.gsub(info, "{1}", tostring(MathUtils.Round(ResourceMgr.GetRaidConfig().raidConfig.turnResetDaily)))
    PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, info)
end

--- @return void
function UIRaidView:OnClickBuyTurn()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.RAID, "buy_more", self.raidModeType)
    local maxCountBuyTurn = ResourceMgr.GetRaidConfig().raidConfig:GetTurnBuyDailyVip() - self.raidInbound.turnBuyInDay:Get(self.raidModeType)
    if maxCountBuyTurn > 0 then
        local callback = function(numberReturn, priceTotal)
            local callback = function(result)
                local onSuccess = function()
                    XDebug.Log("RAID_STAMINA_BUY success")
                    InventoryUtils.Sub(ResourceType.Money, MoneyType.GEM, priceTotal)
                    InventoryUtils.Add(ResourceType.Money, self.raidMoneyType, numberReturn)
                    self.raidInbound.turnBuyInDay:Add(self.raidModeType, self.raidInbound.turnBuyInDay:Get(self.raidModeType) + numberReturn)
                    self:UpdateUITurn()
                end
                local onFailed = function(logicCode)
                    SmartPoolUtils.LogicCodeNotification(logicCode)
                end
                NetworkUtils.ExecuteResult(result, nil, onSuccess, onFailed)
            end
            NetworkUtils.Request(OpCode.RAID_STAMINA_BUY, UnknownOutBound.CreateInstance(PutMethod.Byte, numberReturn, PutMethod.Byte, self.raidModeType), callback)
        end
        ---@type PopupBuyItemData
        local dataPurchase = PopupBuyItemData()
        dataPurchase:SetData(ResourceType.Money, self.raidMoneyType, 1, 1, maxCountBuyTurn,
                MoneyType.GEM, ResourceMgr.GetRaidConfig().raidConfig.turnPrice, callback, "Buy Turn", "Buy", false)

        PopupMgr.ShowPopup(UIPopupName.UIPopupBuyItemString, dataPurchase)
    else
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("max_buy_turn_daily"))
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
    end
end

--- @return void
---@param raidStageView RaidStageView
function UIRaidView:OnClickChallenge(raidStageView)
    ---@type RaidRewardConfig
    local raidRewardConfig = raidStageView.raidRewardConfig
    self.cacheStage = raidRewardConfig.stage
    local canChallenge = InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, self.raidMoneyType, 1))
    if canChallenge then
        local data = {}
        data.gameMode = GameMode.RAID
        ---@type DefenderTeamData
        local dataStage = self.listRaidDefenderConfig:Get(raidRewardConfig.stage)
        local battleTeamInfo = ResourceMgr.GetServiceConfig():GetPredefineTeam():GetBattleTeamInfoByDefenderTeamData(dataStage)
        data.battleTeamInfo = battleTeamInfo
        data.callbackClose = function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIRaid, nil, UIPopupName.UIFormation)
        end
        data.canSkip = true
        data.power = raidStageView.power
        UIRaidModel.raidBgId = ResourceMgr.GetRaidConfig():GetBattleRaidBg(self.raidModeType, raidRewardConfig.stage)
        data.callbackPlayBattle = function(uiFormationTeamData, callback)
            --Request
            local onReceived = function(result)
                ---@type BattleRaidInBound
                local battleResult
                --- @param buffer UnifiedNetwork_ByteBuf
                local onBufferReading = function(buffer)
                    battleResult = BattleRaidInBound.CreateByBuffer(buffer)
                end
                local onSuccess = function()
                    local raidData = zg.playerData:GetRaidData()
                    raidData.raidModeType = self.raidModeType
                    raidData.raidModeStage = raidRewardConfig.stage
                    if battleResult.battleResultInBound.isWin == true then
                        if battleResult ~= nil then
                            zg.playerData.rewardList = RewardInBound.GetItemIconDataList(battleResult.listReward)
                        end
                        InventoryUtils.Sub(ResourceType.Money, self.raidMoneyType, 1)
                        zg.playerData:AddListRewardToInventory()
                    else
                        zg.playerData.rewardList = nil
                    end
                    if callback ~= nil then
                        callback()
                    end
                end
                NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, SmartPoolUtils.LogicCodeNotification)
            end
            zg.audioMgr:PlaySfxUi(SfxUiType.START_BATTLE)
            NetworkUtils.Request(OpCode.RAID_CHALLENGE, BattleRaidOutBound(self.currentTab - 1, raidRewardConfig.stage, uiFormationTeamData), onReceived)
        end
        PopupMgr.ShowAndHidePopup(UIPopupName.UIFormation, data, UIPopupName.UIRaid)
    end
end

function UIRaidView:OnClickBackOrClose()
    self:OnReadyHide()
    zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
    self.currentTab = nil
end