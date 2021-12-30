require("lua.client.core.main.AssetBundle.BundleDownloader")

local MAX_REQUEST = 5
local MAX_RETRY = 3
local ONE_MEGABYTE = 1024 * 1024
local SIZE_ASK_DOWNLOAD = 50 * ONE_MEGABYTE
local BUNDLE_FOLDER = LOWER_DEVICE and "etc2" or "astc"
local ASSET_BUNDLE_PATCH = "%s%s/%s/patch_%d/AssetBundles/%s/"

--- @class MobileBundleDownloader : BundleDownloader
MobileBundleDownloader = Class(MobileBundleDownloader, BundleDownloader)

--- @return void
function MobileBundleDownloader:Ctor()
    print("MobileBundleDownloader Ctor")
    BundleDownloader.Ctor(self)
    --- @type number
    self.totalBundleNeedDownload = 0
    --- @type number
    self.totalBundleInTutorial = 0
    --- @type number
    self.numberBundleComplete = 0
    --- @type number
    self.numberThreadDownload = 0
    --- @type number
    self.totalByteNeedDownload = 0
    --- @type number
    self.totalByteDownloadComplete = 0
    --- @type boolean
    self.isDownloading = false
    --- @type boolean
    self.isCompletedCheckManifest = false
    --- @type table
    self.needDownloadDict = nil
    --- @type table
    self.downloadingAssetBundleDict = nil
    --- @type table
    self.tutorialBundleDict = nil
    --- @type string
    self.bundleManifestString = nil
end

--- @return void
function MobileBundleDownloader:CheckDownload()
    if IS_IOS_PLATFORM and LOWER_DEVICE then
        PopupMgr.HidePopup(UIPopupName.UIPopupNotification)
        local data = {}
        data.notification = LanguageUtils.LocalizeCommon("device_not_support")
        data.alignment = U_TextAnchor.MiddleCenter
        data.canCloseByBackButton = false

        local buttonYes = {}
        buttonYes.text = LanguageUtils.LocalizeCommon("ok")
        buttonYes.callback = function()
            U_Application.Quit()
        end
        data.button2 = buttonYes
        PopupMgr.ShowPopup(UIPopupName.UIPopupNotification, data)
    else
        if self.isCompletedCheckManifest then
            self:DownloadAssetBundle()
        else
            self:_CheckDownloadAssetBundleConfigJson()
        end
    end
end

--- @return CS_BundleManifest
function MobileBundleDownloader:_GetClientBundleManifest()
    local bundleManifest = self:_GetLocalBundleManifest()
    if bundleManifest == nil then
        bundleManifest = self:_GetStreamingBundleManifest()
    end
    return bundleManifest
end

--- @return CS_BundleManifest
function MobileBundleDownloader:_GetLocalBundleManifest()
    local content = U_PlayerPrefs.GetString(PlayerPrefsKey.ASSET_BUNDLE_MANIFEST, "")
    if string.len(content) > 0 then
        --- @type CS_BundleManifest
        local manifest = json.decode(content)
        if VERSION_CLIENT_BUILD == U_PlayerPrefs.GetString(PlayerPrefsKey.ASSET_BUNDLE_MANIFEST_VERSION_BUILD, "") then
            self.bundleManifestString = content
            return manifest
        end
    end
    return nil
end

--- @return CS_BundleManifest
function MobileBundleDownloader:_GetStreamingBundleManifest()
    local path = "streaming_bundle_config.json"
    assert(U_BetterStreamingAssets.FileExists(path))
    local content = U_BetterStreamingAssets.ReadAllText(path)
    assert(content and string.len(content) > 0)
    return json.decode(content)
end

--- @return string
function MobileBundleDownloader:_GetAssetBundlePathByPatch(patch)
    --XDebug.Log(string.format("Path: %s\n%s\n%s\n%s\n%s\n%s", tostring(ASSET_BUNDLE_PATCH), tostring(NetConfig.googleStorage), tostring(PLATFORM_STRING),
    --tostring(VERSION), tostring(patch), BUNDLE_FOLDER))
    return string.format(ASSET_BUNDLE_PATCH, NetConfig.googleStorage, PLATFORM_STRING, VERSION, patch, BUNDLE_FOLDER)
