--- @class UIGrowthMilestoneItemConfig
UIGrowthMilestoneItemConfig = Class(UIGrowthMilestoneItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGrowthMilestoneItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.basicAnchor = self.transform:Find("basic_reward/basic_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.premiumAnchor = self.transform:Find("premium_reward/premium_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("bg_level/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClaimBasic = self.transform:Find("basic_reward"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClaimPremium = self.transform:Find("premium_reward"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.glowClaimBasic = self.transform:Find("basic_reward/glow_claim_basic").gameObject
	--- @type UnityEngine_GameObject
	self.glowClaimPremium = self.transform:Find("premium_reward/glow_claim_premium").gameObject
	--- @type UnityEngine_GameObject
	self.lockPremium = self.transform:Find("premium_reward/lock").gameObject
	--- @type UnityEngine_GameObject
	self.coverBasic = self.transform:Find("basic_reward/cover_basic").gameObject
	--- @type UnityEngine_GameObject
	self.coverPremium = self.transform:Find("premium_reward/cover_premium").gameObject
	--- @type UnityEngine_UI_Text
	self.textBasicState = self.transform:Find("basic_reward/glow_claim_basic/text_basic_state"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPremiumState = self.transform:Find("premium_reward/glow_claim_premium/text_premium_state"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
