--- @class UIDungeonShopConfig
UIDungeonShopConfig = Class(UIDungeonShopConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonShopConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("popup/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.resAnchor = self.transform:Find("popup/res_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_fog"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSkip = self.transform:Find("popup/button_skip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBuy = self.transform:Find("popup/button_buy/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSkip = self.transform:Find("popup/button_skip/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("popup/money_bar_info/bg_money/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textMoney = self.transform:Find("popup/money_bar_info/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
