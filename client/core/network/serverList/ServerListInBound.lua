--- @class ServerListInBound
ServerListInBound = Class(ServerListInBound)

function ServerListInBound:Ctor()
    --- @type Dictionary  --<key: serverId, value: clusterId>
    self.serverDict = nil
    --- @type Dictionary  --<key: clusterId, value: listServer>
    self.clusterDict = nil
    --- @type number
    self.clusterRegister = nil
    self.newCluster = nil
end

--- @param buffer UnifiedNetwork_ByteBuf
function ServerListInBound:ReadBuffer(buffer)
    ---@type number
    local size = buffer:GetShort()
    ---@type Dictionary  --<key: serverId, value: clusterId>
    self.serverDict = Dictionary()
    ---@type Dictionary  --<key: clusterId, value: listServer>
    self.clusterDict = Dictionary()
    for _ = 1, size do
        local serverId = buffer:GetShort()
        local clusterId = buffer:GetShort()
        if self.newCluster == nil or self.newCluster < clusterId then
            self.newCluster = clusterId
        end
        self.serverDict:Add(serverId, clusterId)
        local listServer
        if self.clusterDict:IsContainValue(clusterId) then
            listServer = self.clusterDict:Get(clusterId)
        else
            listServer = List()
            self.clusterDict:Add(clusterId, listServer)
        end
        listServer:Add(serverId)
    end
    self.clusterRegister = nil
end

function ServerListInBound:IsAvailableToRequest()
    return self.serverDict == nil or self.clusterDict == nil
end

function ServerListInBound:Clear()
    self.serverDict = nil
    self.clusterDict = nil
end

--- @return number
--- @param serverId number
function ServerListInBound:GetCluster(serverId)
    return self.serverDict:Get(serverId)
end

--- @return List
--- @param clusterId number
function ServerListInBound:GetServers(clusterId)
    return self.clusterDict:Get(clusterId)
end

function ServerListInBound:GetClusterRegister()
    if self.clusterRegister == nil then
        local server = -1
        for serverId, clusterId in pairs(self.serverDict:GetItems()) do
            if serverId > server and PlayerSetting.IsCanShowServer(serverId) then
                server = serverId
                self.clusterRegister = clusterId
            end
        end
    end
    return self.clusterRegister
end

--- @return void
function ServerListInBound.GetServerRegister()
    local server = -1
    -----@type ServerListInBound
    --local serverListInBound = zg.playerData:GetServerListInBound()
    --if serverListInBound ~= nil then
    --    if serverListInBound.serverDict ~= nil then
    --        if serverListInBound.clusterRegister == nil then
    --            for serverId, v in pairs(serverListInBound.serverDict:GetItems()) do
    --                if serverId > server and PlayerSetting.IsCanShowServer(serverId) then
    --                    server = serverId
    --                end
    --            end
    --        else
    --            for serverId, clusterId in pairs(serverListInBound.serverDict:GetItems()) do
    --                if clusterId == serverListInBound.clusterRegister then
    --                    server = serverId
    --                    break
    --                end
    --            end
    --        end
    --    end
    --end
    if IS_APPLE_REVIEW_IAP == true then
        server = SERVER_APPLE_REVIEW
    end
    return server
end

--- @return void
function ServerListInBound.Request(callbackSuccess, callbackFailed)
    local callback = function(result)
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            zg.playerData:GetServerListInBound():ReadBuffer(buffer)
        end

        local onSuccess = function()
            if callbackSuccess ~= nil then
                callbackSuccess()
            end
        end

        local onFailed = function(logicCode)
            SmartPoolUtils.LogicCodeNotification(logicCode)
            zg.playerData:GetServerListInBound():Clear()
            if callbackFailed ~= nil then
                callbackFailed()
            end
        end
        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
    end
    NetworkUtils.Request(OpCode.SERVER_LIST_GET, nil, callback, false)
end

--- @return void
function ServerListInBound:ToString()
    return LogUtils.ToDetail(self)
end

function ServerListInBound.Validate(callback)
    local serverListInBound = zg.playerData:GetServerListInBound()
    if serverListInBound == nil or serverListInBound:IsAvailableToRequest() then
        ServerListInBound.Request(callback)
    else
        callback()
    end
end

return ServerListInBound