--- @class UIEasterBunnyCardLayoutConfig
UIEasterBunnyCardLayoutConfig = Class(UIEasterBunnyCardLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEasterBunnyCardLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("bg_text_glow/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("icon_bunny_content_holder/text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.cardCalculator = self.transform:Find("card_calculator"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLimit = self.transform:Find("text_limit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.vipPointView = self.transform:Find("button_buy/vip_point_view").gameObject
	--- @type UnityEngine_UI_Text
	self.vipText = self.transform:Find("button_buy/vip_point_view/vip_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
