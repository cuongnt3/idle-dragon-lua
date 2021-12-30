require "lua.client.scene.ui.notification.NotificationArena"
require "lua.client.scene.ui.notification.NotificationArenaTeam"

--- @class UISelectArenaView : UIBaseView
UISelectArenaView = Class(UISelectArenaView, UIBaseView)

--- @return void
--- @param model UISelectArenaModel
function UISelectArenaView:Ctor(model)
    --- @type UISelectArenaConfig
    self.config = nil
    UIBaseView.Ctor(self, model)
    --- @type UISelectArenaModel
    self.model = model
end

function UISelectArenaView:OnReadyCreate()
    self.config = UIBaseConfig(self.uiTransform)

    self:InitButtons()
end

function UISelectArenaView:InitLocalization()
    self.config.textArena.text = LanguageUtils.LocalizeFeature(FeatureType.ARENA)
    self.config.textArena3v3.text = LanguageUtils.LocalizeFeature(FeatureType.ARENA_TEAM)

    self.config.textArenaDesc.text = LanguageUtils.LocalizeCommon("arena_desc")
    self.config.textArena3v3Desc.text = LanguageUtils.LocalizeCommon("arena_3v3_desc")
end

function UISelectArenaView:InitButtons()
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.bgClose.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.arena.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickArena()
    end)
    self.config.arena3v3.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickArenaTeam()
    end)
end

function UISelectArenaView:OnReadyShow()
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    --- @type FeatureItemInBound
    self.featureItemInBound = featureConfigInBound:GetFeatureConfigInBound(FeatureType.ARENA_TEAM)
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
    self.config.lockArena:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.ARENA, false) == false)
    self.config.lockArenaTeam:SetActive(self.featureItemInBound.featureState ~= FeatureState.UNLOCK
            or ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.ARENA_TEAM, false) == false)

    self.config.notiArena:SetActive(NotificationArena.IsNotification())
    self.config.notiArenaTeam:SetActive(NotificationArenaTeam.IsNotification())
end

function UISelectArenaView:OnClickArena()
    FeatureMapping.GoToFeature(FeatureType.ARENA, false, function ()
        PopupMgr.HidePopup(UIPopupName.UISelectArena)
    end)
end

function UISelectArenaView:OnClickArenaTeam()
    local featureState = self.featureItemInBound.featureState
    if featureState == FeatureState.UNLOCK then
        FeatureMapping.GoToFeature(FeatureType.ARENA_TEAM, false, function ()
            PopupMgr.HidePopup(UIPopupName.UISelectArena)
        end)
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowNotificationFeatureState(featureState)
    end
end

----- @return void
function UISelectArenaView:OnClickBackOrClose()
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_CLOSE)
    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end