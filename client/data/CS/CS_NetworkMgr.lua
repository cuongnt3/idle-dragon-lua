--- @class CS_NetworkMgr
CS_NetworkMgr = Class(CS_NetworkMgr)

--- @return void
function CS_NetworkMgr:Ctor()
	--- @type UnifiedNetwork_Connector
	self.connector = nil
	--- @type System_Action`1[UnifiedNetwork_Message]
	self.ReceivePkgHandle = nil
end

--- @return System_Void
function CS_NetworkMgr:Update()
end

--- @return System_Void
--- @param dispatcher UnifiedNetwork_Dispatcher
function CS_NetworkMgr:Register(dispatcher)
end

--- @return System_Void
--- @param hostName System_String
--- @param port System_Int32
function CS_NetworkMgr:Connect(hostName, port)
end

--- @return System_Void
function CS_NetworkMgr:Disconnect()
end

--- @return System_Void
function CS_NetworkMgr:OnApplicationQuit()
end

--- @return System_Boolean
--- @param obj System_Object
function CS_NetworkMgr:Equals(obj)
end

--- @return System_Int32
function CS_NetworkMgr:GetHashCode()
end

--- @return System_Type
function CS_NetworkMgr:GetType()
end

--- @return System_String
function CS_NetworkMgr:ToString()
end
