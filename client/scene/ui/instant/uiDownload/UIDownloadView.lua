local NOTIFICATION_STATUS = 1
local NORMAL_STATUS = 2
local ORIGIN_SIZE = U_Vector2(2048, 1260)
local LAST_UPDATED_VERSION = "last_updated_version"

--- @class UIDownloadView : UIBaseView
UIDownloadView = Class(UIDownloadView, UIBaseView)

--- @return void
--- @param model UIDownloadModel
function UIDownloadView:Ctor(model, ctrl)
    UIBaseView.Ctor(self, model, ctrl)
    --- @type UIDownloadModel
    self.model = model
end

--- @return void
function UIDownloadView:OnReadyCreate()
    uiCanvas.canTouch = true

    ---@type DownloadConfig
    self.config = UIBaseConfig(self.uiTransform)
    self:InitButtonListener()
    self:SetButtonChangeLanguage()
    uiCanvas:SetBackgroundSize(self.config.loadingScreen)

    self:SetSizeAnim()
end

function UIDownloadView:SetSizeAnim()

    local newSize = self.config.loadingScreen.rectTransform.sizeDelta
    self.config.anim.transform.localScale = U_Vector3(newSize.x / ORIGIN_SIZE.x, newSize.y / ORIGIN_SIZE.y, 1)

    --- @type UnityEngine_RectTransform
    local rectTransform = self.config.anim:GetComponent(ComponentName.UnityEngine_RectTransform)
    local pos = rectTransform.anchoredPosition3D
    pos.y = pos.y * rectTransform.localScale.y
    rectTransform.anchoredPosition3D = pos
end

--- @return void
function UIDownloadView:InitLocalization()
    self.config.textTapToPlay.text = LanguageUtils.LocalizeCommon("tap_to_play")
    self.config.textVersion.text = Main.GetVersionInfo()
end

--- @return void
function UIDownloadView:SetButtonChangeLanguage()
    if self.config.buttonChangeLanguage then
        self.config.buttonChangeLanguage.gameObject:SetActive(not IS_VIET_NAM_VERSION)
    end
end

function UIDownloadView:CheckSwitchServer()
    if PlayerSetting.IsLogin() == false then
        ServerListInBound.Request(function()
            self:SetActiveSwitchServer()
            self:UpdateCurrentServer()
        end)
    end
end

--- @return void
function UIDownloadView:OnReadyShow()
    self:InitListener()
    self:CheckSwitchServer()
    self:SwitchStatus(NORMAL_STATUS)
    self:SetMusic()
    self:ShowLanguage()
    self:SetTouchBackgroundStatus(true)
    self:CheckAutoClickBackground()
    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ShowPopupDownload)

    self.config.buttonLogin.gameObject:SetActive(IS_APPLE_REVIEW == false)

    self:ShowTermOfUse()

    self:CheckShowChangeLog()
end

--- @return void
function UIDownloadView:ShowTermOfUse()
    local key = "term_of_use"
    if U_PlayerPrefs.HasKey(key) == false then
        local data = {}
        data.notification = LanguageUtils.LocalizeCommon("noti_term_of_use")
        data.alignment = U_TextAnchor.MiddleCenter
        data.closeCallback = nil
        data.canCloseByBackButton = false
        local buttonNo = {}
        buttonNo.text = LanguageUtils.LocalizeCommon("term_of_use")
        buttonNo.callback = function()
            U_Application.OpenURL("https://docs.google.com/document/d/1VPpeTpC3oqi7TNqhuTUN064zhRYimTgIlPgZTzRbkJU/edit")
        end
        data.button1 = buttonNo
        local buttonYes = {}
        buttonYes.text = LanguageUtils.LocalizeCommon("accept")
        buttonYes.callback = function()
            PopupMgr.HidePopup(UIPopupName.UIPopupNotification)
            U_PlayerPrefs.SetInt(key, 1)
        end
        data.button2 = buttonYes
        PopupMgr.ShowPopup(UIPopupName.UIPopupNotification, data)
    end
end

function UIDownloadView:CheckAutoClickBackground()
    if zgUnity.IsResetGame then
        zgUnity.IsResetGame = false
        self:OnClickBackground()
    end
end

function UIDownloadView:SetTouchBackgroundStatus(isEnable)
    self.config.buttonBackground.enabled = isEnable
end

--- @return void
function UIDownloadView:InitListener()
    self.loadingListener = RxMgr.notificationLoading:Subscribe(RxMgr.CreateFunction(self, self.UpdateNotification))
end

--- @return void
function UIDownloadView:ShowLanguage()
    ---@type  Language
    local currentLanguage = LanguageUtils.GetLanguageByType(PlayerSettingData.language)
    if currentLanguage ~= nil then
        self.config.textLanguage.text = currentLanguage.name
    end
end

