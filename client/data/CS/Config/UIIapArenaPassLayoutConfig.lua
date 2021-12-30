--- @class UIIapArenaPassLayoutConfig
UIIapArenaPassLayoutConfig = Class(UIIapArenaPassLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapArenaPassLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonUnlock = self.transform:Find("banner/button_unlock"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.buttonActive = self.transform:Find("banner/button_active").gameObject
	--- @type UnityEngine_UI_Text
	self.textActive = self.transform:Find("banner/button_active/text_active"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUnlock = self.transform:Find("banner/button_unlock/text_unlock"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.growthPatchLine = self.transform:Find("growth_patch_line"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textDailyPoint = self.transform:Find("bg_arena_daily_point_holder/text_daily_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textFreeReward = self.transform:Find("free_reward_header/text_free_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPremiumReward = self.transform:Find("premium_reward_header/text_premium_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUnlock = self.transform:Find("banner/button_unlock/text_unlock"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("banner/button_unlock/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("banner/bg_timer/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("banner/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconLockPremium = self.transform:Find("premium_reward_header/icon_lock_premium_reward").gameObject
end
