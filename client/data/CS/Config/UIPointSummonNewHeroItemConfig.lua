--- @class UIPointSummonNewHeroItemConfig
UIPointSummonNewHeroItemConfig = Class(UIPointSummonNewHeroItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPointSummonNewHeroItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textProgressBarValue = self.transform:Find("text_progress_bar_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("bg_list_reward/bg"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
