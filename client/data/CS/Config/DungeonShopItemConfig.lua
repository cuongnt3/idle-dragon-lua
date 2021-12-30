--- @class DungeonShopItemConfig
DungeonShopItemConfig = Class(DungeonShopItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DungeonShopItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.icon = self.transform:Find("visual/icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.button = self.transform:Find("visual/button"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textItemName = self.transform:Find("visual/text_item_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textItemType = self.transform:Find("visual/text_item_type"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
