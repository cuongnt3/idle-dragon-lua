--- @class UIFirstPurchaseConfig
UIFirstPurchaseConfig = Class(UIFirstPurchaseConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFirstPurchaseConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.duration = self.transform:Find("popup/icon_first_purchase_backgroud/bg_text_glow/duration"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("popup/icon_first_purchase_backgroud/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.listItemAnchor = self.transform:Find("popup/icon_first_purchase_backgroud/bg_forcus_item/item_table_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("popup/icon_first_purchase_backgroud/button_buy/textPrice"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.profitValue = self.transform:Find("popup/icon_first_purchase_backgroud/profit_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.popup = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("popup/icon_first_purchase_backgroud/bg_text_glow/text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
