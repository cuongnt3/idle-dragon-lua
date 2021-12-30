--- @class UIQuickBattleView : UIBaseView
UIQuickBattleView = Class(UIQuickBattleView, UIBaseView)

--- @return void
--- @param model UIQuickBattleModel
function UIQuickBattleView:Ctor(model)
	---@type UIQuickBattleConfig
	self.config = nil
	---@type CampaignData
	self.campaignData = nil
	---@type ItemIconData
	self.price = nil
	---@type CampaignQuickBattleConfig
	self.campaignQuickBattleConfig = ResourceMgr.GetCampaignQuickBattleConfig()
	self.callbackCheckNoti = nil

	-- init variables here
	UIBaseView.Ctor(self, model)
	--- @type UIQuickBattleModel
	self.model = model
end

--- @return void
function UIQuickBattleView:OnReadyCreate()
	---@type UIQuickBattleConfig
	self.config = UIBaseConfig(self.uiTransform)
	self:InitButtonListener()
	self:InitUpdateTimeNextDay(function (timeNextDay, isSetTime)
		self.config.textReset.text = string.format(self.localizeRefresh, UIUtils.SetColorString(UIUtils.color2, timeNextDay))
		if isSetTime == true then
			UIUtils.AlignText(self.config.textReset)
		end
	end)
end

--- @return void
function UIQuickBattleView:InitButtonListener()
	self.config.bgClose.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
	self.config.buttonClose.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
	self.config.buttonUseQuickBattle.onClick:AddListener(function ()
		self:OnClickUseQuickBattle()
	end)
end

--- @return void
function UIQuickBattleView:OnReadyShow(result)
	self.callbackCheckNoti = result.callbackCheckNoti
	self.campaignData = zg.playerData:GetCampaignData()
	self:UpdateUI()
end

--- @return void
function UIQuickBattleView:InitLocalization()
	self.config.textTitle.text = LanguageUtils.LocalizeCommon("quick_battle")
	self.config.textInfo.text = string.format(LanguageUtils.LocalizeCommon("quick_battle_info"), self.campaignQuickBattleConfig.duration / 60)
	self.localizeUse = LanguageUtils.LocalizeCommon("use")
	self.localizeRefresh = LanguageUtils.LocalizeCommon("refresh_in")
end

--- @return void
function UIQuickBattleView:UpdateUI()
	self.price = self.campaignQuickBattleConfig:GetPriceBuyTurn(self.campaignData.quickBattleBuyTurn)
	if self.price ~= nil then
		self.config.iconMoney.sprite = ResourceLoadUtils.LoadMoneyIcon(self.price.itemId)
		self.config.iconMoney:SetNativeSize()
		self.config.textPrice.text = tostring(self.price.quantity)
		local maxTurn = self.campaignData:GetMaxQuickBattleTurn()
		self.config.textUse.text = string.format("%s%s", self.localizeUse,
				UIUtils.FormatTextConsumeResource(maxTurn - self.campaignData.quickBattleBuyTurn + 1, maxTurn))
	end
end

--- @return void
function UIQuickBattleView:OnClickUseQuickBattle()
	local canQuickBattle = InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, self.price.itemId, self.price.quantity))
	if canQuickBattle then
		if self.price.quantity > 0 then
			PopupUtils.ShowPopupNotificationUseResource(MoneyType.GEM, self.price.quantity,function ()
				self:QuickBattle()
			end)
		else
			self:QuickBattle()
		end
	end
end

--- @return void
function UIQuickBattleView:QuickBattle()
	---@type List --<RewardInBound>
	local listReward = nil
	--- @param buffer UnifiedNetwork_ByteBuf
	local onBufferReading = function(buffer)
		listReward = NetworkUtils.GetRewardInBoundList(buffer)
		listReward = NetworkUtils.AddInjectRewardInBoundList(buffer, listReward)

		---@param v RewardInBound
		for i, v in ipairs(listReward:GetItems()) do
			if v.type == ResourceType.Money and ClientConfigUtils.IsMoneyEvent(v.id) then
				listReward:RemoveByIndex(i)
				listReward:Insert(v, 1)
			end
		end
	end

	local callbackSuccess = function()
		self.price:SubToInventory()
		---@param v RewardInBound
		for _, v in pairs(listReward:GetItems()) do
			v:AddToInventory()
		end
		PopupUtils.ShowRewardList(RewardInBound.GetItemIconDataList(listReward), ClientConfigUtils.CheckLevelUpAndUnlockFeature)
		self.campaignData.quickBattleBuyTurn = self.campaignData.quickBattleBuyTurn + 1
		if self.campaignData:CanUseQuickBattle() then
			self:UpdateUI()
		else
			PopupMgr.HidePopup(UIPopupName.UIQuickBattle)
		end
		if self.callbackCheckNoti ~= nil then
			self.callbackCheckNoti()
		end
		RxMgr.mktTracking:Next(MktTrackingType.quickBattle, 1)
	end
	NetworkUtils.RequestAndCallback(OpCode.CAMPAIGN_QUICK_BATTLE, UnknownOutBound.CreateInstance(PutMethod.Byte, 1), callbackSuccess,
			SmartPoolUtils.LogicCodeNotification, onBufferReading)
end