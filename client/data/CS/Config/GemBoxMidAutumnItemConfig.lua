--- @class GemBoxMidAutumnItemConfig
GemBoxMidAutumnItemConfig = Class(GemBoxMidAutumnItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GemBoxMidAutumnItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textValue = self.transform:Find("exchange_button/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuy = self.transform:Find("exchange_button/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLimit = self.transform:Find("text_no_limit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.exchangeButton = self.transform:Find("exchange_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
