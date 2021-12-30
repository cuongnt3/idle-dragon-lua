--- @class UIQuestTreeLayoutConfig
UIQuestTreeLayoutConfig = Class(UIQuestTreeLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIQuestTreeLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.tabQuestTree = self.transform:Find("tab_quest_tree"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTab1Name = self.transform:Find("tab_quest_tree/tab1/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab2Name = self.transform:Find("tab_quest_tree/tab1 (1)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab3Name = self.transform:Find("tab_quest_tree/tab1 (2)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("scroll_tree/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textProgress = self.transform:Find("text_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.progressBar = self.transform:Find("progress/progress_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.notiQuestTreeGroup1 = self.transform:Find("tab_quest_tree/tab1/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notiQuestTreeGroup2 = self.transform:Find("tab_quest_tree/tab1 (1)/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notiQuestTreeGroup3 = self.transform:Find("tab_quest_tree/tab1 (2)/notify").gameObject
end
