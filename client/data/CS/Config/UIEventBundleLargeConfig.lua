--- @class UIEventBundleLargeConfig
UIEventBundleLargeConfig = Class(UIEventBundleLargeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventBundleLargeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBuy = self.transform:Find("text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("rewards_daily/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_GameObject
	self.vip = self.transform:Find("vip").gameObject
	--- @type UnityEngine_UI_Text
	self.vipValue = self.transform:Find("vip/vip_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
