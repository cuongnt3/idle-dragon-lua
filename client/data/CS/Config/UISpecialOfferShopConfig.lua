--- @class UISpecialOfferShopConfig
UISpecialOfferShopConfig = Class(UISpecialOfferShopConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISpecialOfferShopConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.contentShopTab = self.transform:Find("popup/scroll_tab/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.masterBlacksmithView = self.transform:Find("popup/master_blacksmith_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
