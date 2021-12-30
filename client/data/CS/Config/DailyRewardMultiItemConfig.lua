--- @class DailyRewardMultiItemConfig
DailyRewardMultiItemConfig = Class(DailyRewardMultiItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DailyRewardMultiItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.bg = self.transform:Find("visual/bg_daily_checkin_card1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.bg2 = self.transform:Find("visual/bg_daily_checkin_card2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.light = self.transform:Find("visual/light").gameObject
	--- @type UnityEngine_UI_Text
	self.textDailyCheckinDay = self.transform:Find("visual/text_daily_checkin_day"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.itemRewardList = self.transform:Find("visual/item_reward_list"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("visual/item_reward_list"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.bgItemReward = self.transform:Find("visual/bg_item_reward"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.dailyCheckinTag2 = self.transform:Find("visual/daily_checkin_tag2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.dailyCheckinTag = self.transform:Find("visual/daily_checkin_tag"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
