--- @type boolean
PRODUCT_VERSION = "1.2.2"
--- @type boolean
IS_CLIENT_RUNNING = true
--- @type UnityEngine_RuntimePlatform
PLATFORM = U_Application.platform
--- @type string
VERSION_CLIENT_BUILD = U_Application.version
--- @type string
VERSION = U_Application.version
--- @type boolean
IS_MOBILE_PLATFORM = U_Application.isMobilePlatform
--- @type boolean
IS_EDITOR_PLATFORM = not IS_MOBILE_PLATFORM
--- @type boolean
IS_ANDROID_PLATFORM = PLATFORM == U_RuntimePlatform.Android
--- @type boolean
IS_IOS_PLATFORM = PLATFORM == U_RuntimePlatform.IPhonePlayer
--- @type string
PLATFORM_STRING = IS_IOS_PLATFORM and "iOS" or "Android"
--- @type boolean
IS_PBE_VERSION = U_Application.identifier == "com.fansipan.idle.summoners.pbe"
--- @type boolean
IS_VIET_NAM_VERSION = (U_Application.identifier == "com.sungame.se") or (U_Application.identifier == "com.se.sungame")
--- @type boolean
IS_HUAWEI_VERSION = U_Application.identifier == "com.fansipan.summoners.era.idle.huawei"
--- @type string
IDENTIFIER = IS_VIET_NAM_VERSION and "com.fansipan.summoners.era.idle" or U_Application.identifier
--- @type string
DEVICE_MODEL = U_SystemInfo.deviceModel
--- @type CS_GoogleScript
GOOGLE_SCRIPT = nil
--- @type boolean
IS_APPLE_REVIEW_IAP = false and IS_IOS_PLATFORM
---@type number
SERVER_APPLE_REVIEW = 33
--- @type boolean
IS_APPLE_REVIEW = (false and IS_IOS_PLATFORM) or (IS_APPLE_REVIEW_IAP)
--- @type boolean
LOWER_DEVICE = IS_MOBILE_PLATFORM and U_SystemInfo.SupportsTextureFormat(UnityEngine.TextureFormat.ASTC_RGBA_4x4) == false
---@type string
REMOTE_CONFIG_KEY = "arena_record_noti"
---@type string
REMOTE_CONFIG_ACCOUNT_KEY = "remote_config"
--- @type string
DEVICE_INFO = IS_APPLE_REVIEW and U_SystemInfo.deviceUniqueIdentifier or U_GameUtils.GetDeviceID()
--- @type boolean
IS_VIET_NAM_VALIDATE = U_Application.productName == "Kỷ Nguyên Triệu Hồi"
--- @type boolean
IS_VIET_NAM_PURCHASE = IS_VIET_NAM_VERSION and (IS_APPLE_REVIEW_IAP == false)
--- @type string
APPSFLYER_ID = IS_VIET_NAM_VERSION and "1541083473" or "1501819108"
