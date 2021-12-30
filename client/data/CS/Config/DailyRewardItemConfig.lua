--- @class DailyRewardItemConfig
DailyRewardItemConfig = Class(DailyRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DailyRewardItemConfig:Ctor(transform)
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
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("visual/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("visual/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDailyCheckinDay = self.transform:Find("visual/text_daily_checkin_day"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
