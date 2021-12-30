--- @class UISmashPopupConfig
UISmashPopupConfig = Class(UISmashPopupConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISmashPopupConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.inputNumberView = self.transform:Find("popup/input"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBarInfo = self.transform:Find("popup/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSmash = self.transform:Find("popup/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeSmash = self.transform:Find("popup/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("popup/text_notice"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
