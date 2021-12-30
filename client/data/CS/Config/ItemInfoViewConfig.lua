--- @class ItemInfoViewConfig
ItemInfoViewConfig = Class(ItemInfoViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ItemInfoViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemIconAnchor = self.transform:Find("item_icon_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.info = self.transform:Find("info"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
