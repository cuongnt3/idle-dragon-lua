--- @class ResourceLoadUtils
ResourceLoadUtils = Class(ResourceLoadUtils)

require "lua.client.utils.SpriteLoadUtils"

local assetPath = "%s/%s"

--- @param type ComponentName
local GetExtension = function(type)
    local extension
    if type == ComponentName.UnityEngine_GameObject then
        extension = ".prefab"
    elseif type == ComponentName.UnityEngine_Font then
        extension = ""
    elseif type == ComponentName.UnityEngine_U2D_SpriteAtlas then
        extension = ".spriteatlas"
    elseif type == ComponentName.UnityEngine_AudioClip then
        extension = ".mp3"
    elseif type == ComponentName.UnityEngine_Texture or type == ComponentName.UnityEngine_Sprite then
        extension = ".png"
    elseif type == ComponentName.UnityEngine_VideoClip then
        extension = ".mp4"
    elseif type == ComponentName.UnityEngine_Material then
        extension = ".mat"
    else
        extension = ".asset"
    end
    return extension
end

--- @return void
function ResourceLoadUtils.InitLoadResource()
    Coroutine.start(function()
        RxMgr.finishLoading:Next()
        coroutine.waitforseconds(0.1)
        SmartPool.Instance:PreloadUIPool()
        coroutine.waitforseconds(0.1)
        --local spawnList = {UIPopupName.UISelectMapPVE, UIPopupName.UIHeroSummonRemake, UIPopupName.UIFormation, UIPopupName.UIMarket,
        --                   UIPopupName.UIHeroCollection, UIPopupName.UIHeroMenu2,UIPopupName.UIMainArea}
        local spawnList = {}
        for _, v in ipairs(spawnList) do
            local popupInfo = zg.popupMgr:Spawn(v)
            popupInfo:Preload()
            coroutine.waitforseconds(0.1)
        end
        coroutine.waitforseconds(0.1)
        PopupMgr.ShowPopup(UIPopupName.UIMainArea, true)
    end)
end

--- @return UnityEngine_GameObject
--- @param assetName string
function ResourceLoadUtils.LoadUI(assetName)
    local resourceLoadPath = string.format(assetPath, AssetType.UI, assetName)
    return U_GameObject.Instantiate(ResourceLoadUtils.LoadObject(resourceLoadPath, ComponentName.UnityEngine_GameObject))
end

--- @return UnityEngine_GameObject
--- @param assetType AssetType
--- @param assetName string
function ResourceLoadUtils.LoadAssetByType(assetType, assetName)
    local resourceLoadPath = string.format(assetPath, assetType, assetName)
    return ResourceLoadUtils.LoadObject(resourceLoadPath, ComponentName.UnityEngine_GameObject, assetType)
end

--- @return UnityEngine_GameObject
--- @param assetType AssetType
--- @param assetName string
function ResourceLoadUtils.LoadAssetByTypeAsync(assetType, assetName, onFinish)
    local resourceLoadPath = string.format(assetPath, assetType, assetName)
    ResourceLoadUtils.LoadObjectAsync(resourceLoadPath, ComponentName.UnityEngine_GameObject, onFinish, assetType)
end

--- @return UnityEngine_GameObject
--- @param name string
--- @param parent UnityEngine_Transform
function ResourceLoadUtils.LoadUIEffect(name, parent)
    local object = ResourceLoadUtils.LoadAssetByType(AssetType.UIEffect, name)
    ---@type UnityEngine_GameObject
    local gameObject = U_GameObject.Instantiate(object)
    if parent ~= nil then
        UIUtils.SetParent(gameObject.transform, parent)
    end
    return gameObject
end

--- @return UnityEngine_GameObject
--- @param assetName string
function ResourceLoadUtils.LoadConfig(assetName, onConfigLoaded)
    local resourceLoadPath = string.format(assetPath, AssetType.Config, assetName)
    ResourceLoadUtils.LoadObjectAsync(resourceLoadPath, ComponentName.UnityEngine_DataAnimationCurve, onConfigLoaded)
