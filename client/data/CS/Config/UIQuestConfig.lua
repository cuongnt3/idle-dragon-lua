--- @class UIQuestConfig
UIQuestConfig = Class(UIQuestConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIQuestConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("popup/title_group/text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.questInfoTab = self.transform:Find("popup/quest_tree_layout").gameObject
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("popup/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("popup/scroll_quest_item"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.questScrollRect = self.transform:Find("popup/scroll_quest_item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Animation
	self.anim = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Animation)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.questTreeLayout = self.transform:Find("popup/quest_tree_layout"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.titleGroup = self.transform:Find("popup/title_group"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.achivementLayout = self.transform:Find("popup/achivement_layout"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
