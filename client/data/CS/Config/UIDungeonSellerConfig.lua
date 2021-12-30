--- @class UIDungeonSellerConfig
UIDungeonSellerConfig = Class(UIDungeonSellerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonSellerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBuyPrimary = self.transform:Find("popup/content/merchant/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBuyMedium = self.transform:Find("popup/content/merchant (1)/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBuySenior = self.transform:Find("popup/content/merchant (2)/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePrimary = self.transform:Find("popup/content/merchant/text_merchant"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMedium = self.transform:Find("popup/content/merchant (1)/text_merchant"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSenior = self.transform:Find("popup/content/merchant (2)/text_merchant"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBuy1 = self.transform:Find("popup/content/merchant/bg_button_green/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBuy2 = self.transform:Find("popup/content/merchant (1)/bg_button_green/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBuy3 = self.transform:Find("popup/content/merchant (2)/bg_button_green/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
