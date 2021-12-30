--- @class UIButtonSmashEggConfig
UIButtonSmashEggConfig = Class(UIButtonSmashEggConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIButtonSmashEggConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonGreen = self.transform:Find("button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNumber = self.transform:Find("text_number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCurrency = self.transform:Find("text_number/icon_currency_rainbow_hammer_drop_shadow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textButton = self.transform:Find("button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
