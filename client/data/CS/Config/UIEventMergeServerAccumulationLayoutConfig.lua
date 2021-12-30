--- @class UIEventMergeServerAccumulationLayoutConfig
UIEventMergeServerAccumulationLayoutConfig = Class(UIEventMergeServerAccumulationLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventMergeServerAccumulationLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollQuest = self.transform:Find("scroll_quest"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("bg_desc/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
