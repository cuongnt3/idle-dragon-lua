--- @class UIPopupUnbindingRaiseLevelConfig
UIPopupUnbindingRaiseLevelConfig = Class(UIPopupUnbindingRaiseLevelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupUnbindingRaiseLevelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.congratulationText = self.transform:Find("popup/congraduation_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.confirmButton = self.transform:Find("popup/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.closeButton = self.transform:Find("popup/button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.describeText1 = self.transform:Find("popup/describe_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.priceText = self.transform:Find("popup/describe_text/price_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCurrency = self.transform:Find("popup/describe_text/price_text/icon_currency"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.describeText2 = self.transform:Find("popup/describe_text (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGreen = self.transform:Find("popup/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCancel = self.transform:Find("popup/button_red/text_cancel"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
