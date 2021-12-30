--- @class UIPopupNotificationView : UIBaseView
UIPopupNotificationView = Class(UIPopupNotificationView, UIBaseView)

--- @return void
--- @param model UIPopupNotificationModel
function UIPopupNotificationView:Ctor(model)
    ---@type UIPopupNotificationConfig
    self.config = nil
    ---@type function
    self.closeCallback = nil
    ---@type function
    self.clickBgCallback = nil
    ---@type function
    self.okCallback = nil
    ---@type function
    self.noCallback = nil
    ---@type function
    self.yesCallback = nil
    ---@type {text, callback}
    self.button1 = nil
    ---@type {text, callback}
    self.button2 = nil
    ---@type List
    self.listItemView = List()

    -- init variables here
    UIBaseView.Ctor(self, model, ctrl)
    --- @type UIPopupNotificationModel
    self.model = model
end

--- @return void
function UIPopupNotificationView:OnReadyCreate()
    ---@type UIPopupNotificationConfig
    self.config = UIBaseConfig(self.uiTransform)
    self.config.background.onClick:AddListener(function()
        if self.clickBgCallback ~= nil then
            self.clickBgCallback()
        end
    end)

    self.config.textNoti.resizeTextMinSize = 28
end

--- @return void
function UIPopupNotificationView:OnReadyShow(result)
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
    UIBaseView.OnReadyShow(self, result)
    self:Init(result)
end

--- @return void
function UIPopupNotificationView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)
    self:CheckAndInitTutorial()
    self:SetAlpha()
end

function UIPopupNotificationView:SetAlpha()
    if self._canvasGroup ~= nil then
        self._canvasGroup.alpha = 1
    end
end

function UIPopupNotificationView:ReturnPoolListItem()
    ---@param v RootIconView
    for i, v in ipairs(self.listItemView:GetItems()) do
        v:ReturnPool()
    end
    self.listItemView:Clear()
end

--- @return void
function UIPopupNotificationView:Hide()
    UIBaseView.Hide(self)
    self:RemoveListenerTutorial()
    self.clickBgCallback = nil
    self:ReturnPoolListItem()
end

--- @return void
function UIPopupNotificationView:Init(result)
    self.clickBgCallback = result.clickBgCallback
    if result ~= nil and result.clickBgCallback ~= nil then
        result.tapToClose = true
    else
        result.tapToClose = false
    end
    self.button1 = result.button1
    self.button2 = result.button2

    if result.title == nil then
        self.config.textTitle.text = LanguageUtils.LocalizeCommon("notification")
    else
        self.config.textTitle.text = result.title
    end

    if result.notification == nil then
        self.config.textNoti.text = "empty"
    else
        self.config.textNoti.text = result.notification
    end

    if result.alignment == nil then
        self.config.textNoti.alignment = U_TextAnchor.UpperLeft
    else
        self.config.textNoti.alignment = result.alignment
    end

    if self.button1 ~= nil or self.button2 ~= nil then
        self.config.buttonParent:SetActive(true)
        self:SetDataButton(self.config.button1, self.config.textButton1, self.button1)
        self:SetDataButton(self.config.button2, self.config.textButton2, self.button2)
    else
        self.config.buttonParent:SetActive(false)
    end

    if self.config.item ~= nil then
        if result.listItem ~= nil and result.listItem:Count() > 0 then
            self.config.item.gameObject:SetActive(true)
            for _, v in ipairs(result.listItem:GetItems()) do
                ---@type RootIconView
                local item = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.config.item)
                item:SetIconData(v)
                item:RegisterShowInfo()
                self.listItemView:Add(item)
            end
        else
            self.config.item.gameObject:SetActive(false)
        end
    end

    --Coroutine.start(function()
    --    self.config.fitter.enabled = false
    --    coroutine.waitforendofframe()
    --    self.config.fitter.enabled = true
    --    coroutine.waitforendofframe()
    --    self.config.fitter.enabled = false
    --end)
end

--- @return void
---@param button UnityEngine_UI_Button
---@param text TMPro_TextMeshProUGUI
---@param data {callback, text}
function UIPopupNotificationView:SetDataButton(button, text, data)
    if data ~= nil then
        text.text = data.text
        button.gameObject:SetActive(true)
        button.onClick:RemoveAllListeners()
        button.onClick:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            if data.callback ~= nil then
                data.callback()
            end
        end)
    else
        button.gameObject:SetActive(false)
    end
end

--- @return void
function UIPopupNotificationView:ClosePopup()
    PopupMgr.HidePopup(self.model.uiName)
end

--- @return void
function UIPopupNotificationView:OnReadyHide()
    if self.closeCallback ~= nil then
        self:ClosePopup()
        self.closeCallback()
    end
    UIBaseView.OnReadyHide(self)
end

--- @return void
---@param tutorial UITutorialView
---@param step number
function UIPopupNotificationView:ShowTutorial(tutorial, step)
    if step == TutorialStep.CLICK_NOTIFICATION_OPTION_1 then
        tutorial:ViewFocusCurrentTutorial(self.config.button1, U_Vector2(400, 150), nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_NOTIFICATION_OPTION_2 then
        tutorial:ViewFocusCurrentTutorial(self.config.button2, U_Vector2(400, 150), nil, nil, TutorialHandType.CLICK)
    end
end