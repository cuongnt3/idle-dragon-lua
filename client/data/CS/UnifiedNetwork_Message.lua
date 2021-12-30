--- @class UnifiedNetwork_Message
UnifiedNetwork_Message = Class(UnifiedNetwork_Message)

--- @return void
function UnifiedNetwork_Message:Ctor()
	--- @type System_Int32
	self.headerSize = nil
	--- @type System_Int32
	self.bodySize = nil
	--- @type System_Byte
	self.opCode = nil
	--- @type UnifiedNetwork_ByteBuf
	self.buffer = nil
	--- @type UnifiedNetwork_MessageState
	self.state = nil
end

--- @return System_Void
function UnifiedNetwork_Message:Reset()
end

--- @return System_Boolean
function UnifiedNetwork_Message:IsIncomplete()
end

--- @return System_Void
function UnifiedNetwork_Message:AddLengthPrefixHeader()
end

--- @return System_Void
--- @param opCode System_Byte
function UnifiedNetwork_Message:WriteOpCode(opCode)
end

--- @return System_Void
--- @param receivedData System_Byte[]
--- @param bytesNeedRead System_Int32
function UnifiedNetwork_Message:TryFillBuffer(receivedData, bytesNeedRead)
end

--- @return System_Int32
--- @param receivedData System_Byte[]
--- @param start System_Int32
--- @param remainingBytes System_Int32
function UnifiedNetwork_Message:TryFillBuffer(receivedData, start, remainingBytes)
end

--- @return System_String
function UnifiedNetwork_Message:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_Message:Equals(obj)
end

--- @return System_Int32
function UnifiedNetwork_Message:GetHashCode()
end

--- @return System_Type
function UnifiedNetwork_Message:GetType()
end
