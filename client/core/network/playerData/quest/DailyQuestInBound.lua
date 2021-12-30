--- @class DailyQuestInBound
DailyQuestInBound = Class(DailyQuestInBound)

function DailyQuestInBound:Ctor()
    --- @type boolean
    self.hasNotification = nil
    --- @type List
    self.listDailyQuest = nil
    --- @type Dictionary<number, QuestElementConfig>
    self.config = ResourceMgr.GetQuestConfig():GetDailyQuest()
end

--- @param buffer UnifiedNetwork_ByteBuf
function DailyQuestInBound:ReadBuffer(buffer)
    self.listDailyQuest = QuestDataInBound.ReadListQuestFromBuffer(buffer, self.config)
    self:_FilterDailyQuest()
end

function DailyQuestInBound:_FilterDailyQuest()
    local totalHidden = 0
    --- @type QuestUnitInBound
    local questData
    local questCount = self.listDailyQuest:Count()
    for i = questCount, 1, -1 do
        --- @type QuestUnitInBound
        local questUnitData = self.listDailyQuest:Get(i)
        if questUnitData.questState == QuestState.HIDDEN then
            self.listDailyQuest:RemoveByIndex(i)
            totalHidden = totalHidden + 1
        elseif questData == nil then
            --- @type QuestElementConfig
            local questElementConfig = self.config:Get(questUnitData.questId)
            if questElementConfig:GetQuestType() == QuestType.DAILY_QUEST_COMPLETE then
                questData = questUnitData
            end
        end
    end
    if questData ~= nil then
        questData.number = questData.number - totalHidden
    end
    self.listDailyQuest = QuestDataInBound.SortQuestByData(self.listDailyQuest)
end

--- @return boolean
function DailyQuestInBound:CheckNotification()
    for i = 1, self.listDailyQuest:Count() do
        --- @type QuestUnitInBound
        local unitData = self.listDailyQuest:Get(i)
        if unitData.questState == QuestState.DONE_REWARD_NOT_CLAIM then
            self.hasNotification = true
            return
        end
    end
    self.hasNotification = false
end

--- @return List|QuestUnitInBound
function DailyQuestInBound:GetListDailyQuestData()
    return self.listDailyQuest
end