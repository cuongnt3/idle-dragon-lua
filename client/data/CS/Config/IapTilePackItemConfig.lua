--- @class IapTilePackItemConfig
IapTilePackItemConfig = Class(IapTilePackItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function IapTilePackItemConfig:Ctor(transform)
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
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.bg = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.notification = self.transform:Find("notification").gameObject
	--- @type UnityEngine_GameObject
	self.bonus1stPurchase = self.transform:Find("bonus_1st_purchase").gameObject
	--- @type UnityEngine_UI_Text
	self.text1stPurchase = self.transform:Find("bonus_1st_purchase/text_1st_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBonus = self.transform:Find("bonus_1st_purchase/text_bonus"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgButton = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
