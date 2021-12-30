--- @class UISkinPreviewConfig
UISkinPreviewConfig = Class(UISkinPreviewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISkinPreviewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.view1 = self.transform:Find("popup/bg_filter_pannel"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_RawImage
	self.rawImage = self.transform:Find("popup/RawImage"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("popup/Image/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBuy = self.transform:Find("popup/Image/button_buy/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("popup/Image/button_buy/bg_currency/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
