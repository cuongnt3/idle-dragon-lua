--- @class ZgMgr
ZgMgr = Class(ZgMgr)
ZgMgr.targetFrameRate = 50

--- @return void
function ZgMgr:Ctor()
    --- @type boolean
    self.canPlayPVEMode = (zgUnity.IsPVE and IS_EDITOR_PLATFORM)
    --- @type boolean
    self.isInitTrackingCompleted = false
    --- @type SungameMgr
    self.sungameMgr = nil
end

--- @return void
function ZgMgr:Run()
    self:LoadClientData()
    self:InitMgr()
    self:InitLibs()
    self:LaunchGame()
end

--- @return void
function ZgMgr:LoadClientData()
    require("lua.client.data.Player.PlayerSetting")
    if PlayerSetting.IsSavedData() then
        PlayerSetting.LoadData()
    end
    U_Application.targetFrameRate = TargetFrameRate:Get(PlayerSettingData.graphicQuality)
end

-- @return void
function ZgMgr:InitMgr()
    require "lua.client.core.SceneMgr"
    self.sceneMgr = SceneMgr()
    require "lua.client.core.audio.AudioMgr"
    self.audioMgr = AudioMgr()
    require "lua.client.core.LanguageMgr"
    self.languageMgr = LanguageMgr()
    require "lua.client.scene.ui.manager.PopupMgr"
    self.popupMgr = PopupMgr()
    if IS_VIET_NAM_VERSION then
        require "lua.client.core.SungameMgr"
        self.sungameMgr = SungameMgr()
    end
end

function ZgMgr:InitMore()
    require "lua.client.core.ClientRequire"
    require "lua.logicBattle._gen._LuaRequire"
    require "lua.client.core.network.OpCode"
    require "lua.client.core.ResourceMgr"
    require "lua.client.core.event.NetDispatcherMgr"
    self.netDispatcherMgr = NetDispatcherMgr()
    require "lua.client.core.TimeMgr"
    self.timeMgr = TimeMgr()
    require "lua.client.core.BattleMgr"
    self.battleMgr = BattleMgr()
    require "lua.client.core.network.NetworkMgr"
    self.networkMgr = NetworkMgr()
    require "lua.client.battleShow.BattleEffectMgr"
    self.battleEffectMgr = BattleEffectMgr()
    require "lua.client.core.iap.IAPMgr"
    self.iapMgr = IAPMgr()
    require "lua.client.data.Player.PlayerData"
    self.playerData = PlayerData()

    self:InitMediationAds()
    self:InitPause()
end

--- @return void
function ZgMgr:InitLibs()
    require "lua.client.utils.tracking.TrackingUtils"
    require "lua.client.utils.tracking.MktTracking"

    local initTracking = function()
        zgUnity.appsflyer = CS.AppsflyerUtils("Ge7ssp4Hs6ZKXqQ2UU6yeD", self:GetAppsFlyerId(), false)
        self.isInitTrackingCompleted = true
    end

    if IS_HUAWEI_VERSION == false and IS_PBE_VERSION == false then
        zgUnity.firebase = CS.FirebaseUtils(false)
        Coroutine.start(function()
            while zgUnity.firebase.Initialized == false do
                coroutine.waitforendofframe()
            end
            initTracking()
            TrackingUtils.AddFirebasePendingEvent()
            if IS_VIET_NAM_VERSION and self.sungameMgr ~= nil then
                self.sungameMgr:InitSdk()
            end
        end)
        TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.Init)
    else
        initTracking()
    end

    if IS_ANDROID_PLATFORM and IS_HUAWEI_VERSION == false and IS_PBE_VERSION == false then
        local status, message = pcall(function()
            zgUnity.googleReviewUtils = CS.GoogleReviewUtils()
        end)
        if status == false then
            XDebug.Error(message)
        end
    end
end

--- @return void
function ZgMgr:InitMediationAds()
    require("lua.client.core.network.videoRewarded.VideoRewardedUtils")
    VideoRewardedUtils.Init()
end

--- @return void
function ZgMgr:LaunchGame()
    print("launch game")
    if self.canPlayPVEMode then
        self:PlayPVEMode()
    else
        self.sceneMgr:ActiveScene(SceneConfig.HomeScene)
    end
end

--- @return void
function ZgMgr:PlayPVEMode()
    Coroutine.start(function()
        ComponentName.LoadMore()
        coroutine.waitforseconds(1)
        require "lua.client.core.ClientRequire"
        require "lua.logicBattle._gen._LuaRequire"
        require "lua.client.core.ResourceMgr"
        require "lua.client.core.BattleMgr"
        self.battleMgr = BattleMgr()
        require "lua.client.battleShow.BattleEffectMgr"
        self.battleEffectMgr = BattleEffectMgr()
        self.battleMgr:RunTestMode()
        self.sceneMgr:SwitchScene(SceneConfig.BattleTestScene)
        PopupMgr.ShowPopup(UIPopupName.UIBattleTestTool)
    end)
end

--- @return void
function ZgMgr:InitPause()
    require "lua.client.config.const.PauseStatus"
    --- @param status PauseStatus
    zgUnity.onPause = function(status)
        RxMgr.applicationPause:Next(status)
        if status == PauseStatus.PAUSE or (status == PauseStatus.UN_FOCUS and IS_EDITOR_PLATFORM) then
            self.timeMgr:SetPauseTime()
        elseif (status == PauseStatus.UN_PAUSE or (status == PauseStatus.FOCUS and IS_EDITOR_PLATFORM)) then
            if self:CanCheckOverTime() and self.timeMgr:PauseOverTime() then
                if SceneMgr.IsHomeScene() then
                    self:ShowOutGameLongTime()
                end
            else
                self.playerData.waitingPauseAction = false
                self.timeMgr:ContinueUpdateTime()
            end
        end
    end
end

function ZgMgr:ShowOutGameLongTime()
    PopupUtils.ShowTimeOut(function()
        SceneMgr.ShowOutGameLongTime()
    end)
end

function ZgMgr:CanCheckOverTime()
    return self.networkMgr.isConnected
            and self.playerData.waitingPauseAction == false
            and UIBaseView.IsActiveTutorial() == false
end

function ZgMgr:OnDestroy()
    self.popupMgr:OnDestroy()
    self.audioMgr:OnDestroy()
end

function ZgMgr:GetAppsFlyerId()
    if IS_HUAWEI_VERSION then
        return "com.fansipan.summoners.era.idle.huawei-Huawei"
    end
    return APPSFLYER_ID
end