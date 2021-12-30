--- @class UIQuestTreeNodeItemConfig
UIQuestTreeNodeItemConfig = Class(UIQuestTreeNodeItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIQuestTreeNodeItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.text = self.transform:Find("text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.noti = self.transform:Find("noti").gameObject
	--- @type UnityEngine_UI_Text
	self.questName = self.transform:Find("quest_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.questIcon = self.transform:Find("quest_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.lockMark = self.transform:Find("lock_mark").gameObject
	--- @type UnityEngine_GameObject
	self.completeMark = self.transform:Find("complete_mark").gameObject
end
