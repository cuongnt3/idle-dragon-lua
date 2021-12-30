--- @class UIEventNewHeroTreasureLayoutConfig
UIEventNewHeroTreasureLayoutConfig = Class(UIEventNewHeroTreasureLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventNewHeroTreasureLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("bg_banner_elune_journey/header/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.map = self.transform:Find("bg_banner_elune_journey/map"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.complete = self.transform:Find("bg_banner_elune_journey/map/finish"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("bg_banner_elune_journey/money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textStart = self.transform:Find("bg_banner_elune_journey/map/start/Image/text_start"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGoal = self.transform:Find("bg_banner_elune_journey/map/finish/bg_goal_holder/text_goal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("bg_banner_elune_journey/header/icon_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconSelect = self.transform:Find("bg_banner_elune_journey/icon_select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.elune = self.transform:Find("bg_banner_elune_journey/map/elune_pet"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgHolderStart = self.transform:Find("bg_banner_elune_journey/map/start"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.elunePet = self.transform:Find("bg_banner_elune_journey/map/elune_pet"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.finish = self.transform:Find("bg_banner_elune_journey/map/finish"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgListReward = self.transform:Find("bg_banner_elune_journey/icon_select/item_reward/bg_list_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
