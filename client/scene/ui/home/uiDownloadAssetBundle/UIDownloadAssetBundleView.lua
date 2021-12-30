
--- @class UIDownloadAssetBundleView : UIBaseView
UIDownloadAssetBundleView = Class(UIDownloadAssetBundleView, UIBaseView)

--- @return void
--- @param model UIDownloadAssetBundleModel
function UIDownloadAssetBundleView:Ctor(model)
	--- @type Subject
	self.onDownloadAssetBundle = nil
	--- @type Subject
	self.onDisconnect = nil
	--- @type boolean
	self.state = true
	UIBaseView.Ctor(self, model)
	--- @type UIDownloadAssetBundleModel
	self.model = model
	--- @type boolean
	self.canCloseByBackButton = false
end

--- @return void
function UIDownloadAssetBundleView:OnReadyCreate()
	---@type UIDownloadAssetBundleConfig
	self.config = UIBaseConfig(self.uiTransform)

	self.barPercent = UIBarPercentView(self.config.barPercent)

	self:InitButtonListener()
end

function UIDownloadAssetBundleView:InitButtonListener()
	self.config.buttonRetry.onClick:AddListener(function ()
		self:SetButtonRetryState(false)
		bundleDownloader:DownloadAssetBundle()
	end)
	self.config.buttonSupport.onClick:AddListener(function ()
		PopupUtils.OpenFanpage()
	end)
end

--- @return void
function UIDownloadAssetBundleView:InitLocalization()
	self.config.textTitleContent.text = LanguageUtils.LocalizeCommon("download_asset_bundle")
	self.config.textRetry.text = LanguageUtils.LocalizeCommon("retry")
	self.config.textSupport.text = LanguageUtils.LocalizeCommon("support")
end

--- @return void
function UIDownloadAssetBundleView:OnReadyShow(result)
	self.downloadSize = bundleDownloader:GetTotalDownloadSize()
	self:Subscribe()
	self:UpdateConnectText()
	self:UpdateView(0, self.downloadSize)
end

function UIDownloadAssetBundleView:UpdateConnectText()
	self.config.textContentConnect.text = StringUtils.FormatLocalizeStart1(LanguageUtils.LocalizeCommon("warning_download_data"), self.downloadSize, "f1b02f")
end

function UIDownloadAssetBundleView:Subscribe()
	self.onDownloadAssetBundle = RxMgr.downloadAssetBundle:Subscribe(function(percent, totalMB)
		self:UpdateView(percent, totalMB)
	end)
	self.onDisconnect = RxMgr.disconnect:Subscribe(function(reason)
		if reason == DisconnectReason.CANT_DOWNLOAD_BUNDLE_ASSET then
			bundleDownloader:ResetDownloadState()
			self:SetButtonRetryState(true)
			self:SetState(false)
			self.config.textContentDisconnect.text = string.format("%s(%d)", LanguageUtils.LocalizeDisconnectReasonCode(99), reason)
		end
	end)
end

function UIDownloadAssetBundleView:SetButtonRetryState(isActive)
	self.config.buttonRetry.enabled = isActive
	UIUtils.SetActiveColor(self.config.buttonRetry.gameObject, isActive)
end

--- @param connected boolean
function UIDownloadAssetBundleView:SetState(connected)
	if self.state == connected then
		return
	end
	self.state = connected
	self.config.connect:SetActive(connected)
	self.config.disconnect:SetActive(not connected)
end

function UIDownloadAssetBundleView:UpdateView(percent, totalMB)
	self:SetState(true)
	self.barPercent:SetPercent(percent)
	if totalMB then
		self.config.textDownloading.text = string.format("Downloading %.2f/%.2f (MB)", percent * totalMB, totalMB)
	end
	if percent == 1 then
		self.onDownloadAssetBundle:Unsubscribe()
		SceneMgr.ResetToMainArea()
		if zg.networkMgr.isConnected == false then
			Coroutine.start(function()
				coroutine.waitforseconds(1)
				zg.networkMgr:ShowNotificationDisconnect(DisconnectReason.NO_NETWORK_CONNECTION)
			end)
		end
	end
end

