
---COMMENT_CONFIG_HOME    require "lua.client.scene.ui.home.uiSelectItemInventory.UISelectItemInventoryConfig"

--- @class UISelectItemInventoryView : UIBaseView
UISelectItemInventoryView = Class(UISelectItemInventoryView, UIBaseView)

--- @return void
--- @param model UIInventoryModel
--- @param ctrl UIInventoryCtrl
function UISelectItemInventoryView:Ctor(model, ctrl)
	---@type UIInventoryConfig
	self.config = nil
	--- @type UILoopScroll
	self.uiScroll = nil
	--- @type table
	self.funcShow = {}
	--- @type ResourceType
	self.type = nil
	--- @type number
	self.slot = nil
	--- @type number
	self.replaceId = nil
	--- @type function
	self.callbackSelectItem = nil

	UIBaseView.Ctor(self, model, ctrl)
	--- @type UIInventoryModel
	self.model = self.model
	--- @type UIInventoryCtrl
	self.ctrl = self.ctrl
	--- @type number
	self.replaceId = nil
end

--- @return void
function UISelectItemInventoryView:OnReadyCreate()
	---@type UISelectItemInventoryConfig
	self.config = UIBaseConfig(self.uiTransform)
	self.config.buttonClose.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
	self.config.bgClose.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)

	--- @param obj ItemIconView
	--- @param index number
	local onCreateItem = function(obj, index)
		local id = self.model.itemSort:Get(index + 1)
		local number = InventoryUtils.Get(self.type, id)
		obj:SetIconData(ItemIconData.CreateInstance(self.type, id, number))
		obj:RemoveAllListeners()
		obj:AddListener(function ()
			if self.callbackSelectItem ~= nil then
				self.callbackSelectItem(id)
			end
		end)
	end
	self.uiScroll = UILoopScroll(self.config.scroll, UIPoolType.ItemIconView, onCreateItem, onCreateItem)

	--- function show
	self.funcShow[SlotEquipmentType.Weapon] = function()
		self:ShowListEquipment(EquipmentType.Weapon)
	end
	self.funcShow[SlotEquipmentType.Armor] = function()
		self:ShowListEquipment(EquipmentType.Armor)
	end
	self.funcShow[SlotEquipmentType.Helm] = function()
		self:ShowListEquipment(EquipmentType.Helm)
	end
	self.funcShow[SlotEquipmentType.Accessory] = function()
		self:ShowListEquipment(EquipmentType.Accessory)
	end
	self.funcShow[SlotEquipmentType.Artifact] = function()
		self:ShowListArtifact()
	end
end

--- @return void
function UISelectItemInventoryView:InitLocalization()
	self.config.textTitle.text = LanguageUtils.LocalizeCommon("select_item")
end

function UISelectItemInventoryView:OnReadyShow(result)
	self:Init(result)
end

--- @return void
--- @param result EquipmentType
function UISelectItemInventoryView:Init(result)
	self.type = result.type
	self.slot = result.slot
	self.callbackSelectItem = result.callbackSelectItem
	self.funcShow[self.slot]()
	self.replaceId = result.replaceId
end

--- @return void
function UISelectItemInventoryView:ShowListEquipment(equipmentType)
	self.model.itemSort = InventoryUtils.GetEquipment(equipmentType, 1)
	self.uiScroll:Resize(self.model.itemSort:Count())
end

--- @return void
function UISelectItemInventoryView:ShowListArtifact()
	self.model.itemSort = InventoryUtils.GetArtifact(1)
	self.uiScroll:Resize(self.model.itemSort:Count())
end

