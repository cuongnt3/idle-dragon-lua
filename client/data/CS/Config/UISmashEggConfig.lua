--- @class UISmashEggConfig
UISmashEggConfig = Class(UISmashEggConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISmashEggConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textContent = self.transform:Find("egg_content/text_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.buttonContent = self.transform:Find("button_content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.currencyBar = self.transform:Find("icon_background_smash_egg_event/currency_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.eggCombineButton = self.transform:Find("egg_combine_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEggCombine = self.transform:Find("egg_combine_button/text_egg_combine"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.iconRainbowEgg = self.transform:Find("egg_content/icon_rainbow_egg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconGoldEgg = self.transform:Find("egg_content/icon_gold_egg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconSilverEgg = self.transform:Find("egg_content/icon_silver_egg"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
