--- @class PopupGrowthConfig
PopupGrowthConfig = Class(PopupGrowthConfig)

--- @return void
--- @param transform UnityEngine_Transform
function PopupGrowthConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonUnlock = self.transform:Find("button_unlock"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.buttonActive = self.transform:Find("activated").gameObject
	--- @type UnityEngine_UI_Text
	self.textCurrentLevel = self.transform:Find("current_level/text_current_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_unlock/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUnlock = self.transform:Find("button_unlock/text_unlock"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActive = self.transform:Find("activated/text_active"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
