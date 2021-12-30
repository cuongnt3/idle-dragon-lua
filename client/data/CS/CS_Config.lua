--- @class CS_Config
CS_Config = Class(CS_Config)

--- @return void
function CS_Config:Ctor()
	--- @type System_Int32
	self.luaVersionConfig = nil
	--- @type System_Int32
	self.csvVersionConfig = nil
	--- @type System_Int32
	self.luaLoaderVersionConfig = nil
	--- @type System_String
	self.luaConfig = nil
	--- @type System_String
	self.luaLoader = nil
	--- @type System_String
	self.csvConfig = nil
	--- @type CS_RunMode
	self.runMode = nil
	--- @type System_Int32
	self.runModeLua = nil
	--- @type System_Boolean
	self.serverAssetBundle = nil
	--- @type System_Boolean
	self.isDevMode = nil
	--- @type System_String
	self.Password = nil
	--- @type System_String
	self.Encrypt = nil
	--- @type System_String
	self.xluaUrl = nil
	--- @type System_String
	self.urlServer = nil
	--- @type System_String
	self.remoteLogURL = nil
	--- @type System_String
	self.luaUrl = nil
	--- @type CS_Config
	self.instance = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type System_String
	self.luaVersionConfigKey = nil
	--- @type System_String
	self.luaLoaderVersionConfigKey = nil
	--- @type System_String
	self.csvVersionConfigKey = nil
	--- @type System_String
	self.versionConfigFile = nil
	--- @type System_String
	self.luaConfigFile = nil
	--- @type System_String
	self.luaLoaderFile = nil
	--- @type System_String
	self.csvConfigFile = nil
end

--- @return System_Void
function CS_Config:SetDirty()
end

--- @return System_Int32
function CS_Config:GetInstanceID()
end

--- @return System_Int32
function CS_Config:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_Config:Equals(other)
end

--- @return System_String
function CS_Config:ToString()
end

--- @return System_Type
function CS_Config:GetType()
end
