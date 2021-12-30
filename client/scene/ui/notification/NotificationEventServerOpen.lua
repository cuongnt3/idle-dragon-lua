--- @class NotificationEventServerOpen
NotificationEventServerOpen = Class(NotificationEventServerOpen)

NotificationEventServerOpen.KEY = "event_server_open_noti"

---@type {season, listQuestId}
NotificationEventServerOpen.data = nil

--- @return void
function NotificationEventServerOpen.LoadFromServer(callbackSuccess, callbackFailed)
    NotificationEventServerOpen.data = zg.playerData.remoteConfig.serverOpen
    if NotificationEventServerOpen.data == nil then
        NotificationEventServerOpen.data = {}
    end
    if callbackSuccess ~= nil then
        callbackSuccess()
    end
    --RemoteConfigSetOutBound.GetValueByKey(NotificationEventServerOpen.KEY, function (notiRecord)
    --    NotificationEventServerOpen.data = json.decode(notiRecord)
    --    if callbackSuccess ~= nil then
    --        callbackSuccess()
    --    end
    --end, function ()
    --    NotificationEventServerOpen.data = {}
    --    if callbackSuccess ~= nil then
    --        callbackSuccess()
    --    end
    --end)
end

--- @return void
function NotificationEventServerOpen.CheckNotificationEventServerOpen(callback)
    ---@type EventOpenServerInbound
    local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)

    if eventOpenServerInbound.hasQuestComplete == true then
        if callback ~= nil then
            callback(true)
        end
    elseif eventOpenServerInbound.hasData == true then
        local check = function()
            local noti = NotificationEventServerOpen.CheckNotificationEventServerOpenByProgress()
            if noti == false then
                NotificationEventServerOpen.CheckSeason(function()
                    noti = NotificationEventServerOpen.CheckNotificationEventServerOpenByDay()
                end)
            end
            if callback ~= nil then
                callback(noti)
            end
        end

        if NotificationEventServerOpen.data ~= nil then
            check()
        else
            NotificationEventServerOpen.LoadFromServer(check, function()
                if callback ~= nil then
                    callback(false)
                end
            end)
        end
    else
        if callback ~= nil then
            callback(false)
        end
    end
end

--- @return boolean
---@param day number
function NotificationEventServerOpen.CheckNotificationEventServerOpenByDay(day)
    local noti = false
    ---@type EventOpenServerInbound
    local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    ---@type ServerOpenData
    local serverOpenData = eventOpenServerInbound:GetConfig()

    NotificationEventServerOpen.CheckSeason(function()
        local indexDayLock = serverOpenData:GetIndexDayLock()
        ---@param v QuestUnitInBound
        for i, v in pairs(eventOpenServerInbound.listQuest:GetItems()) do
            local dayQuest = serverOpenData.dictQuestDay:Get(v.questId)
            if dayQuest ~= nil
                    and (day == nil or dayQuest == day)
                    and (indexDayLock == nil or dayQuest < indexDayLock)
                    and v.number ~= nil
                    and v.number >= v.config:GetMainRequirementTarget()
                    and v.questState == QuestState.DONE_REWARD_NOT_CLAIM
                    and NotificationEventServerOpen.data.listQuestId[tostring(v.id)] == nil then
                noti = true
                break
            end
        end
    end)
    return noti
end

--- @return boolean
function NotificationEventServerOpen.CheckNotificationEventServerOpenByProgress()
    local noti = false
    ---@type EventOpenServerInbound
    local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    ---@type ServerOpenData
    local serverOpenData = eventOpenServerInbound:GetConfig()

    local currentPoint = nil
    --- @param serverOpenProgress ServerOpenProgress
    for i, serverOpenProgress in ipairs(serverOpenData.listProgress:GetItems()) do
        if id == nil or id == i then
            if currentPoint == nil then
                currentPoint = InventoryUtils.GetMoney(serverOpenProgress.moneyData.itemId) or 0
            end
            local isUnlock = serverOpenProgress.moneyData.quantity <= currentPoint
            if isUnlock then
                if eventOpenServerInbound.listClaim:IsContainValue(serverOpenProgress.id) == false then
                    noti = true
                    break
                end
            end
        end
    end
    return noti
end

--- @return void
function NotificationEventServerOpen.CheckSeason(callbackValidatedSeason)
    local eventData = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    if eventData ~= nil and NotificationEventServerOpen.data ~= nil then
        if NotificationEventServerOpen.data.season ~= eventData.timeData.season then
            NotificationEventServerOpen.data.season = eventData.timeData.season
            NotificationEventServerOpen.data.listQuestId = {}
        else
            if callbackValidatedSeason ~= nil then
                callbackValidatedSeason()
            end
        end
    end
end

--- @return void
function NotificationEventServerOpen.SaveToServer()
    zg.playerData.remoteConfig.serverOpen = NotificationEventServerOpen.data
    zg.playerData:SaveRemoteConfig()
    --local remoteConfigSetOutBound = RemoteConfigSetOutBound()
    --remoteConfigSetOutBound:AddItem(RemoteConfigItemOutBound(NotificationEventServerOpen.KEY,
    --        RemoteConfigValueType.STRING, json.encode(NotificationEventServerOpen.data)))
    --RemoteConfigSetOutBound.SetValue(remoteConfigSetOutBound)
end

---@param quest QuestUnitInBound
function NotificationEventServerOpen.CheckNotificationQuest(quest)
    local noti = quest.number ~= nil and quest.number >= quest.config:GetMainRequirementTarget()
    if noti and NotificationEventServerOpen.data ~= nil then
        if NotificationEventServerOpen.data[tostring(quest.questId)] ~= nil then
            noti = false
        end
    end
    return noti
end

--- @return void
---@param day number
function NotificationEventServerOpen.RemoveNotificationDay(day)
    if NotificationEventServerOpen.data == nil then
        NotificationEventServerOpen.data = {}
    end
    ---@type EventOpenServerInbound
    local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    ---@type ServerOpenData
    local serverOpenData = eventOpenServerInbound:GetConfig()
    NotificationEventServerOpen.CheckSeason()
    ---@param v QuestUnitInBound
    for i, v in pairs(eventOpenServerInbound.listQuest:GetItems()) do
        if serverOpenData.dictQuestDay:Get(v.id) == day
                and v.number ~= nil
                and v.number >= v.config:GetMainRequirementTarget() then
            NotificationEventServerOpen.data.listQuestId[tostring(v.id)] = 1
        end
    end
    NotificationEventServerOpen.SaveToServer()
end
