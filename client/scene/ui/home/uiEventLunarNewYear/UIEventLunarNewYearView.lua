require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.UIEventLunarNewYearLayout"

--- @class UIEventLunarNewYearView : UIBaseView
UIEventLunarNewYearView = Class(UIEventLunarNewYearView, UIBaseView)

local pivotTab = U_Vector2(0.865, 0.5)

function UIEventLunarNewYearView:Ctor(model)
	--- @type UIEventLunarNewYearConfig
	self.config = nil
	--- @type UILoopScroll
	self.scrollLoopTab = nil
	--- @type UILoopScroll
	self.scrollLoopContent = nil

	--- @type Dictionary
	self.layoutDict = Dictionary()
	--- @type UIEventNewYearLayout
	self.layout = nil
	--- @type Dictionary
	self.eventTabDict = Dictionary()

	--- @type EventLunarNewYearModel
	self.eventModel = nil

	---@type EventTimeType
	self.eventTimeType = EventTimeType.EVENT_LUNAR_NEW_YEAR
	--- @type boolean
	self.isReloadingData = nil
	UIBaseView.Ctor(self, model)
	--- @type UIEventLunarNewYearModel
	self.model = model
end

function UIEventLunarNewYearView:OnReadyCreate()
	self.config = UIBaseConfig(self.uiTransform)
	self:_InitButtonListener()
	self:_InitScrollTab()
end

function UIEventLunarNewYearView:InitLocalization()
	if self.layoutDict ~= nil then
		--- @param v UIEventNewYearLayout
		for _, v in pairs(self.layoutDict:GetItems()) do
			v:InitLocalization()
		end
	end
end

function UIEventLunarNewYearView:_InitButtonListener()
	self.config.buttonBack.onClick:AddListener(function()
		self:OnClickBackOrClose()
	end)
	self.config.buttonAsk.onClick:AddListener(function()
		self:OnClickHelpInfo()
		zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
	end)
end

function UIEventLunarNewYearView:_InitScrollTab()
	--- @param obj UIEventPackageTabItem
	--- @param index number
	local onCreateItem = function(obj, index)
		local dataIndex = index + 1
		--- @type LunarNewYearTab
		local newYearTab = self.model.listSubEvent:Get(dataIndex)
		obj:SetText(self:_GetEventName(newYearTab))
		obj:SetSelectState(self:_IsTabChosen(newYearTab))
		obj:SetIcon(self:_GetEventIcon(newYearTab))
		obj:SetNotificationFunction(function()
			return self:_GetEventNotification(newYearTab)
		end)
		obj:SetEndEventTime(self:_GetEventEndTime(newYearTab), function()
			self:_OnEventTimeEnded()
		end)
		obj:AddOnSelectListener(function()
			self:OnClickSelectTab(newYearTab)
		end)
		obj:SetPivot(pivotTab)
		self.eventTabDict:Add(newYearTab, obj)
	end

	--- @param obj UIEventPackageTabItem
	--- @param index number
	local onUpdateItem = function(obj, index)
		local dataIndex = index + 1
		--- @type LunarNewYearTab
		local newYearTab = self.model.listSubEvent:Get(dataIndex)
		obj:SetSelectState(self:_IsTabChosen(newYearTab))
	end
	self.scrollLoopTab = UILoopScroll(self.config.VerticalScrollTab, UIPoolType.EventPackageTabItem, onCreateItem, onUpdateItem)
	self.scrollLoopTab:SetUpMotion(MotionConfig(nil, nil, nil, 0.02))
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:_IsTabChosen(newYearTab)
	return self.layout ~= nil and self.layout.newYearTab == newYearTab
end

function UIEventLunarNewYearView:OnReadyShow()
	self.isReloadingData = false
	self.eventModel = zg.playerData:GetEvents():GetEvent(self.eventTimeType)
	self.isOpen = self.eventModel:IsOpening()
	if self.isOpen then
		self.eventListener = RxMgr.eventStateChange:Subscribe(RxMgr.CreateFunction(self, self.OnEventStateChange))
	end
	self:CheckEndSeasonDisplay()
	self:CheckResourceOnSeason()
	self.model:InitListSubEvent(self.eventModel.timeData)
	if self.isOpen then
		if self.model.listSubEvent:Count() > 0 then
			self:SelectTab(self.model.listSubEvent:Get(LunarNewYearTab.GOLDEN_TIME))
			self.scrollLoopTab:Resize(self.model.listSubEvent:Count())
			self:CheckAllNotificationTab()
		else
			SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
			self:OnReadyHide()
		end
	else
		self:SelectTab(self.model.listSubEvent:Get(LunarNewYearTab.CARD))
	end
