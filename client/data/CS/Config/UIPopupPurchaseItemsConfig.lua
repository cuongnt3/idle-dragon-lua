--- @class UIPopupPurchaseItemsConfig
UIPopupPurchaseItemsConfig = Class(UIPopupPurchaseItemsConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupPurchaseItemsConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("popup/pannel_frame/detail/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textIconDesc = self.transform:Find("popup/pannel_frame/detail/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textIconTitle = self.transform:Find("popup/pannel_frame/detail/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollView = self.transform:Find("popup/VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("popup/button_buy/price_box/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuyValue = self.transform:Find("popup/button_buy/text_buy_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("popup/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
