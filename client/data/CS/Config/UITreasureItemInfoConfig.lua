--- @class UITreasureItemInfoConfig
UITreasureItemInfoConfig = Class(UITreasureItemInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITreasureItemInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textItemExchange = self.transform:Find("text_item_exchange"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
