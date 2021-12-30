require("lua.client.core.main.AssetBundle.BundleDownloader")

--- @class EditorBundleDownloader : BundleDownloader
EditorBundleDownloader = Class(EditorBundleDownloader, BundleDownloader)

--- @return void
function EditorBundleDownloader:Ctor()
    print("EditorBundleDownloader Ctor")
    BundleDownloader.Ctor(self)
end

--- @return void
function EditorBundleDownloader:CheckDownload()
    RxMgr.downloadAssetBundle:Next(1)
end

--- @return boolean
function EditorBundleDownloader:IsDownloadComplete()
    return true
end

--- @param hash string
function EditorBundleDownloader:_LoadAssetBundle(hash)
    return self:_LoadBundleFromStreamingAsset(hash)
end

--- @return CS_BundleManifest
function EditorBundleDownloader:_GetClientBundleManifest()
    local path = string.format("%s/../AssetBundles/asset_bundle_config.json", U_Application.dataPath)
    local manifest = CsvReaderUtils.ReadFile(path)
    if manifest and string.len(manifest) > 0 then
        return json.decode(manifest)
    else
        assert(false, "path is not exist: " .. path)
        return nil
    end
end