end

--- @return string
--- @param assetBundleInfo CS_AssetBundleInfo
function MobileBundleDownloader:_GetAssetBundleUrl(assetBundleInfo)
    if assetBundleInfo.patch == nil then
        print("patch is nil: " .. assetBundleInfo.name)
    end
    return string.format("%s%s", self:_GetAssetBundlePathByPatch(assetBundleInfo.patch), assetBundleInfo.hash)
end

function MobileBundleDownloader:_LoadTutorialBundleInfoDict()
    if self.bundleInfoDict == nil then
        print("_LoadTutorialBundleInfoDict bundleInfoDict is nil")
        return
    end
    if self.tutorialBundleDict then
        print("_LoadTutorialBundleInfoDict tutorialBundleDict is not nil")
        return
    end
    local buildInBundlePath = "csv/client/full_tutorial_asset_config.json"
    local assetList = CsvReaderUtils.ReadAndParseLocalFile(buildInBundlePath, nil, true)
    self.tutorialBundleDict = {}
    local addBundleDependencies
    --- @param bundleInfo CS_AssetBundleInfo
    addBundleDependencies = function(bundleInfo)
        for _, bundleName in ipairs(bundleInfo.dependencies) do
            if self.tutorialBundleDict[bundleName] == nil then
                local tempBundleInfo = self:_GetBundleInfo(bundleName)
                self.tutorialBundleDict[bundleName] = tempBundleInfo
                addBundleDependencies(tempBundleInfo)
            end
        end
    end

    for _, assetPath in pairs(assetList) do
        --print("asset list: " .. assetPath)
        local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
        if self.tutorialBundleDict[bundleInfo.name] == nil then
            self.tutorialBundleDict[bundleInfo.name] = bundleInfo
            addBundleDependencies(bundleInfo)
        end
    end

    --for i, v in pairs(self.tutorialBundleDict) do
    --    print("tutorial bundle: " .. tostring(i) .. " =>" .. tostring(U_BetterStreamingAssets.FileExists(self:_GetFileStreamingBundlePath(v.hash))))
    --end
end

--- @return boolean
--- @param name string
function MobileBundleDownloader:_IsBundleInTutorial(name)
    return self.tutorialBundleDict and self.tutorialBundleDict[name]
end

--- @return number
--- @param byte number
function MobileBundleDownloader:_ConvertByteToMegaByte(byte)
    return MathUtils.RoundDecimal(byte / ONE_MEGABYTE, 2)
end

--- @return boolean
function MobileBundleDownloader:NeedDownloadInMain()
    return self.totalByteNeedDownload >= SIZE_ASK_DOWNLOAD
end

--- @return void
function MobileBundleDownloader:SaveManifest()
    assert(self.bundleManifestString)
    --- @type CS_BundleManifest
    local bundleManifest = json.decode(self.bundleManifestString)
    local manifest = {}
    manifest.bundles = bundleManifest.bundles
    manifest.version = VERSION
    manifest.patch = GOOGLE_SCRIPT.patch
    local content = json.encode(manifest)
    print("save manifest: " .. content)
    U_PlayerPrefs.SetString(PlayerPrefsKey.ASSET_BUNDLE_MANIFEST_VERSION_BUILD, VERSION_CLIENT_BUILD)
    U_PlayerPrefs.SetString(PlayerPrefsKey.ASSET_BUNDLE_MANIFEST, content)
end

--- @return void
function MobileBundleDownloader:OnDownloadSuccess()
    self.isDownloading = false
    self:SaveManifest()
    RxMgr.downloadAssetBundle:Next(1, self:_ConvertByteToMegaByte(self.totalByteNeedDownload))
end

function MobileBundleDownloader:ShowDisconnect(step, logicCode)
    TrackingUtils.AddFirebaseAssetDownloaded(step)
    PopupUtils.ShowPopupDisconnect(logicCode, function()
        self:CheckDownload()
    end)
end

function MobileBundleDownloader:_ResetDownloadInfo()
    --- data when parse manifest
    self.needDownloadDict = {}
    self.assetDict = {}
    self.totalBundleNeedDownload = 0
    self.totalByteNeedDownload = 0
    self.totalBundleInTutorial = 0
    --- data when start download
    self.numberThreadDownload = 0
    self.numberBundleComplete = 0
    self.totalByteDownloadComplete = 0
