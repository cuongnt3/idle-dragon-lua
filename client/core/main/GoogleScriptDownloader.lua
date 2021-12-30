--- @class GoogleScriptDownloader
local GoogleScriptDownloader = {}

local function GetUrl(backUpIp, backUpPort)
    local ip = backUpIp or NetConfig.loadBalancerIP
    local port = backUpPort or NetConfig.loadBalancerPort
    local prefix = ""
    if IS_VIET_NAM_VERSION then
        prefix = "v"
    elseif IS_HUAWEI_VERSION then
        prefix = "h"
    elseif IS_PBE_VERSION then
        prefix = "p"
    end
    local version = string.format("%s%s-%s", prefix, IS_IOS_PLATFORM and "i" or "a", VERSION_CLIENT_BUILD)
    if zgUnity.IsTest then
        version = string.format("%s-%d", version, U_PlayerPrefs.GetInt(PlayerPrefsKey.PATCH_TEST, 0))
    end
    return string.format(NetConfig.REMOTE_URL, ip, port, version)
end

local function ParseContent(content)
    print(string.format("[GoogleScriptDownloader]download success [%s] len[%d]", content, string.len(content)))
    if string.len(content) > 0 then
        GOOGLE_SCRIPT = json.decode(content)
        if GOOGLE_SCRIPT.version ~= nil then
            VERSION = GOOGLE_SCRIPT.version
        end
        GoogleScriptDownloader.onSuccess()
    else
        PopupUtils.ShowPopupGoToStore()
    end
end

local function DownloadConfigBackUp()
    local onSuccess = function(content)
        ParseContent(content)
    end
    local onFailed = function()
        TrackingUtils.AddFirebaseAssetDownloaded(AssetDownloadedStep.ShowFailedGoogleScript)
        PopupUtils.ShowPopupDisconnect(DisconnectReason.CANT_DOWNLOAD_GOOGLE_SCRIPT, GoogleScriptDownloader.CheckDownload)
    end
    NetworkUtils.TryRequestData(5, GetUrl(NetConfig.backUpRemoteConfigIp), onSuccess, onFailed)
end

local function DownloadConfig()
    local onSuccess = function(content)
        ParseContent(content)
    end
    local onFailed = function()
        DownloadConfigBackUp()
    end
    NetworkUtils.TryRequestData(5, GetUrl(), onSuccess, onFailed)
end

local function FakeDownloadConfig()
    local content = "{\"isVnReview\":true,\"patch\":34,\"numberFiles\":1351,\"hash\":\"3806165388d81bda56c41010f1e76b39876b747dbd82d3927cd7d5974d5bfee5\",\"lua\":34,\"csv\":33}"
    ParseContent(content)
end

GoogleScriptDownloader.onSuccess = nil

function GoogleScriptDownloader.CheckDownload()
    if IS_MOBILE_PLATFORM then
        DownloadConfig()
    else
        FakeDownloadConfig()
    end
end

return GoogleScriptDownloader