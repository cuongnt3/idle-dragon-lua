--- @class UIPopupExchangeConfig
UIPopupExchangeConfig = Class(UIPopupExchangeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupExchangeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonExchange = self.transform:Find("popup/button_exchange"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitleReward = self.transform:Find("popup/text_title_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRequirement = self.transform:Find("popup/requirement_title/text_requirement"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeExchange = self.transform:Find("popup/button_exchange/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNotEnough = self.transform:Find("popup/not_enough/text_not_enough"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.itemReward = self.transform:Find("popup/item_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemRequirement = self.transform:Find("popup/item_requirement"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notEnough = self.transform:Find("popup/not_enough").gameObject
end
