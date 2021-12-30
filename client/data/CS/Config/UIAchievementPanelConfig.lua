--- @class UIAchievementPanelConfig
UIAchievementPanelConfig = Class(UIAchievementPanelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIAchievementPanelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollQuest = self.transform:Find("popup/scroll_quest"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notifyTab1 = self.transform:Find("popup/tab/tab1/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab2 = self.transform:Find("popup/tab/tab2/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab3 = self.transform:Find("popup/tab/tab3/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab4 = self.transform:Find("popup/tab/tab4/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab5 = self.transform:Find("popup/tab/tab5/icon_dots").gameObject
	--- @type UnityEngine_UI_Text
	self.tittleGroup1 = self.transform:Find("popup/tab/tab1/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittleGroup2 = self.transform:Find("popup/tab/tab2/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittleGroup3 = self.transform:Find("popup/tab/tab3/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittleGroup4 = self.transform:Find("popup/tab/tab4/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittleGroup5 = self.transform:Find("popup/tab/tab5/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("popup/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
