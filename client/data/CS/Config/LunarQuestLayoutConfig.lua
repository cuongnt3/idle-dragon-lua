--- @class LunarQuestLayoutConfig
LunarQuestLayoutConfig = Class(LunarQuestLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LunarQuestLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("banner/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("banner/bg_event_desc/text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollQuest = self.transform:Find("scroll_quest"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
