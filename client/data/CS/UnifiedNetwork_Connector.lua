--- @class UnifiedNetwork_Connector
UnifiedNetwork_Connector = Class(UnifiedNetwork_Connector)

--- @return void
function UnifiedNetwork_Connector:Ctor()
	--- @type UnifiedNetwork_MessagePacker
	self.messagePacker = nil
	--- @type UnifiedNetwork_ConnectionEvent
	self.OnConnected = nil
	--- @type UnifiedNetwork_ConnectionEvent
	self.OnConnecting = nil
	--- @type UnifiedNetwork_ConnectionEvent
	self.OnDisconnected = nil
	--- @type UnifiedNetwork_ConnectionEvent
	self.OnDisconnecting = nil
end

--- @return System_Boolean
--- @param options UnifiedNetwork_ConnectorOptions
function UnifiedNetwork_Connector:Initialize(options)
end

--- @return System_Void
function UnifiedNetwork_Connector:Connect()
end

--- @return System_Void
function UnifiedNetwork_Connector:Disconnect()
end

--- @return System_Boolean
function UnifiedNetwork_Connector:IsConnected()
end

--- @return System_Void
function UnifiedNetwork_Connector:Ping()
end

--- @return System_Void
--- @param opCode System_Byte
function UnifiedNetwork_Connector:Send(opCode)
end

--- @return System_Void
--- @param opCode System_Byte
--- @param outbound UnifiedNetwork_Outbound
function UnifiedNetwork_Connector:Send(opCode, outbound)
end

--- @return System_Void
--- @param opCode System_Byte
--- @param paramList System_Object[]
function UnifiedNetwork_Connector:Send(opCode, paramList)
end

--- @return System_Void
--- @param opCode System_Byte
--- @param inbound UnifiedNetwork_Inbound
--- @param onReceived UnifiedNetwork_OnMessageReceived
function UnifiedNetwork_Connector:RegisterReceiver(opCode, inbound, onReceived)
end

--- @return UnifiedNetwork_ConnectorOptions
function UnifiedNetwork_Connector:GetConnectorOptions()
end

--- @return System_String
function UnifiedNetwork_Connector:GetAddress()
end

--- @return UnifiedNetwork_ConnectionState
function UnifiedNetwork_Connector:GetConnectionState()
end

--- @return System_Double
function UnifiedNetwork_Connector:GetLatestLatency()
end

--- @return System_Double
function UnifiedNetwork_Connector:GetAverageLatency()
end

--- @return System_Void
function UnifiedNetwork_Connector:ResetPing()
end

--- @return System_Double
--- @param unit UnifiedNetwork_BandwidthUnit
function UnifiedNetwork_Connector:GetTotalBandwidth(unit)
end

--- @return System_Double
--- @param unit UnifiedNetwork_BandwidthUnit
function UnifiedNetwork_Connector:GetInboundBandwidth(unit)
end

--- @return System_Collections_Generic_Dictionary`2[System_Int64,System_Int64]
function UnifiedNetwork_Connector:GetInboundBandwidthStats()
end

--- @return System_Double
--- @param unit UnifiedNetwork_BandwidthUnit
function UnifiedNetwork_Connector:GetOutboundBandwidth(unit)
end

--- @return System_Collections_Generic_Dictionary`2[System_Int64,System_Int64]
function UnifiedNetwork_Connector:GetOutboundBandwidthStats()
end

--- @return System_Void
function UnifiedNetwork_Connector:ResetBandwidthStats()
end

--- @return System_Void
function UnifiedNetwork_Connector:Dispose()
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_Connector:Equals(obj)
end

--- @return System_Int32
function UnifiedNetwork_Connector:GetHashCode()
end

--- @return System_Type
function UnifiedNetwork_Connector:GetType()
end

--- @return System_String
function UnifiedNetwork_Connector:ToString()
end
