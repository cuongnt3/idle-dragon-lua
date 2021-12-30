--- @class UIEventMidAutumnDailyLoginConfig
UIEventMidAutumnDailyLoginConfig = Class(UIEventMidAutumnDailyLoginConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventMidAutumnDailyLoginConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.eventTittle = self.transform:Find("text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tile6Days = self.transform:Find("panel_week/tile_6_days"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.tileDay7 = self.transform:Find("panel_week/daily_multi_reward_item (9)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.txtProgress = self.transform:Find("panel_week/txt_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("panel_week/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeClaim = self.transform:Find("panel_week/button_claim/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("panel_week/button_claim/notify").gameObject
	--- @type UnityEngine_GameObject
	self.buttonDisable = self.transform:Find("panel_week/button_claim/cover").gameObject
end
