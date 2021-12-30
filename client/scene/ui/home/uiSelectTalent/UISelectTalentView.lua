
--- @class UISelectTalentView : UIBaseView
UISelectTalentView = Class(UISelectTalentView, UIBaseView)

--- @param model UISelectTalentModel
function UISelectTalentView:Ctor(model)
	---@type List
	self.listTalentSelectItemView = List()
	--- @type UISelectTalentConfig
	self.config = nil
	UIBaseView.Ctor(self, model)
	--- @type UISelectTalentModel
	self.model = model
end

function UISelectTalentView:OnReadyCreate()
	self.config = UIBaseConfig(self.uiTransform)

	self:InitButtons()
end

function UISelectTalentView:InitButtons()
	self.config.background.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
	self.config.buttonRefresh.onClick:AddListener(function ()
		zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickRefresh()
	end)
    self.config.buttonHelp.onClick:AddListener(function ()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickHelp()
    end)
end

function UISelectTalentView:InitLocalization()
	self.config.textTitle.text = LanguageUtils.LocalizeCommon("select_talent")
	self.config.textRefresh.text = LanguageUtils.LocalizeCommon("refresh")
end

--- @param data {callbackClose : function}
function UISelectTalentView:OnReadyShow(data)
	UIBaseView.OnReadyShow(self, data)
	self.heroInventoryId = data.heroInventoryId
	self.slotId = data.slotId
	self.listId = data.listId
	self.callbackSelectId = data.callbackSelectId

	---@type ItemCollectionInBound
	self.itemCollectionInBound = zg.playerData:GetMethod(PlayerDataMethod.ITEM_COLLECTION)
	self:ShowListTalent()
end

function UISelectTalentView:ShowListTalent()
	for _, v in ipairs(self.listId:GetItems()) do
		---@type TalentSelectItemView
		local item = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.TalentSelectItemView, self.config.item)
		item:SetIconData(v, function (id)
			self:SelectTalentId(id)
		end)
		self.listTalentSelectItemView:Add(item)
	end
	---@type ItemIconData
	self.iconDataPrice = ResourceMgr.GetHeroRefreshTalentConfig():GetPriceRefresh(self.itemCollectionInBound:GetNumberRefreshTalent(self.heroInventoryId, self.slotId) + 1)
	self.config.iconPrice.sprite = ResourceLoadUtils.LoadMoneyIcon(self.iconDataPrice.itemId)
	self.config.textPrice.text = tostring(self.iconDataPrice.quantity)

	self.config.iconCurrency.sprite = ResourceLoadUtils.LoadMoneyIcon(self.iconDataPrice.itemId)
	self.config.textCurrencyValue.text = ClientConfigUtils.FormatNumber(InventoryUtils.GetMoney(self.iconDataPrice.itemId))
end

function UISelectTalentView:SelectTalentId(id)
	PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("noti_select_talent"), nil, function ()
		local callback = function(result)
			--- @param buffer UnifiedNetwork_ByteBuf
			local onBufferReading = function(buffer)

			end
			local onSuccess = function()
				if self.callbackSelectId ~= nil then
					self.callbackSelectId(id)
				end
				PopupMgr.HidePopup(UIPopupName.UISelectTalent)
			end
			local onFailed = function(logicCode)
				SmartPoolUtils.LogicCodeNotification(logicCode)
			end
			NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
		end
		NetworkUtils.Request(OpCode.ITEM_TALENT_SELECT, UnknownOutBound.CreateInstance(PutMethod.Long,
				self.heroInventoryId, PutMethod.Int, self.slotId, PutMethod.Int, id), callback)
	end)
end

function UISelectTalentView:HideListTalent()
	---@param v TalentSelectItemView
	for _, v in ipairs(self.listTalentSelectItemView:GetItems()) do
		v:ReturnPool()
	end
	self.listTalentSelectItemView:Clear()
end

function UISelectTalentView:OnClickRefresh()
	if InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(
			ResourceType.Money, self.iconDataPrice.itemId, self.iconDataPrice.quantity)) then
		PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("noti_refresh_talent"), nil, function ()
			local callback = function(result)
				---@type List
				local listId = List()
				--- @param buffer UnifiedNetwork_ByteBuf
				local onBufferReading = function(buffer)
					local size = buffer:GetByte()
					for i = 1, size do
						listId:Add(buffer:GetInt())
					end
				end
				local onSuccess = function()
					self.iconDataPrice:SubToInventory()
					self.itemCollectionInBound:AddNumberRefreshTalent(self.heroInventoryId, self.slotId)
					self.listId = listId
					self:HideListTalent()
					self:ShowListTalent()
				end
				local onFailed = function(logicCode)
					SmartPoolUtils.LogicCodeNotification(logicCode)
				end
				NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
			end
			NetworkUtils.Request(OpCode.ITEM_TALENT_REFRESH, UnknownOutBound.CreateInstance(PutMethod.Long,
					self.heroInventoryId, PutMethod.Int, self.slotId), callback)
		end)
	end
end

--- @return void
function UISelectTalentView:Hide()
	UIBaseView.Hide(self)
	self:HideListTalent()
end

function UISelectTalentView:OnClickHelp()
    PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, LanguageUtils.LocalizeHelpInfo("talent_info"))
end