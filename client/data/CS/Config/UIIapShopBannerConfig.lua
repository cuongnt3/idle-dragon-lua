--- @class UIIapShopBannerConfig
UIIapShopBannerConfig = Class(UIIapShopBannerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapShopBannerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.bannerTittle = self.transform:Find("banner_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
