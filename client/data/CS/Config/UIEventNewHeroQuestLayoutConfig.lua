--- @class UIEventNewHeroQuestLayoutConfig
UIEventNewHeroQuestLayoutConfig = Class(UIEventNewHeroQuestLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventNewHeroQuestLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollQuest = self.transform:Find("scroll_quest"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("bg_banner/text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("bg_banner/bg_desc/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgBanner = self.transform:Find("bg_banner"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
