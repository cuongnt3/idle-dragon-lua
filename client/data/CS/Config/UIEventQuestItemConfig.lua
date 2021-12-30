--- @class UIEventQuestItemConfig
UIEventQuestItemConfig = Class(UIEventQuestItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventQuestItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.bgQuestProgressBar2 = self.transform:Find("visual/bg_quest_progress_bar_slot/bg_quest_progress_bar_2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textProgress = self.transform:Find("visual/bg_quest_progress_bar_slot/text_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textQuestContent = self.transform:Find("visual/bg_quest_progress_bar_slot/text_quest_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.tick = self.transform:Find("visual/icon_stick_slot/tick").gameObject
	--- @type UnityEngine_UI_Button
	self.goButton = self.transform:Find("visual/go_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.bgQuestProgressBarFull = self.transform:Find("visual/bg_quest_progress_bar_slot/bg_quest_progress_bar_full").gameObject
	--- @type UnityEngine_UI_Text
	self.textQuestRecord = self.transform:Find("visual/bg_quest_progress_bar_slot/text_quest_record"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.itemAnchor = self.transform:Find("visual/item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.collectButton = self.transform:Find("visual/collect_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeCollect = self.transform:Find("visual/collect_button/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGo = self.transform:Find("visual/go_button/text_go"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
