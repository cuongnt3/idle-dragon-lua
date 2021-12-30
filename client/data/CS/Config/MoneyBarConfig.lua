--- @class MoneyBarConfig
MoneyBarConfig = Class(MoneyBarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function MoneyBarConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("bg_money/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textMoney = self.transform:Find("text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonMoney = self.transform:Find("bg_money/button_money"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.bgMoney = self.transform:Find("bg_money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("bg_money/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
