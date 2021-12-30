--- @class UIMiniQuestTreeConfig
UIMiniQuestTreeConfig = Class(UIMiniQuestTreeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMiniQuestTreeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.questContent = self.transform:Find("popup/quest_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("popup/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonGo = self.transform:Find("popup/group_button/button_go"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeGo = self.transform:Find("popup/group_button/button_go/text_go"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeClose = self.transform:Find("popup/group_button/button_close/text_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.miniPanel = self.transform:Find("popup/mini_panel").gameObject
	--- @type UnityEngine_UI_Text
	self.miniContent = self.transform:Find("popup/mini_panel/mini_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgQuestProgressBar = self.transform:Find("popup/progress_bar/bg_quest_progress_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.bgQuestProgressBarFull = self.transform:Find("popup/progress_bar/bg_quest_progress_bar_full").gameObject
	--- @type UnityEngine_UI_Text
	self.textProgress = self.transform:Find("popup/progress_bar/text_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/group_button/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("popup/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonComplete = self.transform:Find("popup/group_button/button_complete"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeComplete = self.transform:Find("popup/group_button/button_complete/text_complete"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonExpand = self.transform:Find("expand"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.popup = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
