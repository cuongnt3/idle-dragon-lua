require("lua.client.core.main.LRUCache")

--- @class BundleLoadType
local BundleLoadType = {
    UnloadTrue = 1,
    UnloadFalse = 2,
    Constant = 3
}

--- @type UnityEngine_AssetBundle
local AssetBundle = UnityEngine.AssetBundle

--- @class BundleDownloader
BundleDownloader = Class(BundleDownloader)

--- @return void
function BundleDownloader:Ctor()
    self.storableDirectory = zgUnity.assetBundleMgr:GetStorableDirectory()
    --- @type table --<bundleName, CS_AssetBundleInfo>
    self.bundleInfoDict = {}
    --- @type table --<assetPath, bundleName>
    self.assetDict = {}
    --- @type table --<bundleName, CS_AssetBundleInfo>
    self.bundleGarbageDict = {}
    --- @type CS_BundleManifest
    self.bundleManifest = nil
    --- @type LRUCache
    self.lruCache = LRUCache(450)

    U_BetterStreamingAssets.Initialize()
end

--- @return CS_AssetBundleInfo
function BundleDownloader:_GetBundleInfo(bundleName)
    local bundleInfo = self.bundleInfoDict[bundleName]
    if bundleInfo == nil then
        XDebug.Log("GetBundleInfo is nil: " .. bundleName)
    end
    return bundleInfo
end

--- @return CS_AssetBundleInfo
function BundleDownloader:_GetBundleInfoByAssetPath(assetPath)
    local bundleName = self.assetDict[assetPath]
    if bundleName == nil then
        XDebug.Log("GetBundleInfoByAssetPath is nil: " .. assetPath)
        return nil
    end
    return self:_GetBundleInfo(bundleName)
end

--- @return CS_BundleManifest
function BundleDownloader:_GetClientBundleManifest()
    assert(false, "Need override this method")
end

--- @param bundleInfo CS_AssetBundleInfo
function BundleDownloader:_AddAssets(bundleInfo)
    for i = 1, #bundleInfo.assets do
        self.assetDict[bundleInfo.assets[i]] = bundleInfo.name
    end
end

--- @return void
function BundleDownloader:SetDefaultBundleInfoDict()
    self.bundleManifest = self:_GetClientBundleManifest()
    self:_SetBundleInfoDict(self.bundleManifest)
end

--- @param bundleManifest CS_BundleManifest
function BundleDownloader:_SetBundleInfoDict(bundleManifest)
    local bundles = bundleManifest.bundles
    for i = 1, #bundles do
        --- @type CS_AssetBundleInfo
        local bundleInfo = bundles[i]
        self:_AddAssets(bundleInfo)
        --- @type CS_AssetBundleInfo
        local tempBundleInfo = self.bundleInfoDict[bundleInfo.name]
        if tempBundleInfo == nil then
            self.bundleInfoDict[bundleInfo.name] = bundleInfo
        elseif tempBundleInfo.hash ~= bundleInfo.hash then
            if tempBundleInfo.bundle ~= nil then
                tempBundleInfo.bundle:Unload(false)
                print("_ParseManifest bundle was changed: " .. bundleInfo.name)
            end
            self.bundleInfoDict[bundleInfo.name] = bundleInfo
        end
    end
end

--- @return void
function BundleDownloader:UnloadBundle()
    --- @param bundle UnityEngine_AssetBundle
    for name, bundle in pairs(self.bundleGarbageDict) do
        if Main.IsNull(bundle) == false then
            bundle:Unload(false)
        end
        self.bundleGarbageDict[name] = nil
        break
    end
end

--- @return void
function BundleDownloader:UnloadAllAssetBundles()
    --- @param bundleInfo CS_AssetBundleInfo
    for _, bundleInfo in pairs(self.bundleInfoDict) do
        local bundle = bundleInfo.bundle
        if bundle == nil then
            bundle = self:_LoadBundleFromLocalDevice(bundleInfo.hash)
        end
        if bundle then
            bundle:Unload(true)
        end
    end
    U_PlayerPrefs.DeleteKey(PlayerPrefsKey.ASSET_BUNDLE_MANIFEST)
    AssetBundle.UnloadAllAssetBundles(true)
    U_Resources.UnloadUnusedAssets()
