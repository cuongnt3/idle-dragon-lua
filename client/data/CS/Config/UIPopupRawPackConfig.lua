--- @class UIPopupRawPackConfig
UIPopupRawPackConfig = Class(UIPopupRawPackConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupRawPackConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.tittleFlashSale = self.transform:Find("popup/glow_flash_sale/tittle_flash_sale"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.popup = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scroll = self.transform:Find("popup/scroll_view_raw"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_GameObject
	self.left = self.transform:Find("popup/left").gameObject
	--- @type UnityEngine_GameObject
	self.right = self.transform:Find("popup/right").gameObject
end