end

--- @param bundleInfo CS_AssetBundleInfo
function MobileBundleDownloader:_DownloadOneAssetBundle(bundleInfo, callbackSuccess, callbackFailed)
    local countRetry = 1
    local url = self:_GetAssetBundleUrl(bundleInfo)
    local onFailed
    local onSuccess

    onFailed = function(error)
        XDebug.Log(string.format("Download error %s __PATH: %s", bundleInfo.name, error))
        if countRetry == MAX_RETRY then
            callbackFailed(bundleInfo)
        else
            countRetry = countRetry + 1
            zgUnity.assetBundleMgr:Download(url, onSuccess, onFailed)
        end
    end

    onSuccess = function()
        callbackSuccess(bundleInfo)
    end

    zgUnity.assetBundleMgr:Download(url, onSuccess, onFailed)
end

function MobileBundleDownloader:UpdateNumberThread(delta)
    self.numberThreadDownload = self.numberThreadDownload + delta
end

function MobileBundleDownloader:IsNoneThreadRunning()
    return self.numberThreadDownload <= 0
end

function MobileBundleDownloader:IsMaxThreadRunning()
    return self.numberThreadDownload >= MAX_REQUEST
end

function MobileBundleDownloader:_CheckDownloadWay()
    if self:NeedDownloadInMain() and self.totalBundleInTutorial == 0 then
        RxMgr.downloadAssetBundle:Next(1, self:_ConvertByteToMegaByte(self.totalByteNeedDownload))
    else
        self:DownloadAssetBundle()
    end
end

function MobileBundleDownloader:CheckAvailableSpace()
    local availableSpace = U_GameUtils.CheckAvailableSpace()
    --print(string.format("available[%s], total[%s], busy[%s]", availableSpace, U_GameUtils.CheckTotalSpace(), U_GameUtils.CheckBusySpace()))
    local spaceNeed = self:_ConvertByteToMegaByte(self.totalByteNeedDownload) + 100
    if spaceNeed >= availableSpace then
        TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ShowPopupNotEnoughSpace)
        PopupUtils.ShowPopupNotificationOneButton(
                string.format(LanguageUtils.LocalizeCommon("not_enough_space_memory"), tostring(spaceNeed - availableSpace)),
                function()
                    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ClosePopupNotEnoughSpace)
                    self:CheckAvailableSpace()
                end, nil, false, 1, "retry", false)
    else
        self:_CheckDownloadWay()
    end
end

function MobileBundleDownloader:CheckRemoveOldFiles(bundles)
    local bundleHashDict = {}
    for i = 1, #bundles do
        --- @type CS_AssetBundleInfo
        local bundleInfo = bundles[i]
        bundleHashDict[bundleInfo.hash] = true
    end

    local files = zgUnity.assetBundleMgr:GetCurrentFiles()
    local len = files.Length
    local count = 0
    for i = 1, len do
        local path = files[i - 1]
        local fileName = string.sub(path, path:match '^.*()/' + 1)
        if bundleHashDict[fileName] ~= true then
            zgUnity.assetBundleMgr:DeleteFile(path)
            count = count + 1
        end
    end
end

--- @param bundleInfo CS_AssetBundleInfo
function MobileBundleDownloader:_CanDownloadAssetBundle(bundleInfo)
    local canDownloadFont = true
    local languageList = LanguageUtils.GetLanguageList()

    if string.lower(PlayerSettingData.language) ~= bundleInfo.name then
        --- @param v Language
        for _, v in ipairs(languageList:GetItems()) do
            if v.isSpecialFont and string.lower(v.keyLanguage) == bundleInfo.name then
                canDownloadFont = false
            end
        end
    else
        XDebug.Log("Add to download font")
    end

    return ((zgUnity.assetBundleMgr:Exists(self:_GetFileLocalDevicePath(bundleInfo.hash)) == false)
            and U_BetterStreamingAssets.FileExists(self:_GetFileStreamingBundlePath(bundleInfo.hash)) == false) and canDownloadFont
end