end

function BundleDownloader:CheckDownload()
    assert(false)
end

local oldBundleRequired
------------------------------ LOAD -----------------------------------------------------

--- @param hash string
function BundleDownloader:_GetFileLocalDevicePath(hash)
    return string.format("%s%s", self.storableDirectory, hash)
end

--- @param bundleInfo CS_AssetBundleInfo
function BundleDownloader:_LoadBundleFromLocalDevice(bundleInfo)
    local bundlePath = self:_GetFileLocalDevicePath(bundleInfo.hash)
    if zgUnity.assetBundleMgr:Exists(bundlePath) then
        local bundle = AssetBundle.LoadFromFile(bundlePath)
        if bundle == nil then
            XDebug.Log("LoadAssetBundleFromLocalDevice is nil: " .. bundleInfo.hash)
            zgUnity.assetBundleMgr:DeleteFile(bundlePath)
        else
            return bundle
        end
    end
    return nil
end

--- @param hash string
function BundleDownloader:_GetFileStreamingBundlePath(hash)
        return hash
end

--- @param bundleInfo CS_AssetBundleInfo
function BundleDownloader:_LoadBundleFromStreamingAsset(bundleInfo)
    local name = self:_GetFileStreamingBundlePath(bundleInfo.hash)
    if U_BetterStreamingAssets.FileExists(name) then
        return U_BetterStreamingAssets.LoadAssetBundle(name)
    else
        XDebug.Log("LoadAssetBundleFromStreamingAsset is not exist: " .. bundleInfo.hash)
        return nil
    end
end

--- @param bundleInfo CS_AssetBundleInfo
function BundleDownloader:_LoadAssetBundle(bundleInfo)
    assert(false)
end

--- @param bundleInfo CS_AssetBundleInfo
--- @param loadType BundleLoadType
function BundleDownloader:ChangeBundleLoadTypeToConstant(bundleInfo, loadType)
    local list = List()
    self:LoadAssetBundleName(bundleInfo, list)
    for _, dependencyName in ipairs(list:GetItems()) do
        --- @type CS_AssetBundleInfo
        local dependencyBundleInfo = self:_GetBundleInfo(dependencyName)
        dependencyBundleInfo.loadType = BundleLoadType.Constant
        self.lruCache:Remove(dependencyBundleInfo)
        if loadType == BundleLoadType.UnloadFalse then
            local bundle = self.bundleGarbageDict[dependencyBundleInfo.name]
            if bundle then
                dependencyBundleInfo.bundle = bundle
                self.bundleGarbageDict[dependencyBundleInfo.name] = nil
            end
        end
    end
end

--- @return UnityEngine_AssetBundle
--- @param assetPath string
function BundleDownloader:LoadBundleUnloadFalse(assetPath)
    local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
    if bundleInfo == nil then
        return nil
    end

    if bundleInfo.name == oldBundleRequired and bundleInfo.bundle then
        --if bundleInfo.loadType == BundleLoadType.UnloadTrue then
        --    self:ChangeBundleLoadTypeToConstant(bundleInfo, bundleInfo.loadType)
        --end
        return bundleInfo.bundle
    end
    oldBundleRequired = bundleInfo.name

    local list = List()
    self:LoadAssetBundleName(bundleInfo, list)
    for _, dependencyName in ipairs(list:GetItems()) do
        --- @type CS_AssetBundleInfo
        local dependencyBundleInfo = self:_GetBundleInfo(dependencyName)
        if dependencyBundleInfo and dependencyBundleInfo.bundle == nil then
            if self.bundleGarbageDict[dependencyName] then
                dependencyBundleInfo.bundle = self.bundleGarbageDict[dependencyName]
                self.bundleGarbageDict[dependencyName] = nil
            else
                dependencyBundleInfo.bundle = self:_LoadAssetBundle(dependencyBundleInfo)
            end
        end
        local bundleRemoved = self.lruCache:Refer(dependencyBundleInfo)
        if bundleRemoved ~= nil then
            self.bundleGarbageDict[bundleRemoved.name] = bundleRemoved.bundle
            bundleRemoved.bundle = nil
        end
        --if dependencyBundleInfo then
        --    if dependencyBundleInfo.bundle == nil then
        --        if self.bundleGarbageDict[dependencyName] then
        --            dependencyBundleInfo.bundle = self.bundleGarbageDict[dependencyName]
        --            self.bundleGarbageDict[dependencyName] = nil
        --        else
        --            dependencyBundleInfo.bundle = self:_LoadAssetBundle(dependencyBundleInfo)
        --        end
        --        dependencyBundleInfo.loadType = BundleLoadType.UnloadFalse
        --    else
        --        if dependencyBundleInfo.loadType == BundleLoadType.UnloadTrue then
        --            self:ChangeBundleLoadTypeToConstant(dependencyBundleInfo, dependencyBundleInfo.loadType)
        --        end
        --    end
        --    if dependencyBundleInfo.loadType == BundleLoadType.UnloadFalse then
        --        --- @type CS_AssetBundleInfo
        --        local bundleRemoved = self.lruCache:Refer(dependencyBundleInfo)
        --        if bundleRemoved ~= nil then
        --            self.bundleGarbageDict[bundleRemoved.name] = bundleRemoved.bundle
        --            bundleRemoved.bundle = nil
        --        else
        --            --XDebug.Log(string.format("%d. %s", self.lruCache.count, dependencyName))
        --        end
        --    end
        --else
        --    return nil
        --end
    end

    return bundleInfo.bundle
