--- @class UIEventFullOfGiftConfig
UIEventFullOfGiftConfig = Class(UIEventFullOfGiftConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventFullOfGiftConfig:Ctor(transform)
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
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDropInfo = self.transform:Find("text_drop_info"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRewardPool = self.transform:Find("reward_pool_popup/reward_pool_header/text_reward_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollVertical = self.transform:Find("reward_pool_popup/scroll_vertical (1)"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