--- @param bundleInfo CS_AssetBundleInfo
function MobileBundleDownloader:_AddAssetBundleDownload(bundleInfo)
    self.needDownloadDict[bundleInfo.name] = bundleInfo
    self.totalBundleNeedDownload = self.totalBundleNeedDownload + 1
    self.totalByteNeedDownload = self.totalByteNeedDownload + bundleInfo.size

    if self:_IsBundleInTutorial(bundleInfo.name) then
        self.totalBundleInTutorial = self.totalBundleInTutorial + 1
    end
end

--- @return CS_BundleManifest
function MobileBundleDownloader:_ParseManifest(manifest)
    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.FinishDownloadBundleConfig)
    self:_ResetDownloadInfo()
    self:_SetBundleInfoDict(manifest)

    self.bundleManifest.bundles = manifest.bundles

    self:_LoadTutorialBundleInfoDict()

    for _, bundleInfo in pairs(self.bundleInfoDict) do
        if self:_CanDownloadAssetBundle(bundleInfo) then
            self:_AddAssetBundleDownload(bundleInfo)
        end
    end

    self.isCompletedCheckManifest = true
    if self.totalBundleNeedDownload > 0 then
        self:CheckRemoveOldFiles(manifest.bundles)
        self:CheckAvailableSpace()
    else
        self:OnDownloadSuccess()
    end
end

--- @return void
function MobileBundleDownloader:_DownloadAssetBundleConfigJson()
    local onSuccess = function(content)
        self.bundleManifestString = content
        self:_ParseManifest(json.decode(content))
    end
    local onFailed = function()
        TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ShowFailedAssetBundleManifest)
        self:ShowDisconnect(AssetDownloadedStep.ShowFailedAssetBundleManifest, DisconnectReason.CANT_DOWNLOAD_MANIFEST_ASSET)
    end
    local configPath = string.format("%s%s", self:_GetAssetBundlePathByPatch(GOOGLE_SCRIPT.patch), "asset_bundle_config.json")
    NetworkUtils.TryRequestData(MAX_RETRY, configPath, onSuccess, onFailed)
    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.StartDownloadBundleConfig)
end

--- @return void
function MobileBundleDownloader:_CheckDownloadAssetBundleConfigJson()
    if self.bundleManifest.patch ~= GOOGLE_SCRIPT.patch
            or self.bundleManifest.version ~= VERSION then
        self:_DownloadAssetBundleConfigJson()
    else
        RxMgr.downloadAssetBundle:Next(1)
    end
end