end

--- @return UnityEngine_AssetBundle
--- @param assetPath string
function BundleDownloader:LoadBundleUnloadTrue(assetPath)
    local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
    if bundleInfo == nil then
        return nil
    end

    if  bundleInfo.bundle then
        if bundleInfo.loadType == BundleLoadType.UnloadFalse then
            self:ChangeBundleLoadTypeToConstant(bundleInfo, bundleInfo.loadType)
        end
        return bundleInfo.bundle
    end

    local list = List()
    self:LoadAssetBundleName(bundleInfo, list)
    for _, dependenceName in ipairs(list:GetItems()) do
        --- @type CS_AssetBundleInfo
        local dependencyBundleInfo = self:_GetBundleInfo(dependenceName)
        if dependencyBundleInfo and dependencyBundleInfo.bundle == nil then
            if self.bundleGarbageDict[dependenceName] ~= nil then
                dependencyBundleInfo.bundle = self.bundleGarbageDict[dependenceName]
                self.bundleGarbageDict[dependenceName] = nil
            else
                dependencyBundleInfo.bundle = self:_LoadAssetBundle(dependencyBundleInfo)
            end
        end
        --- @type CS_AssetBundleInfo
        local bundleRemoved = self.lruCache:Refer(dependencyBundleInfo)
        if bundleRemoved ~= nil then
            self.bundleGarbageDict[bundleRemoved.name] = bundleRemoved.bundle
            bundleRemoved.bundle = nil
        else
            --XDebug.Log(string.format("%d. %s", self.lruCache.count, dependenceName))
        end
    end

    return bundleInfo.bundle
end

--- @return UnityEngine_AssetBundle
--- @param assetPath string
function BundleDownloader:LoadAtlasBundle(assetPath)
    local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
    if bundleInfo == nil then
        return nil
    end
    if bundleInfo.bundle == nil then
        bundleInfo.bundle = self:_LoadAssetBundle(bundleInfo)
    end
    return bundleInfo.bundle
end

--- @param assetPath string
function BundleDownloader:UnloadAtlasBundle(assetPath, unloadAllLoadedObjects)
    local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
    if bundleInfo == nil then
        return nil
    end
    if unloadAllLoadedObjects == nil then
        unloadAllLoadedObjects = true
    end
    if bundleInfo.bundle then
        bundleInfo.bundle:Unload(unloadAllLoadedObjects)
        bundleInfo.bundle = nil
    else
        XDebug.Log("bundle is nil: " .. assetPath)
    end
end

--- @return void
--- @param assetPath string
--- @param componentName ComponentName
function BundleDownloader:UnloadAssetBundle(assetPath, componentName, unloadAllLoadedObjects)
    if componentName == ComponentName.UnityEngine_U2D_SpriteAtlas then
        self:UnloadAtlasBundle(assetPath, unloadAllLoadedObjects)
    else
        XDebug.Log("Don't support now: " .. tostring(componentName))
    end
