--- @class UIButtonStageConfig
UIButtonStageConfig = Class(UIButtonStageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIButtonStageConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.current = self.transform:Find("button_level_2_idle").gameObject
	--- @type UnityEngine_GameObject
	self.lock = self.transform:Find("button_level_chua_unlock_den").gameObject
	--- @type UnityEngine_UI_Text
	self.text = self.transform:Find("Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.stageNew = self.transform:Find("max_stage_new").gameObject
	--- @type UnityEngine_GameObject
	self.hero = self.transform:Find("hero").gameObject
	--- @type UnityEngine_RectTransform
	self.heroIcon = self.transform:Find("hero/Image/heroIcon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textClear = self.transform:Find("text_clear"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgBoss = self.transform:Find("bg_boss").gameObject
	--- @type UnityEngine_RectTransform
	self.effectNewStage = self.transform:Find("effect_new_stage"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
