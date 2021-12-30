--- @class UIIapShopLevelPassLayoutConfig
UIIapShopLevelPassLayoutConfig = Class(UIIapShopLevelPassLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapShopLevelPassLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.line1 = self.transform:Find("line_1"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.line2 = self.transform:Find("line_2"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("banner/icon_growth_pack_current_value/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonUnlock = self.transform:Find("banner/button_unlock"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.buttonActive = self.transform:Find("banner/button_active"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textUnlock = self.transform:Find("banner/button_unlock/text_unlock"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActive = self.transform:Find("banner/button_active/text_active"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("banner/button_unlock/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("banner/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSummonerLevel = self.transform:Find("banner/text_summoner_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textFreeReward = self.transform:Find("free_reward_header/free_header/text_free_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPremiumReward = self.transform:Find("premium_reward_header/premium_header/text_premium_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconLockPremiumReward = self.transform:Find("premium_reward_header/premium_header/icon_lock_premium_reward").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonClaimFree = self.transform:Find("free_reward_header/button_claim_free"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClaimPremium = self.transform:Find("premium_reward_header/button_claim_premium"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textClaimAllFree = self.transform:Find("free_reward_header/button_claim_free/text_claim_all_free"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textClaimAllPremium = self.transform:Find("premium_reward_header/button_claim_premium/text_claim_all_premium"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
