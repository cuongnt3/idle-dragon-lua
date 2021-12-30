--- @class UICheckDataView : UIBaseView
UICheckDataView = Class(UICheckDataView, UIBaseView)

--- @return void
--- @param model UICheckDataModel
function UICheckDataView:Ctor(model)
    UIBaseView.Ctor(self, model)
    --- @type UICheckDataModel
    self.model = model
    self.coroutineText = nil
    self.textContent = ""
    self.textCount = 0
    self.onDownloadAssetBundle = nil
end

--- @return void
function UICheckDataView:OnReadyCreate()
    ---@type UICheckDataConfig
    self.config = UIBaseConfig(self.uiTransform)

    self:InitCheckData()

    uiCanvas:SetBackgroundSize(self.config.loadingScreen)
end

function UICheckDataView:InitCheckData()
    --- @type GoogleScriptDownloader
    self.googleScript = require("lua.client.core.main.GoogleScriptDownloader")
    --- @type LuaCsvDownloader
    self.luaCsv = require("lua.client.core.main.LuaCsvDownloader")

    self.googleScript.onSuccess = function()
        self:SetCoroutineText(LanguageUtils.LocalizeCommon("check_game_logic"))
        self.luaCsv.CheckDownload()
    end

    self.luaCsv.onSuccess = function(isReset)
        if isReset then
            self:StopCoroutine()
            bundleDownloader:UnloadAllAssetBundles()
            Main.ResetGame()
        else
            self:SetCoroutineText(LanguageUtils.LocalizeCommon("check_game_resources"))
            bundleDownloader:CheckDownload()
        end
    end

    self.onDownloadAssetBundle = RxMgr.downloadAssetBundle:Subscribe(function(percent, totalMB)
        self:StopCoroutine()
        if totalMB then
            local content = string.format("Downloading %.2f/%.2f (MB)", percent * totalMB, totalMB)
            self:SetText(content)
        end
        if percent >= 1 then
            zg:InitMore()
            require("lua.client.log.ServerLogger")
            serverLog:InitListenLogMessage()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIDownload, nil, UIPopupName.UICheckData)
            self.onDownloadAssetBundle:Unsubscribe()
        end
    end)
end

--- @return void
function UICheckDataView:OnReadyShow(result)
    Coroutine.start(function()
        coroutine.waitforendofframe()
        ComponentName.LoadMore()
        coroutine.waitforendofframe()
        if zgUnity.IsResetGame ~= false then
            self:SetCoroutineText(LanguageUtils.LocalizeCommon("check_game_resources"))
            bundleDownloader:CheckDownload()
        else
            self:CheckData()
        end
    end)
end

function UICheckDataView:CheckData()
    --if IS_MOBILE_PLATFORM then
    --	if (IS_IOS_PLATFORM and LOWER_DEVICE) or
    --			(IS_ANDROID_PLATFORM and U_SystemInfo.SupportsTextureFormat(UnityEngine.TextureFormat.ETC2_RGBA8Crunched) == false) then
    --		PopupUtils.ShowPopupLowerDevice()
    --		return
    --	end
    --end
    self:SetCoroutineText(LanguageUtils.LocalizeCommon("check_game_version"))
    self.googleScript.CheckDownload()
end

function UICheckDataView:SetCoroutineText(content)
    XDebug.Log("content => " .. content)
    self.textCount = 0
    self.textContent = content
    self:StarCoroutineText()
end

function UICheckDataView:SetText(content)
    self.config.textGuide.text = content
end

function UICheckDataView:StarCoroutineText()
    self:StopCoroutine()
    local timeDelay = 3
    self.coroutineText = Coroutine.start(function()
        while true do
            if Main.IsNull(self.config.textGuide) then
                self:StopCoroutine()
                break
            end
            if self.textCount == 0 then
                self:SetText(self.textContent)
            elseif self.textCount == 1 then
                self:SetText(self.textContent .. " .")
            elseif self.textCount == 2 then
                self:SetText(self.textContent .. " ..")
            elseif self.textCount == 3 then
                self:SetText(self.textContent .. " ...")
            end
            coroutine.waitforseconds(timeDelay)
            timeDelay = 1
            self.textCount = self.textCount + 1
            if self.textCount == 4 then
                self.textCount = 0
            end
        end
    end)
end

function UICheckDataView:StopCoroutine()
    if self.coroutineText ~= nil then
        Coroutine.stop(self.coroutineText)
        self.coroutineText = nil
    end
end

function UICheckDataView:Hide()
    UIBaseView.Hide(self)
    self:StopCoroutine()
end

