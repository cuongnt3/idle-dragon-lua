--- @class UIDownloadAssetBundleConfig
UIDownloadAssetBundleConfig = Class(UIDownloadAssetBundleConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDownloadAssetBundleConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.bgNone = self.transform:Find("bg_none").gameObject
	--- @type UnityEngine_UI_Text
	self.textTitleContent = self.transform:Find("popup/text_title_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textContentDisconnect = self.transform:Find("popup/disconnect/text_content_disconnect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textContentConnect = self.transform:Find("popup/connect/text_content_connect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDownloading = self.transform:Find("popup/text_downloading"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.barPercent = self.transform:Find("popup/bar_percent"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.disconnect = self.transform:Find("popup/disconnect").gameObject
	--- @type UnityEngine_GameObject
	self.connect = self.transform:Find("popup/connect").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonRetry = self.transform:Find("popup/disconnect/button_retry"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSupport = self.transform:Find("popup/disconnect/button_support"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRetry = self.transform:Find("popup/disconnect/button_retry/text_retry"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSupport = self.transform:Find("popup/disconnect/button_support/text_support"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
