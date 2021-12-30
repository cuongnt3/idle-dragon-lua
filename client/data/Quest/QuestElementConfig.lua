--- @class QuestElementConfig
QuestElementConfig = Class(QuestElementConfig)

function QuestElementConfig:Ctor()
    --- @type QuestType
    self._questType = nil
    --- @type Dictionary -- <reqId, reqNum>
    self._listRequirements = Dictionary()
    --- @type List
    self._listUnlockRequirements = List()
    --- @type number
    self._featureMapping = nil
    --- @type number
    self.groupId = nil
    --- @type number
    self.orderInGroup = nil
    --- @type List {RewardInBound}
    self._listReward = nil
    --- @type string
    self._keyRecordProgress = nil
end

--- @param questType number
function QuestElementConfig:SetQuestType(questType)
    self._questType = questType
end

--- @return string
function QuestElementConfig:GetKeyRecordProgress()
    if QuestDataInBound.IsConsecutiveQuest(self._questType) then
        return self._keyRecordProgress
    end
    return nil
end

--- @param parsedData table
function QuestElementConfig:SetRequirements(parsedData)
    self:AddRequirement(1, tonumber(parsedData.requirement_1))
    self:AddRequirement(2, tonumber(parsedData.requirement_2))
    self:AddRequirement(3, tonumber(parsedData.requirement_3))
    self:AddRequirement(4, tonumber(parsedData.requirement_4))
    self:AddRequirement(5, tonumber(parsedData.requirement_5))
    self:AddRequirement(6, tonumber(parsedData.requirement_6))

    self:_InitKeyRecordProgress()
end

function QuestElementConfig:SetUnlockRequirements(parsedData)
    for i = 1, 4 do
        local unlockReq = tonumber(parsedData["unlock_requirement_" .. i])
        if MathUtils.IsNumber(unlockReq) == true then
            self._listUnlockRequirements:Add(unlockReq)
        end
    end
end

--- @param reqId number
--- @param reqNum number
function QuestElementConfig:AddRequirement(reqId, reqNum)
    if self._questType == QuestType.DAILY_QUEST_COMPLETE then
        return
    end
    if MathUtils.IsNumber(reqNum) == false then
        return
    end
    self._listRequirements:Add(reqId, reqNum)
end

--- @param reward RewardInBound
function QuestElementConfig:AddResData(reward)
    if self._listReward == nil then
        self._listReward = List()
    end
    self._listReward:Add(reward)
end

--- @param featureMapping number
function QuestElementConfig:SetFeatureMappingData(featureMapping)
    if MathUtils.IsNumber(featureMapping) == true then
        self._featureMapping = featureMapping
    end
end

--- @return QuestType
function QuestElementConfig:GetQuestType()
    return self._questType
end

--- @return Dictionary -- <reqId, reqNum>
function QuestElementConfig:GetRequirements()
    return self._listRequirements
end

--- @return List -- <reqId>
function QuestElementConfig:GetUnlockRequirements()
    return self._listUnlockRequirements
end

--- @return number
function QuestElementConfig:GetMainRequirementTarget()
    return self._listRequirements:Get(1)
end

--- @return number
--- @param reqIndex number
function QuestElementConfig:GetRequirementsByIndex(reqIndex)
    if self._listRequirements:IsContainKey(reqIndex) == true then
        return self._listRequirements:Get(reqIndex)
    end
    return nil
end

--- @return number
function QuestElementConfig:GetRequirementsToLocalize()
    for i = 6, 1, -1 do
        if self._listRequirements:IsContainKey(i) == true then
            return self._listRequirements:Get(i)
        end
    end
    return nil
end

--- @return RewardInBound
function QuestElementConfig:GetMainRewardData()
    return self._listReward:Get(1)
end

--- @return List
function QuestElementConfig:GetListReward()
    return self._listReward
end

--- @param fixedTarget number
function QuestElementConfig:SetMainRequirementTarget(fixedTarget)
    self._listRequirements:Add(1, fixedTarget)
end

--- @return number
function QuestElementConfig:GetFeatureMappingData()
    return self._featureMapping
end

--- @param mainReq number
function QuestElementConfig:OverrideMainReq(mainReq)
    self._listRequirements:Add(1, mainReq)
end

--- @return QuestElementConfig
--- @param parsedData {quest_type, feature_mapping}
function QuestElementConfig.GetInstanceFromCsv(parsedData)
    local quest = QuestElementConfig()
    quest:SetQuestType(tonumber(parsedData.quest_type))
    quest:SetRequirements(parsedData)
    local featureMapping = tonumber(parsedData.feature_mapping or -1)
    quest:SetFeatureMappingData(featureMapping)
    quest:SetUnlockRequirements(parsedData)
    local sortId = tonumber(parsedData.sort_id)
    if MathUtils.IsNumber(sortId) then
        quest.groupId = math.floor(sortId / 1000)
        quest.orderInGroup = sortId % 1000
    end
    local rewardInBound = RewardInBound.CreateByParams(parsedData)
    quest:AddResData(rewardInBound)
    return quest
end

function QuestElementConfig:_InitKeyRecordProgress()
    local questType = self:GetQuestType()
    if QuestDataInBound.IsConsecutiveQuest(questType) == false then
        return
    end
    self._keyRecordProgress = tostring(questType)
    for i = 2, 5 do
        local val = -1
        if self._listRequirements:IsContainKey(i) == true then
            val = self._listRequirements:Get(i)
        end
        self._keyRecordProgress = self._keyRecordProgress .. "_" .. tostring(val)
    end
end

--- @return Dictionary
function QuestElementConfig.ReadQuestConfigFromPath(path)
    local questDict = Dictionary()
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    local dailyQuestId
    --- @type QuestElementConfig
    local questElementConfig
    for i = 1, #parsedData do
        local questId = tonumber(parsedData[i].quest_id)
        if questId ~= nil then
            questElementConfig = QuestElementConfig.GetInstanceFromCsv(parsedData[i])
            --- @type QuestType
            local questType = tonumber(parsedData[i].quest_type)
            if questType == QuestType.EVENT_DAILY_QUEST_COMPLETE
                    or questType == QuestType.DAILY_QUEST_COMPLETE then
                dailyQuestId = questId
            end
            questDict:Add(questId, questElementConfig)
        else
            questElementConfig:AddResData(RewardInBound.CreateByParams(parsedData[i]))
        end
    end
    if dailyQuestId ~= nil then
        questElementConfig = questDict:Get(dailyQuestId)
        questElementConfig:SetMainRequirementTarget(questDict:Count() - 1)
    end
    return questDict
end