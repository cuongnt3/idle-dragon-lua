--- @class DomainStageItemConfig
DomainStageItemConfig = Class(DomainStageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DomainStageItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.cleared = self.transform:Find("cleared").gameObject
	--- @type UnityEngine_GameObject
	self.lock = self.transform:Find("lock").gameObject
	--- @type UnityEngine_UI_Text
	self.textStage = self.transform:Find("stage/text_stage"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCleared = self.transform:Find("stage/text_cleared"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.cover = self.transform:Find("view/cover").gameObject
	--- @type UnityEngine_GameObject
	self.select = self.transform:Find("select").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
