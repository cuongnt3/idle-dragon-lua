--- @class UIIapShopRawPackLayoutConfig
UIIapShopRawPackLayoutConfig = Class(UIIapShopRawPackLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapShopRawPackLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.bannerTittle = self.transform:Find("banner/banner_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
