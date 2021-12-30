--- @class UIFriendListConfig
UIFriendListConfig = Class(UIFriendListConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFriendListConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.moneyFriendPoint = self.transform:Find("currency_upgrade/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyStamina = self.transform:Find("currency_upgrade/money_bar_info_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("claim_and_send_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.localizeClaimAndSend = self.transform:Find("claim_and_send_button/bg_button_green/text_claim_and_send"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
