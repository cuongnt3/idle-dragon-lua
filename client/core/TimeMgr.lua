require "lua.client.utils.TimeUtils"
local OVER_TIME = 60
local WARNING_ONLINE_TIME = 10800
local REPEAT_WARNING_TIME = 3600

--- @class TimeMgr
TimeMgr = Class(TimeMgr)

--- @return void
function TimeMgr:Ctor()
    --- @type number
    self.serverTime = nil
    --- @type number
    self.clientTime = nil
    --- @type number
    self.pauseTime = nil
    --- @type List
    self.updateList = List()
    --- @type Coroutine
    self.updateCoroutine = nil
    --- @type Coroutine
    self.nextDayCoroutine = nil
    --- @type number
    self.onlineTime = 0

    self:Start()
end

--- @return void
function TimeMgr:Start()
    self:SetServerTime(self:GetClientTime())
    self:InitOnlineTime()
end

--- @return void

--- @return void
function TimeMgr:StartUpdateTime()
    self:StopUpdate()
    self.updateCoroutine = Coroutine.start(function()
        while true do
            coroutine.waitforseconds(1)
            self:IncreaseOnlineTime()
            if zg.networkMgr ~= nil and zg.networkMgr.isConnected then
                self:Update()
            end
        end
    end)
end

function TimeMgr:SetNextDayTime()
    if self.nextDayCoroutine then
        Coroutine.stop(self.nextDayCoroutine)
    end
    self.nextDayCoroutine = Coroutine.start(function()
        local remainingTime = self:GetRemainingTime()
        coroutine.waitforseconds(remainingTime)
        self:OnNextDay()
        Coroutine.stop(self.nextDayCoroutine)
    end)
end

--- @return void
--- @param serverTime number
function TimeMgr:SetServerTime(serverTime)
    self.clientTime = self:GetClientTime()
    self.serverTime = serverTime
    self:StartUpdateTime()
    self:SetNextDayTime()
end

--- @return void
function TimeMgr:SetPauseTime()
    self:StopUpdate()
    self.pauseTime = self:GetClientTime()
end

function TimeMgr:StopUpdate()
    if self.updateCoroutine then
        Coroutine.stop(self.updateCoroutine)
        self.updateCoroutine = nil
    end
end

--- @return void
function TimeMgr:PauseOverTime()
    if self.pauseTime == nil then
        XDebug.Warning("Pause time nil")
        return false
    end
    local delta = math.abs(self:GetClientTime() - self.pauseTime)
    --XDebug.Log(string.format("delta_time: %d", delta))

    if delta > OVER_TIME then
        self:RemoveAllUpdateFunction()
        return true
    else
        return false
    end
end

function TimeMgr:ContinueUpdateTime()
    self:UpdateSetTime()
    self:StartUpdateTime()
end

--- @return void
function TimeMgr:Update()
    for _, func in ipairs(self.updateList:GetItems()) do
        func(false)
    end
end

function TimeMgr:UpdateSetTime()
    for _, func in ipairs(self.updateList:GetItems()) do
        func(true)
    end
end

--- @return void
--- @param func function
function TimeMgr:AddUpdateFunction(func)
    if func ~= nil then
        func(true)
        self.updateList:Add(func)
    else
        XDebug.Error("Func is not exist")
    end
end

--- @return void
--- @param func function
function TimeMgr:RemoveUpdateFunction(func)
    if func ~= nil then
        self.updateList:RemoveByReference(func)
    else
        XDebug.Error("Func is not exist: ")
    end
end

--- @return void
function TimeMgr:RemoveAllUpdateFunction()
    self.updateList:Clear()
end

--- @return number
function TimeMgr:GetClientTime()
    return os.time()
end

function TimeMgr:GetServerTime()
    return self.serverTime + (self:GetClientTime() - self.clientTime)
end

--- @return string
function TimeMgr:GetRemainingTimeInDay()
    return TimeUtils.SecondsToClock(self:GetRemainingTime())
end

function TimeMgr:GetRemainingTime()
    return TimeUtils.SecondADay - TimeUtils.GetCurrentSecond(self:GetServerTime())
end

--- @return void
function TimeMgr:OnNextDay()
    zg.sceneMgr.gameMode = GameMode.DOWNLOAD
    self:ResetOnlineTime()
    if SceneMgr.IsHomeScene() then
        if UIBaseView.IsActiveTutorial() then
            PopupMgr.HidePopup(UIPopupName.UITutorial)
        end
        SceneMgr.RequestAndResetToMainArea()
    else
        XDebug.Warning("Continue play in battle")
    end
end

--- @return void
function TimeMgr:SyncClockTime(callback)
    local time
    NetworkUtils.RequestAndCallback(OpCode.SYNC_CLOCK_TIME, nil,
            function()
                --XDebug.Log(string.format("delta[%f], current[%f], new[%f]", time - self.serverTime, self.serverTime, time))
                self:SetServerTime(time)
                if callback ~= nil then
                    callback(time)
                end
            end,
            function(error)
                XDebug.Error("Error Sync Time: " .. tostring(error))
            end,
            function(buffer)
                time = MathUtils.Round(buffer:GetLong() / 1000)
            end
    )
end

--- @return void
function TimeMgr:InitOnlineTime()
    if IS_VIET_NAM_VERSION then
        self.startTimeOfDay = TimeUtils.GetTimeStartDayFromSec(self:GetServerTime())
        self.onlineTime = U_PlayerPrefs.GetInt(PlayerPrefsKey.ONLINE_TIME, self.startTimeOfDay)
        if self.onlineTime < self.startTimeOfDay then
            self.onlineTime = self.startTimeOfDay
            U_PlayerPrefs.SetInt(PlayerPrefsKey.ONLINE_TIME, self.onlineTime)
        end
    end
end

function TimeMgr:ResetOnlineTime()
    if IS_VIET_NAM_VERSION then
        self.startTimeOfDay = TimeUtils.GetTimeStartDayFromSec(zg.timeMgr:GetServerTime())
        self.onlineTime = self.startTimeOfDay
        U_PlayerPrefs.SetInt(PlayerPrefsKey.ONLINE_TIME, self.onlineTime)
    end
end

function TimeMgr:IncreaseOnlineTime()
    if IS_VIET_NAM_VERSION then
        self.onlineTime = self.onlineTime + 1
        if self.onlineTime % 90 == 0 then
            XDebug.Log("Save online time")
            U_PlayerPrefs.SetInt(PlayerPrefsKey.ONLINE_TIME, self.onlineTime)
        end
        local over = self.onlineTime - self.startTimeOfDay
        if over >= WARNING_ONLINE_TIME and over % REPEAT_WARNING_TIME == 0 then
            XDebug.Log("Over online minutes " .. self.onlineTime)
            uiCanvas:ShowOnlineOverTime()
            self.onlineTime = self.startTimeOfDay + WARNING_ONLINE_TIME + 1
        end
    end
end