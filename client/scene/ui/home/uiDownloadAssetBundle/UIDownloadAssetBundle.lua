require "lua.client.scene.ui.home.uiDownloadAssetBundle.UIDownloadAssetBundleModel"
require "lua.client.scene.ui.home.uiDownloadAssetBundle.UIDownloadAssetBundleView"

--- @class UIDownloadAssetBundle : UIBase
UIDownloadAssetBundle = Class(UIDownloadAssetBundle, UIBase)

--- @return void
function UIDownloadAssetBundle:Ctor()
	UIBase.Ctor(self)
end

--- @return void
function UIDownloadAssetBundle:OnCreate()
	UIBase.OnCreate(self)
	self.model = UIDownloadAssetBundleModel()
	self.view = UIDownloadAssetBundleView(self.model)
end

return UIDownloadAssetBundle
