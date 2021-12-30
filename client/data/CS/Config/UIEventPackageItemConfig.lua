--- @class UIEventPackageItemConfig
UIEventPackageItemConfig = Class(UIEventPackageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventPackageItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.resAnchor = self.transform:Find("visual/res_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("visual/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textVipPoint = self.transform:Find("visual/text_vip_point/text_vip_point_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLimited = self.transform:Find("visual/button_buy/text_limited"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconVipPoint = self.transform:Find("visual/text_vip_point/icon_vip_point"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("visual/button_buy/bg_currency_value_slot_1/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeVipPoint = self.transform:Find("visual/text_vip_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
