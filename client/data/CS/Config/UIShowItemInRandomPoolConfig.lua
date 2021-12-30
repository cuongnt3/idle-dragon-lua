--- @class UIShowItemInRandomPoolConfig
UIShowItemInRandomPoolConfig = Class(UIShowItemInRandomPoolConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIShowItemInRandomPoolConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.scrollView = self.transform:Find("popup/scroll_view").gameObject
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/scroll_view/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textItemPool = self.transform:Find("popup/text_item_pool"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
