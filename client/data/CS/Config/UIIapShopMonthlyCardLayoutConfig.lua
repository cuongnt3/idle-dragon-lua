--- @class UIIapShopMonthlyCardLayoutConfig
UIIapShopMonthlyCardLayoutConfig = Class(UIIapShopMonthlyCardLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapShopMonthlyCardLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textHotDeal = self.transform:Find("4/hot/text_hot_deal"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
