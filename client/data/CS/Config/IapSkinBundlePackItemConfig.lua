--- @class IapSkinBundlePackItemConfig
IapSkinBundlePackItemConfig = Class(IapSkinBundlePackItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function IapSkinBundlePackItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.packIcon = self.transform:Find("pack_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPurchaseLimit = self.transform:Find("text_purchase_limit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("glow/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.vip = self.transform:Find("vip").gameObject
	--- @type UnityEngine_UI_Text
	self.textVip = self.transform:Find("vip/text_vip"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
