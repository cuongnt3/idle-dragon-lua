--- @class UIAchievementLayoutConfig
UIAchievementLayoutConfig = Class(UIAchievementLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIAchievementLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.tabAchievement = self.transform:Find("tab_achievement"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTab1Name = self.transform:Find("tab_achievement/tab1/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab2Name = self.transform:Find("tab_achievement/tab2/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab3Name = self.transform:Find("tab_achievement/tab3/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab4Name = self.transform:Find("tab_achievement/tab4/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTab5Name = self.transform:Find("tab_achievement/tab5/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyTab1 = self.transform:Find("tab_achievement/tab1/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab2 = self.transform:Find("tab_achievement/tab2/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab3 = self.transform:Find("tab_achievement/tab3/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab4 = self.transform:Find("tab_achievement/tab4/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyTab5 = self.transform:Find("tab_achievement/tab5/notify").gameObject
end