end

function UIEventLunarNewYearView:CheckEndSeasonDisplay()
	--self.config.VerticalScrollTab.gameObject:SetActive(self.isOpen)
end

function UIEventLunarNewYearView:CheckResourceOnSeason()
	local endTime = self.eventModel.timeData.endTime
	local savedEndSeason = zg.playerData.remoteConfig.eventLunarNewYearEnd or endTime
	if savedEndSeason ~= endTime then
		self:ClearMoneyType()
	end
	zg.playerData.remoteConfig.eventLunarNewYearEnd = endTime
	zg.playerData:SaveRemoteConfig()
end

function UIEventLunarNewYearView:ClearMoneyType()
	local clearResource = function(moneyType)
		local currentValue = InventoryUtils.Get(ResourceType.Money, moneyType)
		InventoryUtils.Sub(ResourceType.Money, moneyType, currentValue)
	end
	--clearResource(MoneyType.EVENT_CHRISTMAS_CANDY_BAR)
	--clearResource(MoneyType.EVENT_CHRISTMAS_BOX)
	--clearResource(MoneyType.EVENT_CHRISTMAS_STAMINA)
end

function UIEventLunarNewYearView:SelectTab(newYearTab)
	self:GetLayout(newYearTab)
	self.layout:OnShow()
	self.scrollLoopTab:RefreshCells()
end

function UIEventLunarNewYearView:OnClickSelectTab(newYearTab)
	if self:_IsTabChosen(newYearTab) then
		return
	end
	self:SelectTab(newYearTab)
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:GetLayout(newYearTab)
	self:DisableCommon()
	self.layout = self.layoutDict:Get(newYearTab)
	if self.layout == nil then
		if newYearTab == LunarNewYearTab.GOLDEN_TIME then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.goldenTime.UIEventLunarGoldenTimeLayout"
			self.layout = UIEventLunarGoldenTimeLayout(self, newYearTab, self.config.goldenAnchor)
		elseif newYearTab == LunarNewYearTab.LOGIN then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.dailyCheckin.UIEventLunarDailyCheckinLayout"
			self.layout = UIEventLunarDailyCheckinLayout(self, newYearTab, self.config.loginEventAnchor)
		elseif newYearTab == LunarNewYearTab.BUNDLE then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.eliteBundle.UIEventLunarNewYearEliteBundleLayout"
			self.layout = UIEventLunarNewYearEliteBundleLayout(self, newYearTab, self.config.cardAnchor)
		elseif newYearTab == LunarNewYearTab.EXCHANGE then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.UIEventLunarNewYearExchangeLayout"
			self.layout = UIEventLunarNewYearExchangeLayout(self, newYearTab, self.config.exchangeAnchor )
		elseif newYearTab == LunarNewYearTab.ELITE_SUMMON then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.eliteSummon.UIEventLunarEliteSummonLayout"
			self.layout = UIEventLunarEliteSummonLayout(self, newYearTab, self.config.eliteSummon)
		elseif newYearTab == LunarNewYearTab.SKIN_BUNDLE then
			require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.skinBundle.UIEventLunarSkinBundleLayout"
			self.layout = UIEventLunarSkinBundleLayout(self, newYearTab, self.config.skinBundle)
		else
			XDebug.Error("Missing layout type " .. newYearTab)
			return nil
		end
		self.layoutDict:Add(newYearTab, self.layout)
	end
end

function UIEventLunarNewYearView:DisableCommon()
	self:HideCurrentLayout()
	self.config.goldenAnchor.gameObject:SetActive(false)
	self.config.loginEventAnchor.gameObject:SetActive(false)
	self.config.cardAnchor.gameObject:SetActive(false)
	self.config.exchangeAnchor.gameObject:SetActive(false)
	self.config.eliteSummon.gameObject:SetActive(false)
end

