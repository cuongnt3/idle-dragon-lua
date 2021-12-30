--- @class UIIapDailyQuestPassLayout : UIIapPassLayout
UIIapDailyQuestPassLayout = Class(UIIapDailyQuestPassLayout, UIIapPassLayout)

--- @param view UIIapShopView
--- @param parent UnityEngine_RectTransform
--- @param eventTimeType EventTimeType
function UIIapDailyQuestPassLayout:Ctor(view, parent, eventTimeType)
    --- @type EventDailyQuestPassModel
    self.eventPassModel = nil
    UIIapPassLayout.Ctor(self, view, parent, eventTimeType)
    self.opCodeClaim = OpCode.EVENT_DAILY_QUEST_PASS_MILESTONE_CLAIM
end

--- @param parent UnityEngine_RectTransform
function UIIapDailyQuestPassLayout:InitLayoutConfig(parent)
    self.prefabName = "daily_quest_pass_view"
    self.unlockContentKey = "daily_quest_pass_unlock_content"
    UIIapPassLayout.InitLayoutConfig(self, parent)
end

function UIIapDailyQuestPassLayout:CheckResourceOnSeason()
    local endTime = self.eventPassModel.timeData.endTime
    local savedEndSeason = zg.playerData.remoteConfig.eventDailyQuestPassEnd or endTime
    if savedEndSeason ~= endTime then
        self:ClearMoneyType()
    end
    zg.playerData.remoteConfig.eventDailyQuestPassEnd = endTime
    zg.playerData:SaveRemoteConfig()
end

function UIIapDailyQuestPassLayout:ClearMoneyType()
    local current = InventoryUtils.Get(ResourceType.Money, MoneyType.EVENT_DAILY_QUEST_PASS_POINT)
    InventoryUtils.Sub(ResourceType.Money, MoneyType.EVENT_DAILY_QUEST_PASS_POINT, current)
end

function UIIapDailyQuestPassLayout:InitLocalization()
    self.titleKey = "daily_quest_pass"
    self.layoutConfig.textFreeReward.text = LanguageUtils.LocalizeCommon("free_reward")
    self.layoutConfig.textPremiumReward.text = LanguageUtils.LocalizeCommon("premium_reward")
    self.layoutConfig.textActive.text = LanguageUtils.LocalizeCommon("activated")
    self.layoutConfig.textUnlock.text = LanguageUtils.LocalizeCommon("purchase_items")
    self.layoutConfig.textDesc.text = LanguageUtils.LocalizeCommon("daily_quest_pass_desc")
    self.layoutConfig.tittle.text = LanguageUtils.LocalizeCommon(self.titleKey)
end

function UIIapDailyQuestPassLayout:GetGrowthPackLineConfig()
    self.growthPackLineConfig = ResourceMgr.EventDailyQuestPassConfig():GetConfig(self.eventPassModel.timeData.dataId)
end

function UIIapDailyQuestPassLayout:UpdateCheckNotification()
    self.view:CheckNotificationDailyQuestPass()
end