function MobileBundleDownloader:DownloadAssetBundle()
    if self.isDownloading then
        return
    end

    self.isDownloading = true
    TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.StartDownloadBundle)
    U_GameUtils.CheckFileAndCreateDirWhenNeeded(self.storableDirectory .. "created.data")
    self.downloadingAssetBundleDict = {}
    local download
    --- @param bundleInfo CS_AssetBundleInfo
    local onSuccess = function(bundleInfo)
        if self.downloadingAssetBundleDict[bundleInfo.name] ~= nil then
            self:UpdateNumberThread(-1)
            self.downloadingAssetBundleDict[bundleInfo.name] = nil
        else
            XDebug.Log("Unknown source: " .. bundleInfo.name)
            return
        end

        self.numberBundleComplete = self.numberBundleComplete + 1
        self.totalByteDownloadComplete = self.totalByteDownloadComplete + bundleInfo.size
        if self.totalBundleInTutorial > 0 then
            print("bundle complete: " .. tostring(bundleInfo.name))
            if self.numberBundleComplete == self.totalBundleInTutorial then
                self.totalBundleNeedDownload = self.totalBundleNeedDownload - self.numberBundleComplete
                self.totalByteNeedDownload = self.totalByteNeedDownload - self.totalByteDownloadComplete
                self.totalByteDownloadComplete = 0
                self.totalBundleInTutorial = 0
                self.numberBundleComplete = 0
                self.isDownloading = false
                self:_CheckDownloadWay()
            else
                RxMgr.downloadAssetBundle:Next(self.numberBundleComplete / self.totalBundleInTutorial,
                        self:_ConvertByteToMegaByte(self.totalByteNeedDownload * (self.totalBundleInTutorial / self.totalBundleNeedDownload)))
                download()
            end
        else
            if self.numberBundleComplete >= self.totalBundleNeedDownload then
                TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.FinishDownloadBundle)
                self:OnDownloadSuccess()
            else
                RxMgr.downloadAssetBundle:Next(self.totalByteDownloadComplete / self.totalByteNeedDownload, self:_ConvertByteToMegaByte(self.totalByteNeedDownload))
                download()
            end
        end
    end

    --- @param bundleInfo CS_AssetBundleInfo
    local onFailed = function(bundleInfo)
        self.needDownloadDict[bundleInfo.name] = bundleInfo
        self.downloadingAssetBundleDict[bundleInfo.name] = nil
        self:UpdateNumberThread(-1)
        if self:IsNoneThreadRunning() then
            TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ShowFailedAssetBundle)
            if self.totalBundleInTutorial <= 0 and self:NeedDownloadInMain() then
                RxMgr.disconnect:Next(DisconnectReason.CANT_DOWNLOAD_BUNDLE_ASSET)
            else
                self:ResetDownloadState()
                self:ShowDisconnect(AssetDownloadedStep.ShowFailedAssetBundle, DisconnectReason.CANT_DOWNLOAD_BUNDLE_ASSET)
            end
        end
    end

    download = function()
        --- @param bundleInfo CS_AssetBundleInfo
        for _, bundleInfo in pairs(self.needDownloadDict) do
            if self.totalBundleInTutorial == 0 or self:_IsBundleInTutorial(bundleInfo.name) then
                if self:IsMaxThreadRunning() then
                    break
                else
                    self:UpdateNumberThread(1)
                    self.needDownloadDict[bundleInfo.name] = nil
                    self.downloadingAssetBundleDict[bundleInfo.name] = bundleInfo
                    self:_DownloadOneAssetBundle(bundleInfo, onSuccess, onFailed)
                end
            end
        end
    end

    download()
end

--- @return boolean
function MobileBundleDownloader:IsDownloading()
    return self.isDownloading
end

--- @return number
function MobileBundleDownloader:GetTotalDownloadSize()
    return self:_ConvertByteToMegaByte(self.totalByteNeedDownload)
end

--- @return boolean
function MobileBundleDownloader:IsDownloadComplete()
    return self.numberBundleComplete == self.totalBundleNeedDownload
end

--- return void
function MobileBundleDownloader:ResetDownloadState()
    if self:IsDownloadComplete() == false then
        self.isDownloading = false
    end
end

--- @return UnityEngine_AssetBundle
--- @param bundleInfo CS_AssetBundleInfo
function MobileBundleDownloader:_LoadAssetBundle(bundleInfo)
    local bundle = self:_LoadBundleFromLocalDevice(bundleInfo)
    if bundle == nil then
        bundle = self:_LoadBundleFromStreamingAsset(bundleInfo)
    end
    if bundle == nil then
        print(" nil bundle: " .. tostring(bundleInfo.name))
    end
    return bundle
end

--- @return void
function MobileBundleDownloader:SubscribeDownload()
    --- @type Subscription
    local onFinishTutorial
    onFinishTutorial = RxMgr.finishTutorial:Subscribe(function(step)
        onFinishTutorial:Unsubscribe()
        if self:IsDownloadComplete() == false then
            PopupMgr.ShowPopup(UIPopupName.UIDownloadAssetBundle)
        end
    end)
end

--- @return number
--- @param languageCode string
function MobileBundleDownloader:GetFontSize(languageCode)
    local bundleInfo = self:_GetBundleInfo(string.lower(languageCode))
    return self:_ConvertByteToMegaByte(bundleInfo.size)
end

--- @param languageCode string
--- @param onSuccess function
--- @param onFailed function
function MobileBundleDownloader:DownloadFont(languageCode, onSuccess, onFailed)
    local bundleInfo = self:_GetBundleInfo(string.lower(languageCode))
    self:_DownloadOneAssetBundle(bundleInfo, onSuccess, onFailed)
end

--- @param languageCode string
function MobileBundleDownloader:AddDownloadFont(languageCode)
    local bundleInfo = self:_GetBundleInfo(string.lower(languageCode))
    self:_AddAssetBundleDownload(bundleInfo)
end
