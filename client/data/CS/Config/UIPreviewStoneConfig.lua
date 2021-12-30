--- @class UIPreviewStoneConfig
UIPreviewStoneConfig = Class(UIPreviewStoneConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPreviewStoneConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textStone = self.transform:Find("text_item_type"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("text_item_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textInfo = self.transform:Find("text_basic_stats"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
