--- @class UINewHeroSummonMaineConfig
UINewHeroSummonMaineConfig = Class(UINewHeroSummonMaineConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewHeroSummonMaineConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textSummonReward = self.transform:Find("summon_collect_bar/bg_list_reward/text_summon_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.point = self.transform:Find("summon_collect_bar/point"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.progressSummonNewHero = self.transform:Find("summon_collect_bar/summon_collect_bar/bg_summon_collect_bar_2_demo"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textNewHeroSummonPoint = self.transform:Find("summon_collect_bar/bg_list_reward/text_new_hero_summon_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
