--- @class UILunarPathDiceConfig
UILunarPathDiceConfig = Class(UILunarPathDiceConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILunarPathDiceConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("bg_event_desc/text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonRoll = self.transform:Find("roll_dice_button/button_roll"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRoll = self.transform:Find("roll_dice_button/button_roll/text_roll"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRollPrice = self.transform:Find("roll_dice_button/button_roll/bg_currency_value_slot/text_roll_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCurrencyValue = self.transform:Find("roll_dice_button/bg_currency_value/text_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
