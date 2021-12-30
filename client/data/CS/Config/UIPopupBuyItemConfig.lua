--- @class UIPopupBuyItemConfig
UIPopupBuyItemConfig = Class(UIPopupBuyItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupBuyItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textItem = self.transform:Find("popup/text_item"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/tittle/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPurchase = self.transform:Find("popup/button_buy/text_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.moneyBar = self.transform:Find("popup/root_money/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonPurchase = self.transform:Find("popup/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCloseLayer = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.inputNumber = self.transform:Find("popup/input_cart"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
