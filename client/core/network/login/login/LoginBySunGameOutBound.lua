--- @class LoginBySunGameOutBound : OutBound
LoginBySunGameOutBound = Class(LoginBySunGameOutBound, OutBound)
--- @return void
function LoginBySunGameOutBound:Ctor(token, uuid)
    --- @type number
    self.authMethod = AuthMethod.LOGIN_BY_SUN_GAME
    --- @type string
    self.token = token
    --- @type string
    self.uuid = uuid
    --- @type string
    self.advertisingId = nil
end

--- @return void
function LoginBySunGameOutBound:SaveData()
    --PlayerSettingData.authMethod = self.authMethod
    --PlayerSettingData.loginId = self.userId
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function LoginBySunGameOutBound:Serialize(buffer)
    --- @type string
    self.clientHandShake = SHA2.shaHex256(string.format("%s%s%s%s",
            zg.networkMgr.handShake.sharedSecret, zg.networkMgr.handShake.sessionSecret, self.token, self.uuid))
    buffer:PutByte(self.authMethod)
    buffer:PutString(self.token, false)
    buffer:PutString(self.uuid, false)
    buffer:PutString(self.clientHandShake, false)
    if self.advertisingId ~= nil then
        buffer:PutString(self.advertisingId, false)
    end
end