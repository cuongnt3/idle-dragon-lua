--- @class ButtonBuyConfig
ButtonBuyConfig = Class(ButtonBuyConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ButtonBuyConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.imageBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("button_buy/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.bgFog = self.transform:Find("button_buy/bg_fog").gameObject
	--- @type UnityEngine_UI_Text
	self.textStock = self.transform:Find("text_stock"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
