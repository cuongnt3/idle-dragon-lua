--- @class LoginBySunGameUserIdOutBound : OutBound
LoginBySunGameUserIdOutBound = Class(LoginBySunGameUserIdOutBound, OutBound)

--- @param userId number
function LoginBySunGameUserIdOutBound:Ctor(userId)
    --- @type number
    self.authMethod = AuthMethod.LOGIN_BY_SUN_GAME_USER_ID
    --- @type number
    self.userId = userId
    --- @type string
    self.advertisingId = nil
end

--- @return void
function LoginBySunGameUserIdOutBound:SaveData()
    PlayerSettingData.authMethod = self.authMethod
    PlayerSettingData.loginId = self.userId
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function LoginBySunGameUserIdOutBound:Serialize(buffer)
    --- @type string
    self.clientHandShake = SHA2.shaHex256(string.format("%s%s%s",
            zg.networkMgr.handShake.sharedSecret, zg.networkMgr.handShake.sessionSecret, self.userId))
    buffer:PutByte(self.authMethod)
    buffer:PutLong(self.userId)
    buffer:PutString(self.clientHandShake, false)
    if self.advertisingId ~= nil then
        buffer:PutString(self.advertisingId, false)
    end
end