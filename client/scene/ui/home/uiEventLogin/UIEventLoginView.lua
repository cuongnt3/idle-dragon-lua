--- @class UIEventLoginView : UIBaseView
UIEventLoginView = Class(UIEventLoginView, UIBaseView)

--- @return void
--- @param model UIEventLoginModel
function UIEventLoginView:Ctor(model)
	--- @type UIEventLoginConfig
	self.config = nil
	--- @type EventLoginPanel
	self.eventLoginPanel = nil
	UIBaseView.Ctor(self, model)
	--- @type UIEventLoginModel
	self.model = model
end

function UIEventLoginView:OnReadyCreate()
	---@type UIEventLoginConfig
	self.config = UIBaseConfig(self.uiTransform)
	self:InitButtonListener()
end

function UIEventLoginView:InitLocalization()
	self.config.localizeTapToClose.gameObject:SetActive(false)
end

function UIEventLoginView:InitButtonListener()
	self.config.bgClose.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
end

function UIEventLoginView:OnClickBackOrClose()
	UIBaseView.OnClickBackOrClose(self)

	zg.playerData.remoteConfig.lastTimeShowEventLogin = zg.timeMgr:GetServerTime()
	zg.playerData:SaveRemoteConfig()
end

function UIEventLoginView:OnReadyHide()
	PopupMgr.HidePopup(self.model.uiName)
	if self.callbackClose ~= nil then
		self.callbackClose()
	end
end

--- @param data {callbackClose : function}
function UIEventLoginView:OnReadyShow(data)
	UIBaseView.OnReadyShow(self, data)

	require "lua.client.scene.ui.home.uiEvent.eventLogin.EventLoginPanel"
	self.eventLoginPanel = PrefabLoadUtils.Get(EventLoginPanel, self.config.popupAnchor)
	self.eventLoginPanel:Show(zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LOGIN))
end

function UIEventLoginView:Hide()
	UIBaseView.Hide(self)
	if self.eventLoginPanel ~= nil then
		self.eventLoginPanel:Hide()
		self.eventLoginPanel = nil
	end
end

function UIEventLoginView:OnDestroy()
	PrefabLoadUtils.Remove(EventLoginPanel)
end
