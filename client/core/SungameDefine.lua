--- @class SungameDefine
SungameDefine = {
    HASH = "Hash",
    UUID = "UuId",
    PARTNER = 0,
    IS_PROD = NetConfig.isProduction,
    DOMAIN_DEV = "https://test-id.sungame.vn",
    DOMAIN_PROD = "https://id.sungame.vn",
    API_DOMAIN_DEV = "https://test-api.sungame.vn",
    API_DOMAIN_PROD = "https://api.sungame.vn",
    QUERY_PARAMS = "/popup?service_id={0}&game_versioncode={1}&package={2}&engine=unity&os_id={3}",

    QUERY_PARAMS_IAP = "/popup/checkout?api_token={0}&game_versioncode={1}&package={2}&engine=unity&os_id={3}&service_id={4}",
    QUERY_PARAMS_PRODUCT = "/popup/checkout?api_token={0}&game_versioncode={1}&package={2}&engine=unity&os_id={3}&service_id={4}&product_id={5}",
}