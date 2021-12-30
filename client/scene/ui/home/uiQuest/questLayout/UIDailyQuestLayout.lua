--- @class UIDailyQuestLayout : UIQuestLayout
UIDailyQuestLayout = Class(UIDailyQuestLayout, UIQuestLayout)

--- @param view UIQuestView
--- @param opCodeClaim OpCode
function UIDailyQuestLayout:Ctor(view, opCodeClaim)
    UIQuestLayout.Ctor(self, view, opCodeClaim)
    --- @type DailyQuestInBound
    self.dailyQuestInBound = nil
end

function UIDailyQuestLayout:InitLocalization()
    self.config.textTittle.text = LanguageUtils.LocalizeCommon("daily_quest")
end

function UIDailyQuestLayout:OnShow()
    UIQuestLayout.OnShow(self)
    self.dailyQuestInBound = self.questDataInBound.dailyQuestInBound
    self:ShowData()
end

function UIDailyQuestLayout:SetData()
    self.view.listQuestData = self.dailyQuestInBound:GetListDailyQuestData()
    self.view.listQuestData = QuestDataInBound.SortQuestByData(self.view.listQuestData)
end

function UIDailyQuestLayout:ShowData()
    self:SetData()
    self.uiScroll:Resize(self.view.listQuestData:Count())
end

function UIDailyQuestLayout:RefreshView()
    self:SetData()
    self.uiScroll:RefreshCells()
end

--- @param questId number
function UIDailyQuestLayout:OnClaimSuccess(questId)
    QuestDataInBound.SetCompleteQuestById(self.view.listQuestData, questId, self.opCodeClaim)
    self:RefreshView()
    RxMgr.notificationRequestQuest:Next()
end

function UIDailyQuestLayout:SetUpLayout()
    self.config.scroll.gameObject:SetActive(true)
    self.config.titleGroup.gameObject:SetActive(true)
    self.view.questConfig = ResourceMgr.GetQuestConfig():GetDailyQuest()
end

function UIDailyQuestLayout:GetExtraReward(questId)
    --- @type EventDailyQuestPassModel
    local eventEasterEggModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_EASTER_EGG)
    if eventEasterEggModel and eventEasterEggModel:IsOpening() then
        local dataId = eventEasterEggModel.timeData.dataId
        --- @type EventEasterEggConfig
        local eventEasterEggConfig = ResourceMgr.GetEventConfig():GetData(EventTimeType.EVENT_EASTER_EGG, dataId)
        return eventEasterEggConfig:GetDailyQuestBonusReward(dataId, questId)
    end
    --- @type EventDailyQuestPassModel
    local eventDailyQuestPassModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_DAILY_QUEST_PASS)
    if eventDailyQuestPassModel and eventDailyQuestPassModel:IsOpening() then
        local dataId = eventDailyQuestPassModel.timeData.dataId
        return ResourceMgr.EventDailyQuestPassConfig():GetDailyQuestBonusReward(dataId, questId)
    end
    return nil
end

function UIDailyQuestLayout:OnHide()
    UIQuestLayout.OnHide(self)
    if self.uiScroll ~= nil then
        self.uiScroll:Hide()
    end
end