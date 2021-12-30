--- @class EventBigBundleItemConfig
EventBigBundleItemConfig = Class(EventBigBundleItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventBigBundleItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("bg/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("bg/button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.resAnchor = self.transform:Find("bg/res_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeBuy = self.transform:Find("bg/button_buy/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("rewards_daily/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.vipText = self.transform:Find("vip_point_view/vip_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.vipPointView = self.transform:Find("vip_point_view").gameObject
end
