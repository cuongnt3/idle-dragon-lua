--- @class UIRawPackageItemConfig
UIRawPackageItemConfig = Class(UIRawPackageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRawPackageItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/price_box/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPackage = self.transform:Find("text_package"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.resAnchor = self.transform:Find("res_vip_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconGemSet = self.transform:Find("icon_gem_set"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.resVipAnchor = self.transform:Find("res_vip_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textInstantReward = self.transform:Find("text_instant_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBonus = self.transform:Find("1st_purchase/text_bonus"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconFirstPurchase = self.transform:Find("1st_purchase").gameObject
	--- @type UnityEngine_UI_Text
	self.textBuyValue = self.transform:Find("button_buy/text_buy_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
