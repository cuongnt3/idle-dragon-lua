require "lua.client.core.UnityLib"

--- @type CS_ZgMgr
zgUnity = zgUnity

local function InitGlobal()
    require "lua.client.core.GlobalVariables"
end

local function RequireBaseFiles()
    print("require base files")
    require "lua.libs.Class"
    require "lua.client.utils.json"
    require "lua.client.utils.Coroutine"
    require "lua.client.core.main.NetConfig"
    require "lua.libs.collection.List"
    require "lua.libs.collection.Dictionary"
    require "lua.client.config.const.ResourceType"
    require "lua.client.utils.ResourceLoadUtils"
    require "lua.client.utils.PrefabLoadUtils"
    require "lua.client.core.main.LRUCache"
    require "lua.client.core.RxMgr"
    require "lua.logicBattle.enum.battle.GameMode"
    require "lua.client.utils.CsvReaderUtils"
    require "lua.libs.StringUtils"
    require "lua.libs.LogUtils"
    require "lua.client.utils.XDebug"
    require "lua.client.config.PlayerPrefsKey"
    require "lua.client.core.network.LogicCode"
    require "lua.client.core.network.NetworkUtils"
    if IS_EDITOR_PLATFORM then
        require "lua.client.scene.ui.home.uiTutorial.record.AssetRecordTools"
    end
end

--- @class Main
Main = {}

--- @return string
function Main.GetVersionInfo()
    print("Main.GetVersionInfo")
    return string.format(" %s %s-%d %s %s", LanguageUtils.LocalizeCommon("game_version"),
            VERSION_CLIENT_BUILD, GOOGLE_SCRIPT.patch, DEVICE_MODEL, U_SystemInfo.operatingSystem)
end

local function RemoveLua()
    local cacheFile = {}
    local count = 1
    -- JUST REMOVE CREATE BY TEAM, NOT LIB OF LUA
    --- @param file string
    for file, _ in pairs(package.loaded) do
        local index = string.find(file, "lua.")
        if index ~= nil then
            cacheFile[count] = file
            count = count + 1
        end
    end
    for i, v in ipairs(cacheFile) do
        package.loaded[v] = nil
    end
end

local function DestroyObject()
    local childCount = zgUnity.transform.childCount
    if childCount > 0 then
        for i = 1, childCount do
            CS.UnityEngine.Object.Destroy(zgUnity.transform:GetChild(childCount - i).gameObject)
        end
    end
end

local function CreateBundleDownloader()
    if IS_MOBILE_PLATFORM then
        require("lua.client.core.main.AssetBundle.MobileBundleDownloader")
        bundleDownloader = MobileBundleDownloader()
    else
        require("lua.client.core.main.AssetBundle.EditorBundleDownloader")
        bundleDownloader = EditorBundleDownloader()
    end
    bundleDownloader:SetDefaultBundleInfoDict()
end

function Main.ResetGame()
    RemoveLua()
    DestroyObject()
    zgUnity:RunGame()
end

-- https://github.com/Tencent/xLua/blob/master/Assets/XLua/Doc/faq.md
--- @return boolean
--- @param unity_object System_Object
function Main.IsNull(unity_object)
    if unity_object == nil then
        return true
    end

    if type(unity_object) == "userdata" and unity_object.IsNull ~= nil then
        return unity_object:IsNull()
    end

    return false
end

function Main.CreateZg()
    require("lua.client.core.ZgMgr")
    zg = ZgMgr()
    zg:Run()
end

function Main.Start()
    print("start game")
    InitGlobal()
    RequireBaseFiles()
    CreateBundleDownloader()

    U_Resources.UnloadUnusedAssets()

    --- @type SupportTool
    local supportTool = require("lua.client.utils.SupportTool")
    if zgUnity.IsTest and zgUnity.IsPVE == false then
        supportTool.InitTool()
    else
        local result, message = pcall(function()
            if IS_PBE_VERSION then
                supportTool.SetNetConfig(supportTool.ServerIndex.Pbe)
            elseif IS_APPLE_REVIEW_IAP then
                if IS_VIET_NAM_VERSION then
                    supportTool.SetNetConfig(supportTool.ServerIndex.Sandbox)
                else
                    supportTool.SetNetConfig(supportTool.ServerIndex.Dev)
                end
            elseif IS_EDITOR_PLATFORM then
                supportTool.SetNetConfig(supportTool.ServerIndex.Production)
            else
                supportTool.SetNetConfig(supportTool.ServerIndex.Production)
            end
            Main.CreateZg()
        end)
        if result == false then
            print(message)
        end
    end
end




