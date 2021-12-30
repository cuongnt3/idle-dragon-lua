--- @class UIVictoryXmasLayoutConfig
UIVictoryXmasLayoutConfig = Class(UIVictoryXmasLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryXmasLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRecord = self.transform:Find("text_record"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.xmasDamageView = self.transform:Find("xmas_damage_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textChestCount = self.transform:Find("text_chest_count"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollView = self.transform:Find("scroll_reward"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
