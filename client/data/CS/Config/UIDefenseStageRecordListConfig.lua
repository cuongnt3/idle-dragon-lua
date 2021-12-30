--- @class UIDefenseStageRecordListConfig
UIDefenseStageRecordListConfig = Class(UIDefenseStageRecordListConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefenseStageRecordListConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollRecord = self.transform:Find("popup/scroll_record"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTittle = self.transform:Find("popup/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
end
