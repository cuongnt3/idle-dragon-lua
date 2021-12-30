
--- @class UIDownloadAssetBundleModel : UIBaseModel
UIDownloadAssetBundleModel = Class(UIDownloadAssetBundleModel, UIBaseModel)

--- @return void
function UIDownloadAssetBundleModel:Ctor()
	UIBaseModel.Ctor(self, UIPopupName.UIDownloadAssetBundle, "popup_download_asset_bundle")
	--- @type UIPopupType
	self.type = UIPopupType.BLUR_POPUP
end

