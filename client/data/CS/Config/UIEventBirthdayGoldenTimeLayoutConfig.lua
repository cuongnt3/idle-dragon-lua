--- @class UIEventBirthdayGoldenTimeLayoutConfig
UIEventBirthdayGoldenTimeLayoutConfig = Class(UIEventBirthdayGoldenTimeLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventBirthdayGoldenTimeLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("bg_block_duration_time_holder/text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDropTime = self.transform:Find("text_drop_time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonGo = self.transform:Find("button_go"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDropInfo = self.transform:Find("text_drop_info"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
