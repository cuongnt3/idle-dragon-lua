local globalAppKey = IS_IOS_PLATFORM and "c49d8d25" or "ac87252d"
local sungameAppKey = IS_IOS_PLATFORM and "e925dce1" or "e925a359"
local huaweiAppKey = "e62295a1"

--- @class VideoRewardedUtils
VideoRewardedUtils = {}

local isWaitingVideo = false
local isShowingVideo = false
local isCompleteVideo = false
local isRewarding = false
local waitingVideoCoroutine

local function StopWaitingCoroutine()
    Coroutine.stop(waitingVideoCoroutine)
end

local LoadCompleteVideo = function()
    isCompleteVideo = U_PlayerPrefs.GetInt(PlayerPrefsKey.COMPLETE_VIDEO, 0) == 1
end

--- @param state boolean
local SaveCompleteVideo = function(state)
    isCompleteVideo = state
    U_PlayerPrefs.SetInt(PlayerPrefsKey.COMPLETE_VIDEO, state and 1 or 0)
end

local function ShowNoVideo()
    isWaitingVideo = false
    SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("no_video"))
    if PopupUtils.IsWaitingShowing() then
        PopupMgr.HidePopup(UIPopupName.UIPopupWaiting)
    end
end

local function ShowVideo()
    if isShowingVideo == false then
        zg.playerData.waitingPauseAction = true
        zgUnity.ironSrc:Show()
    else
        XDebug.Error("Video in showing Status")
    end
end

--- @param step number
local function RequestRewardedAdSuccess(step)
    --XDebug.Log("step: " .. tostring(step))
    if step == 0 then
        isShowingVideo = true
    elseif step == 3 then
        isShowingVideo = false
        if isRewarding then
            isRewarding = false
            VideoRewardedUtils.RequestToServer()
            TrackingUtils.SetMediationAds()
        end
    elseif step == 4 then
        isRewarding = true
    elseif step == 5 then
        if isWaitingVideo then
            StopWaitingCoroutine()
            ShowVideo()
        end
        RxMgr.notificationVideoRewarded:Next()
    elseif step == 6 then
        if isWaitingVideo then
            ShowNoVideo()
        end
        RxMgr.notificationVideoRewarded:Next()
    end
end

local function RequestRewardedAdFailed(error, message)
    ShowNoVideo()
    XDebug.Log(string.format("Error: %d Message: %s", error, message))
end

function VideoRewardedUtils.OpenRewarded()
    if IS_MOBILE_PLATFORM then
        if VideoRewardedUtils.IsAvailable() then
            ShowVideo()
        else
            isWaitingVideo = true
            PopupMgr.ShowPopup(UIPopupName.UIPopupWaiting, OpCode.REWARD_VIDEO)
            waitingVideoCoroutine = Coroutine.start(function()
                coroutine.waitforseconds(3)
                ShowNoVideo()
                waitingVideoCoroutine = nil
            end)
        end
    else
        zgUnity.ironSrc.onSuccess(4)
    end
end

--- @return void
function VideoRewardedUtils.Init()
    if zgUnity.ironSrc == nil then
        XDebug.Log("Init ironsrc")
        zgUnity.ironSrc = CS.IronSrcUtils(VideoRewardedUtils.GetAppKey())
    end
    zgUnity.ironSrc.onFailed = RequestRewardedAdFailed
    zgUnity.ironSrc.onSuccess = RequestRewardedAdSuccess

    LoadCompleteVideo()
end

function VideoRewardedUtils.RequestToServer()
    SaveCompleteVideo(true)
    local callbackSuccess = function()
        SaveCompleteVideo(false)
        --- @type VideoRewardedInBound
        local videoData = zg.playerData:GetMethod(PlayerDataMethod.REWARD_VIDEO)
        videoData:IncreaseView()
        PopupUtils.ClaimAndShowRewardList(ResourceMgr.GetVideoRewardedConfig():GetPrize(videoData.numberVideoView))
        RxMgr.notificationVideoRewarded:Next()
        TrackingUtils.server:GetTracking(FBProperties.REWARDED_VIDEO_COUNT):Increase(1)
    end
    NetworkUtils.RequestAndCallback(OpCode.REWARD_VIDEO, nil, callbackSuccess, SmartPoolUtils.LogicCodeNotification)
end

--- @return boolean
function VideoRewardedUtils.IsAvailable()
    if IS_EDITOR_PLATFORM then
        return true
    end
    return zgUnity.ironSrc:IsAvailable()
end

--- @return boolean
function VideoRewardedUtils.AllowSkipVideo()
    --- @type IapDataInBound
    local iap = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    return isCompleteVideo or iap.allowSkipVideo or IS_EDITOR_PLATFORM
end

--- @return void
function VideoRewardedUtils.Request()
    if VideoRewardedUtils.AllowSkipVideo() then
        TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.MAIN_FEATURES, "watch_video", 0)
        VideoRewardedUtils.RequestToServer()
    else
        PopupMgr.ShowPopup(UIPopupName.UIWatchAds)
    end
end

--- @return string
function VideoRewardedUtils.GetAppKey()
    if IS_VIET_NAM_VERSION then
        return sungameAppKey
    elseif IS_HUAWEI_VERSION then
        return huaweiAppKey
    else
        return globalAppKey
    end
end