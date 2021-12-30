--- @class UIInputConfig
UIInputConfig = Class(UIInputConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIInputConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textDiamond = self.transform:Find("InputField/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSub = self.transform:Find("button_sub"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAdd = self.transform:Find("button_add"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("button_back"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonNext = self.transform:Find("button_next"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_InputField
	self.inputNumber = self.transform:Find("InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
end
