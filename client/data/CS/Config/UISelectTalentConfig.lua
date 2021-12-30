--- @class UISelectTalentConfig
UISelectTalentConfig = Class(UISelectTalentConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectTalentConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRefresh = self.transform:Find("popup/button_Refresh"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRefresh = self.transform:Find("popup/button_Refresh/text_refresh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("popup/button_Refresh/icon_wood/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconPrice = self.transform:Find("popup/button_Refresh/icon_wood"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textRefresh = self.transform:Find("popup/button_Refresh/text_refresh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("popup/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconCurrency = self.transform:Find("popup/currency/icon_currency"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textCurrencyValue = self.transform:Find("popup/currency/text_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