end

--- @return System_Object
--- @param name string
function ResourceLoadUtils.LoadFontAsset(name)
    local resourceLoadPath = string.format("Fonts/Battle/ItalicNotoSan/%s", name)
    return ResourceLoadUtils.LoadObject(resourceLoadPath, ComponentName.TMPro_TMP_FontAsset)
end

--- @return UnityEngine_AudioClip
function ResourceLoadUtils.LoadAsyncBundleAudioClip(folder, assetName, onAudioLoaded)
    local resourceLoadPath = string.format("Audio/%s/%s", folder, assetName)
    ResourceLoadUtils.LoadObjectAsync(resourceLoadPath, ComponentName.UnityEngine_AudioClip, onAudioLoaded)
end

--- @return UnityEngine_Video_VideoClip
function ResourceLoadUtils.LoadVideoClip(assetName)
    local resourceLoadPath = string.format(assetPath, AssetType.Video, assetName)
    return ResourceLoadUtils.LoadFromResources(resourceLoadPath, ComponentName.UnityEngine_VideoClip)
end

--- @return UnityEngine_Material
--- @param assetName string
function ResourceLoadUtils.LoadMaterial(assetName)
    local resourceLoadPath = string.format(assetPath, AssetType.Material, assetName)
    return ResourceLoadUtils.LoadObject(resourceLoadPath, ComponentName.UnityEngine_Material)
end

--- @return UnityEngine_Object
--- @param resourceLoadPath string
--- @param componentName ComponentName
--- @param assetType AssetType
function ResourceLoadUtils.LoadObject(resourceLoadPath, componentName, assetType)
    assert(resourceLoadPath)
    local assetPath = string.format("%s%s", resourceLoadPath, GetExtension(componentName))
    local object
    if IS_EDITOR_PLATFORM and zgUnity.IsTest then
        AssetRecordTools.Add(assetPath)
        object = CS.UnityEditor.AssetDatabase.LoadAssetAtPath(string.format("Assets/AssetBundles/%s", assetPath), componentName)
    else
        require("lua.client.core.main.AssetBundle.BundleDownloader")
        object = bundleDownloader:LoadAsset(assetPath, componentName, assetType)
    end

    if object == nil then
        XDebug.Error(string.format("Missing: resourceLoadPath: %s", assetPath))
    end
    return object
end

--- @return UnityEngine_Object
--- @param resourceLoadPath string
--- @param componentName ComponentName
function ResourceLoadUtils.UnloadObject(resourceLoadPath, componentName, unloadAllLoadedObjects)
    if IS_EDITOR_PLATFORM and zgUnity.IsTest then
        -- don't support
    else
        local assetPath = string.format("%s%s", resourceLoadPath, GetExtension(componentName))
        bundleDownloader:UnloadAssetBundle(assetPath, componentName, unloadAllLoadedObjects)
    end
end

--- @return UnityEngine_Object
--- @param resourceLoadPath string
--- @param componentName ComponentName
--- @param assetType AssetType
function ResourceLoadUtils.LoadObjectAsync(resourceLoadPath, componentName, onFinish, assetType)
    assert(resourceLoadPath)
    onFinish(ResourceLoadUtils.LoadObject(resourceLoadPath, componentName, assetType))
    --if IS_EDITOR_PLATFORM and zgUnity.IsTest then
    --    Coroutine.start(function()
    --        coroutine.waitforseconds(math.random())
    --        onFinish(ResourceLoadUtils.LoadObject(resourceLoadPath, componentName, assetType))
    --    end)
    --else
    --    require("lua.client.core.main.AssetBundle.BundleDownloader")
    --    local assetPath = string.format("%s%s", resourceLoadPath, GetExtension(componentName))
    --    bundleDownloader:LoadAssetAsync(assetPath, componentName, onFinish, assetType)
    --end
end

--- @return UnityEngine_Object
function ResourceLoadUtils.LoadFromResources(resourceLoadPath, componentName)
    return U_Resources.Load("AssetBundles/" .. resourceLoadPath, componentName)
end
