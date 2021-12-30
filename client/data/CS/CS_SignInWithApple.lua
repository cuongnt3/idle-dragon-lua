--- @class CS_SignInWithApple
CS_SignInWithApple = Class(CS_SignInWithApple)

--- @return void
function CS_SignInWithApple:Ctor()
	--- @type System_Action`1[UserInfo]
	self.loginSuccess = nil
	--- @type System_Action`1[System_String]
	self.loginFail = nil
end

--- @return System_Void
--- @param _loginSuccess System_Action`1[UserInfo]
--- @param _loginFail System_Action`1[System_String]
function CS_SignInWithApple:Login(_loginSuccess, _loginFail)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_SignInWithApple:Equals(obj)
end

--- @return System_Int32
function CS_SignInWithApple:GetHashCode()
end

--- @return System_Type
function CS_SignInWithApple:GetType()
end

--- @return System_String
function CS_SignInWithApple:ToString()
end
