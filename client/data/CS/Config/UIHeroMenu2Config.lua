--- @class UIHeroMenu2Config
UIHeroMenu2Config = Class(UIHeroMenu2Config)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroMenu2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.tab = self.transform:Find("tab_system"):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonHero = self.transform:Find("button/button_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonArrowBack = self.transform:Find("button/back_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonArrowNext = self.transform:Find("button/next_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.statChange = self.transform:Find("button/stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTriggerHero = self.transform:Find("button/button_hero"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_UI_Text
	self.localizeStat1 = self.transform:Find("button/stat/hero_stat_change/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStat2 = self.transform:Find("button/stat/hero_stat_change (1)/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStat3 = self.transform:Find("button/stat/hero_stat_change (2)/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skinCollection = self.transform:Find("content/hero_info/skin_collection"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
