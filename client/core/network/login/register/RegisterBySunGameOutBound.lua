--- @class RegisterBySunGameOutBound : OutBound
RegisterBySunGameOutBound = Class(RegisterBySunGameOutBound, OutBound)
--- @return void
function RegisterBySunGameOutBound:Ctor(token, uuid, serverId)
    --- @type number
    self.authMethod = AuthMethod.REGISTER_BY_SUN_GAME
    --- @type string
    self.token = token
    --- @type string
    self.uuid = uuid
    --- @type number
    self.serverId = -1 --serverId or -1
    if IS_APPLE_REVIEW_IAP == true then
        self.serverId = SERVER_APPLE_REVIEW
    end
    --- @type string
    self.advertisingId = nil
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function RegisterBySunGameOutBound:Serialize(buffer)
    ---@type string
    self.clientHandShake = SHA2.shaHex256(string.format("%s%s%s%s", zg.networkMgr.handShake.sharedSecret,
            zg.networkMgr.handShake.sessionSecret, self.token, self.uuid))
    buffer:PutByte(self.authMethod)
    --buffer:PutByte(AuthProvider.GetCurrentAuthProvider())
    --buffer:PutString(DEVICE_INFO, false)
    buffer:PutString(self.token, false)
    buffer:PutString(self.uuid, false)
    buffer:PutString(self.clientHandShake, false)
    buffer:PutShort(self.serverId)
    if self.advertisingId ~= nil then
        buffer:PutString(self.advertisingId, false)
    end
end