function UIEventLunarNewYearView:OnClickHelpInfo()
	PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, LanguageUtils.LocalizeHelpInfo("event_lunar_new_year_info"))
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:_GetEventName(newYearTab)
	if newYearTab == LunarNewYearTab.GOLDEN_TIME then
		return LanguageUtils.LocalizeCommon("golden_time_lunar_new_year")
	elseif newYearTab == LunarNewYearTab.EXCHANGE then
		return LanguageUtils.LocalizeCommon("event_lunar_new_year_exchange")
	elseif newYearTab == LunarNewYearTab.BUNDLE then
		return LanguageUtils.LocalizeCommon("event_lunar_new_year_bundle")
	elseif newYearTab == LunarNewYearTab.LOGIN then
		return LanguageUtils.LocalizeCommon("event_lunar_new_year_login")
	elseif newYearTab == LunarNewYearTab.ELITE_SUMMON then
		return LanguageUtils.LocalizeCommon("event_lunar_elite_summon")
	elseif newYearTab == LunarNewYearTab.SKIN_BUNDLE then
		return LanguageUtils.LocalizeCommon("event_lunar_skin_bundle")
	else
		return LanguageUtils.LocalizeCommon("new_year_golden_time_name")
	end
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:_GetEventIcon(newYearTab)
	return ResourceLoadUtils.LoadEventLunarNewYear(newYearTab)
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:_GetEventNotification(newYearTab)
	return self.eventModel:IsTabNotified(newYearTab)
end

function UIEventLunarNewYearView:_OnEventTimeEnded()
	RxMgr.eventStateChange:Next({ ["eventTimeType"] = self.eventModel:GetType(), ["isAdded"] = false })
end

--- @param newYearTab LunarNewYearTab
function UIEventLunarNewYearView:UpdateNotificationByTab(newYearTab)
	--- @type UIEventPackageTabItem
	local objTab = self.eventTabDict:Get(newYearTab)
	if objTab ~= nil then
		objTab:UpdateNotification()
	end
end

function UIEventLunarNewYearView:OnClickBackOrClose()
	zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
	self:OnReadyHide()
end

function UIEventLunarNewYearView:OnReadyHide()
	PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end

function UIEventLunarNewYearView:CheckAllNotificationTab()
	--- @param v LunarNewYearTab
	--- @param v UIEventPackageTabItem
	for k, v in pairs(self.eventTabDict:GetItems()) do
		self:UpdateNotificationByTab(k)
	end
end

function UIEventLunarNewYearView:_GetEventEndTime(newYearTab)
	--if newYearTab == LunarNewYearTab.EXCLUSIVE_OFFER then
	--    return self.eventModel.timeData.endTime - TimeUtils.SecondAMin * 10
	--end
	return self.eventModel.timeData.endTime
end

--- @param data {eventTimeType : EventTimeType, isAdded}
function UIEventLunarNewYearView:OnEventStateChange(data)
	local isAdded = data.isAdded
	if isAdded == false and self.isReloadingData ~= true then
		self.isReloadingData = true
		EventInBound.ValidateEventModel(function()
			---@type EventNewYearModel
			local eventModel = zg.playerData:GetEvents():GetEvent(self.eventTimeType)
			if eventModel:IsOpening() then
				self:HideCurrentLayout()
				self:RemoveListener()
				self:OnReadyShow()
			else
				if PopupUtils.IsPopupShowing(self.model.uiName) == false then
					return
				end
				PopupMgr.HidePopup(self.model.uiName)
				PopupMgr.ShowPopup(UIPopupName.UIMainArea)
				SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
			end
		end, true)
	end
end

function UIEventLunarNewYearView:Hide()
	UIBaseView.Hide(self)

	self:RemoveListener()

	self:HideCurrentLayout()

	self:HideScrollTab()
end

function UIEventLunarNewYearView:HideScrollTab()
	self.scrollLoopTab:Hide()
	self.eventTabDict:Clear()
end

function UIEventLunarNewYearView:RemoveListener()
	if self.eventListener ~= nil then
		self.eventListener:Unsubscribe()
		self.eventListener = nil
	end
end

function UIEventLunarNewYearView:HideCurrentLayout()
	if self.layout ~= nil then
		self.layout:OnHide()
		self.layout = nil
	end
end