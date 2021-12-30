--- @class ExchangeMultiItemConfig
ExchangeMultiItemConfig = Class(ExchangeMultiItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ExchangeMultiItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.exchangeButton = self.transform:Find("exchange_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconItemExchangeRequirement = self.transform:Find("icon_item_exchange_requirement"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textExchange = self.transform:Find("exchange_button/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLimit = self.transform:Find("text_no_limit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMask = self.transform:Find("mask/textMask"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