--- @return void
function UIDownloadView:RemoveListener()
    if self.loadingListener ~= nil then
        self.loadingListener:Unsubscribe()
        self.loadingListener = nil
    end
end

--- @return void
function UIDownloadView:UpdateNotification(result)
    self:SetGuideText(result)
end

--- @return void
function UIDownloadView:UpdateCurrentServer()
    self.config.textServer.text = string.format("S%s", zg.playerData:GetServerListInBound():GetClusterRegister())
end

--- @return void
--- @param content string
function UIDownloadView:SetGuideText(content)
    self.config.textGuide.text = content
end

--- @return void
--- @param status number
function UIDownloadView:SwitchStatus(status)
    if status == NOTIFICATION_STATUS then
        self:SetNotificationStatus(true)
        self:SetNormalStatus(false)
    else
        self:SetNotificationStatus(false)
        self:SetNormalStatus(true)
    end
end

function UIDownloadView:SetNotificationStatus(isEnable)
    self.config.textGuide.gameObject:SetActive(isEnable)
end

function UIDownloadView:SetNormalStatus(isEnable)
    self.config.safeArea.gameObject:SetActive(isEnable)
    if isEnable then
        self:SetActiveSwitchServer()
    end
end

function UIDownloadView:SetActiveSwitchServer()
    --self.config.buttonSwitchServer.gameObject:SetActive(self:EnableSwitchServer())
end

function UIDownloadView:EnableSwitchServer()
    return false --(PlayerSetting.IsLogin() == false) and (zg.playerData:GetServerListInBound():IsAvailableToRequest() == false)
end

function UIDownloadView:OnClickBackground()
    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.TapToPlay)
    self:SetTouchBackgroundStatus(false)
    self:SwitchStatus(NOTIFICATION_STATUS)
    LoginUtils.AutoLogin()
    zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    uiCanvas:SetIcon18Plus()
end

--- @return void
function UIDownloadView:InitButtonListener()
    self.config.buttonBackground.onClick:AddListener(function()
        self:OnClickBackground()
    end)

    self.config.buttonLogin.onClick:AddListener(function()
        PopupMgr.ShowPopup(UIPopupName.UISwitchAccount, { ["callbackLoginSuccess"] = function()
            self:SetTouchBackgroundStatus(false)
            LoginUtils.LoginComplete()
        end })
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)

    self.config.buttonNotice.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        PopupMgr.ShowPopup(UIPopupName.UINewUpdate)
    end)

    self.config.buttonRecover.onClick:AddListener(function()
        self:OnClickRecover()
    end)

    --self.config.buttonSwitchServer.onClick:AddListener(function()
    --    self:OnClickSwitchServer()
    --end)

    self.config.buttonChangeLanguage.onClick:AddListener(function()
        self:OnClickChangeLanguage()
    end)
end

function UIDownloadView:OnClickRecover()
    if IS_MOBILE_PLATFORM then
        local yesCallback = function()
            zg:OnDestroy()
            bundleDownloader:UnloadAllAssetBundles()
            Main.ResetGame()
        end
        PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("want_to_clear_data"), nil, yesCallback)
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    else
        PopupUtils.ShowPopupNotificationOK("This function just support for mobile platform")
    end
end

function UIDownloadView:OnClickChangeLanguage()
    local data = {}
    data.callbackChangeLanguage = function()
        PopupMgr.HidePopup(UIPopupName.UILanguageSetting)
        self:ShowLanguage()
        self:InitLocalization()
    end
    PopupMgr.ShowPopup(UIPopupName.UILanguageSetting, data)
    zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
end

function UIDownloadView:OnClickSwitchServer()
    local serverListInBound = zg.playerData:GetServerListInBound()
    local data = {}
    data.callbackSwitchServer = function(clusterId)
        serverListInBound.clusterRegister = clusterId
        self:UpdateCurrentServer()
    end
    data.currentClusterId = serverListInBound.clusterRegister
    PopupMgr.ShowPopup(UIPopupName.UISwitchServer, data)
    zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
end

function UIDownloadView:SetMusic()
    zg.audioMgr:PlayMusic(MusicCtrl.splashMusic, true)
end

--- @return void
function UIDownloadView:OnReadyHide()
    -- do nothing
end

--- @return void
function UIDownloadView:Hide()
    UIBaseView.Hide(self)
    self:RemoveListener()
end

function UIDownloadView:CheckShowChangeLog()
    local lastVersion = U_PlayerPrefs.GetString(LAST_UPDATED_VERSION)
    if lastVersion == nil or lastVersion == "" then
        U_PlayerPrefs.SetString(LAST_UPDATED_VERSION, PRODUCT_VERSION)
        return
    end
    if lastVersion ~= PRODUCT_VERSION then
        U_PlayerPrefs.SetString(LAST_UPDATED_VERSION, PRODUCT_VERSION)
        PopupMgr.ShowPopup(UIPopupName.UINewUpdate)
    end
end