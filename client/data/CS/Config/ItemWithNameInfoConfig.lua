--- @class ItemWithNameInfoConfig
ItemWithNameInfoConfig = Class(ItemWithNameInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ItemWithNameInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemAnchor = self.transform:Find("item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.itemTitle = self.transform:Find("item_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.itemDesc = self.transform:Find("item_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgHighlight = self.transform:Find("bg_highlight").gameObject
end
