--- @class UIDefeatDefenseRecordLayoutConfig
UIDefeatDefenseRecordLayoutConfig = Class(UIDefeatDefenseRecordLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefeatDefenseRecordLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonNext = self.transform:Find("button_next_record"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNext = self.transform:Find("button_next_record/text_next"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
