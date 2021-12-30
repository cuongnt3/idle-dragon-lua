--- @class UILimitedPackageItemConfig
UILimitedPackageItemConfig = Class(UILimitedPackageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILimitedPackageItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/price_box/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuyValue = self.transform:Find("button_buy/text_buy_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPackage = self.transform:Find("text_package"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgMonthlyTab = self.transform:Find("bg_monthly_tab").gameObject
	--- @type UnityEngine_UI_Text
	self.textVolume = self.transform:Find("bg_monthly_tab/text_reset_time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconGemSet = self.transform:Find("icon_gem_set"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.vipAnchor = self.transform:Find("vip_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemsAnchor = self.transform:Find("items_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textResetTime = self.transform:Find("bg_monthly_tab/text_reset_time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgMoreItems = self.transform:Find("bg_more_items").gameObject
	--- @type UnityEngine_UI_Text
	self.textMoreItems = self.transform:Find("bg_more_items/text_more_items"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonExpandMoreItem = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