end

--- @return boolean
function BundleDownloader:HasAssetBundle(bundleName)
    --- @type CS_AssetBundleInfo
    local bundleInfo = self:_GetBundleInfo(bundleName)
    if bundleInfo == nil then
        return false
    else
        return zgUnity.assetBundleMgr:Exists(bundleInfo.hash)
    end
end

--- @return string
--- @param assetPath string
function BundleDownloader:GetFullAssetPath(assetPath)
    return string.format("Assets/AssetBundles/%s", assetPath)
end

--- @return boolean
function BundleDownloader:IsDownloadComplete()
    assert(false)
end

--- @return UnityEngine_Object
--- @param assetPath string
--- @param componentName ComponentName
--- @param assetType AssetType
function BundleDownloader:LoadAsset(assetPath, componentName, assetType)
    local assetBundle
    if componentName == ComponentName.UnityEngine_U2D_SpriteAtlas then
        assetBundle = self:LoadAtlasBundle(assetPath)
    --elseif assetType == AssetType.Hero then
    --    assetBundle = self:LoadBundleUnloadTrue(assetPath)
    else
        assetBundle = self:LoadBundleUnloadFalse(assetPath)
        self:UnloadBundle()
    end
    if assetBundle ~= nil then
        local fullAssetPath = self:GetFullAssetPath(assetPath)
        return assetBundle:LoadAsset(fullAssetPath, componentName)
    else
        XDebug.Log("Bundle is nil " .. assetPath)
        return nil
    end
end

--- @return UnityEngine_Object
--- @param assetPath string
--- @param systemTypeInstance ComponentName
--- @param onFinish function
--- @param assetType AssetType
function BundleDownloader:LoadAssetAsync(assetPath, systemTypeInstance, onFinish, assetType)
    --onFinish(AssetBundleDownloader:LoadAsset(assetPath, systemTypeInstance))
    local assetBundle
    --if assetType == AssetType.Hero then
    --    assetBundle = self:LoadBundleUnloadTrue(assetPath)
    --else
        assetBundle = self:LoadBundleUnloadFalse(assetPath)
        self:UnloadBundle()
    --end
    if assetBundle ~= nil then
        Coroutine.start(function()
            --- @type UnityEngine_AssetBundleRequest
            local request = assetBundle:LoadAssetAsync(self:GetFullAssetPath(assetPath), systemTypeInstance)
            coroutine.yield(request)
            if request.asset == nil then
                XDebug.Log("LoadAssetAsync Asset is nil: " .. assetPath)
            end
            onFinish(request.asset)
        end)
    else
        XDebug.Log("LoadAssetAsync Bundle is nil: " .. assetPath)
        onFinish(nil)
    end
end

--- @return UnityEngine_Object
--- @param assetPath string
--- @param systemTypeInstance ComponentName
function BundleDownloader:LoadFont(assetPath, systemTypeInstance)
    local bundleInfo = self:_GetBundleInfoByAssetPath(assetPath)
    if bundleInfo then
        if bundleInfo.bundle == nil then
            bundleInfo.bundle = self:_LoadAssetBundle(bundleInfo)
        end

        if bundleInfo.bundle ~= nil then
            return bundleInfo.bundle:LoadAsset(self:GetFullAssetPath(assetPath), systemTypeInstance)
        else
            return nil
        end
    end
end

--- @return void
--- @param bundleInfo CS_AssetBundleInfo
--- @param bundleList List
function BundleDownloader:LoadAssetBundleName(bundleInfo, bundleList)
    for i = 1, #bundleInfo.dependencies do
        local child = bundleInfo.dependencies[i]
        if bundleList:IsContainValue(child) == false then
            self:LoadAssetBundleName(self:_GetBundleInfo(bundleInfo.dependencies[i]), bundleList)
        end
    end
    if bundleList:IsContainValue(bundleInfo.name) == false then
        bundleList:Add(bundleInfo.name)
    else
        XDebug.Log("Invalid list format: " .. bundleInfo.name)
    end
end

--- return void
function BundleDownloader:ResetDownloadState()
    -- do nothing
end