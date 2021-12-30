--- @class NetConfig
NetConfig = {
    --- loadBalancer
    loadBalancerIP = "35.240.141.95",
    loadBalancerPort = 8150,

    --- logicServer
    logicServerIP = "35.240.141.95",
    logicServerPort = 8151,

    --- logServer
    logServerIP = "35.240.141.95",
    logServerPort = 8105,

    isUseBalancingServer = true,
    googleStorage = "http://35.201.99.208/",
    digitalStorage = "https://summonersera.com.sgp1.cdn.digitaloceanspaces.com/",
    backUpRemoteConfigIp = "34.68.206.76",
    REMOTE_URL = "http://%s:%d/remote/config?key=%s",

    --- CONFIG SUNGAME
    logicServerIPSunGameSandbox = "35.198.248.251",
    logicServerIPSunGameProduction = "35.198.239.3",

    isProduction = true,

    --- PBE server
    logicServerPBE = "35.240.145.190",
}

function CheckConfigSunGame(isProduction)
    if IS_VIET_NAM_VERSION then
        NetConfig.isUseBalancingServer = false
        if isProduction then
            NetConfig.logicServerIP = NetConfig.logicServerIPSunGameProduction
        else
            NetConfig.logicServerIP = NetConfig.logicServerIPSunGameSandbox
        end
        NetConfig.logicServerPort = 8100
    end
end

CheckConfigSunGame(true)