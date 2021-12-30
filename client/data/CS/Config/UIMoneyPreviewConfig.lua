--- @class UIMoneyPreviewConfig
UIMoneyPreviewConfig = Class(UIMoneyPreviewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMoneyPreviewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemRoot = self.transform:Find("bg_filter_pannel/top/item_root"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("bg_filter_pannel/top/text_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDescription = self.transform:Find("bg_filter_pannel/text_description"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
