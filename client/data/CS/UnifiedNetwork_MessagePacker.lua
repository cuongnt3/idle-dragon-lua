--- @class UnifiedNetwork_MessagePacker
UnifiedNetwork_MessagePacker = Class(UnifiedNetwork_MessagePacker)

--- @return void
function UnifiedNetwork_MessagePacker:Ctor()
end

--- @return System_Void
function UnifiedNetwork_MessagePacker:Reset()
end

--- @return System_Void
--- @param message UnifiedNetwork_Message
function UnifiedNetwork_MessagePacker:ReleaseSendMessage(message)
end

--- @return System_Void
--- @param message UnifiedNetwork_Message
function UnifiedNetwork_MessagePacker:ReleaseReceiveMessage(message)
end

--- @return UnifiedNetwork_Message
--- @param opCode System_Byte
function UnifiedNetwork_MessagePacker:BeginCreateMessageToSend(opCode)
end

--- @return System_Void
--- @param message UnifiedNetwork_Message
function UnifiedNetwork_MessagePacker:EndCreateMessageToSend(message)
end

--- @return System_Collections_Generic_List`1[UnifiedNetwork_Message]
--- @param receivedData System_Byte[]
--- @param bytesNeedRead System_Int32
function UnifiedNetwork_MessagePacker:CreateMessageToReceive(receivedData, bytesNeedRead)
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_MessagePacker:Equals(obj)
end

--- @return System_Int32
function UnifiedNetwork_MessagePacker:GetHashCode()
end

--- @return System_Type
function UnifiedNetwork_MessagePacker:GetType()
end

--- @return System_String
function UnifiedNetwork_MessagePacker:ToString()
end
