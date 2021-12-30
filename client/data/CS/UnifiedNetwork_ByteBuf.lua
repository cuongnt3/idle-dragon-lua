--- @class UnifiedNetwork_ByteBuf
UnifiedNetwork_ByteBuf = Class(UnifiedNetwork_ByteBuf)

--- @return void
function UnifiedNetwork_ByteBuf:Ctor()
	--- @type System_Byte[]
	self.Data = nil
	--- @type System_Int32
	self.Size = nil
	--- @type System_Int32
	self.writePos = nil
	--- @type System_Int32
	self.readPos = nil
end

--- @return System_Void
function UnifiedNetwork_ByteBuf:Reset()
end

--- @return System_Void
--- @param offsetBytes System_Int32
function UnifiedNetwork_ByteBuf:OffsetWrite(offsetBytes)
end

--- @return System_Void
--- @param offsetBytes System_Int32
function UnifiedNetwork_ByteBuf:OffsetRead(offsetBytes)
end

--- @return System_Void
--- @param value System_SByte
function UnifiedNetwork_ByteBuf:PutSbyte(value)
end

--- @return System_Void
--- @param value System_Byte
function UnifiedNetwork_ByteBuf:PutByte(value)
end

--- @return System_Void
--- @param value System_Int16
function UnifiedNetwork_ByteBuf:PutShort(value)
end

--- @return System_Void
--- @param value System_UInt16
function UnifiedNetwork_ByteBuf:PutUshort(value)
end

--- @return System_Void
--- @param value System_Int32
function UnifiedNetwork_ByteBuf:PutInt(value)
end

--- @return System_Void
--- @param value System_UInt32
function UnifiedNetwork_ByteBuf:PutUint(value)
end

--- @return System_Void
--- @param value System_Int64
function UnifiedNetwork_ByteBuf:PutLong(value)
end

--- @return System_Void
--- @param value System_UInt64
function UnifiedNetwork_ByteBuf:PutUlong(value)
end

--- @return System_Void
--- @param value System_Single
function UnifiedNetwork_ByteBuf:PutFloat(value)
end

--- @return System_Void
--- @param value System_String
--- @param isUseByteIndicateLength System_Boolean
function UnifiedNetwork_ByteBuf:PutString(value, isUseByteIndicateLength)
end

--- @return System_Void
--- @param value System_Boolean
function UnifiedNetwork_ByteBuf:PutBool(value)
end

--- @return System_SByte
function UnifiedNetwork_ByteBuf:GetSbyte()
end

--- @return System_Byte
function UnifiedNetwork_ByteBuf:GetByte()
end

--- @return System_Int16
function UnifiedNetwork_ByteBuf:GetShort()
end

--- @return System_UInt16
function UnifiedNetwork_ByteBuf:GetUshort()
end

--- @return System_Int32
function UnifiedNetwork_ByteBuf:GetInt()
end

--- @return System_UInt32
function UnifiedNetwork_ByteBuf:GetUint()
end

--- @return System_Int64
function UnifiedNetwork_ByteBuf:GetLong()
end

--- @return System_UInt64
function UnifiedNetwork_ByteBuf:GetUlong()
end

--- @return System_Single
function UnifiedNetwork_ByteBuf:GetFloat()
end

--- @return System_String
--- @param isUseByteIndicateLength System_Boolean
function UnifiedNetwork_ByteBuf:GetString(isUseByteIndicateLength)
end

--- @return System_Boolean
function UnifiedNetwork_ByteBuf:GetBool()
end

--- @return System_Void
--- @param value System_SByte
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetSbyte(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Byte
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetByte(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Int16
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetShort(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_UInt16
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetUshort(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Int32
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetInt(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_UInt32
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetUint(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Int64
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetLong(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_UInt64
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetUlong(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Single
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetFloat(value, customWriteIndex)
end

--- @return System_Void
--- @param value System_Boolean
--- @param customWriteIndex System_Int32
function UnifiedNetwork_ByteBuf:SetBool(value, customWriteIndex)
end

--- @return System_Int32[]
function UnifiedNetwork_ByteBuf:GetByteArray()
end

--- @return System_Void
--- @param data System_Int32[]
function UnifiedNetwork_ByteBuf:PutByteArray(data)
end

--- @return System_Collections_Generic_List`1[System_Int32]
function UnifiedNetwork_ByteBuf:GetByteList()
end

--- @return System_Void
--- @param data System_Collections_Generic_List`1[System_Int32]
function UnifiedNetwork_ByteBuf:PutByteList(data)
end

--- @return System_Int32[]
function UnifiedNetwork_ByteBuf:GetShortArray()
end

--- @return System_Void
--- @param data System_Int32[]
function UnifiedNetwork_ByteBuf:PutShortArray(data)
end

--- @return System_Collections_Generic_List`1[System_Int32]
function UnifiedNetwork_ByteBuf:GetShortList()
end

--- @return System_Void
--- @param data System_Collections_Generic_List`1[System_Int32]
function UnifiedNetwork_ByteBuf:PutShortList(data)
end

--- @return System_Int64[]
function UnifiedNetwork_ByteBuf:GetLongArray()
end

--- @return System_Void
--- @param data System_Int64[]
function UnifiedNetwork_ByteBuf:PutLongArray(data)
end

--- @return System_Collections_Generic_List`1[System_Int64]
function UnifiedNetwork_ByteBuf:GetLongList()
end

--- @return System_Void
--- @param data System_Collections_Generic_List`1[System_Int64]
function UnifiedNetwork_ByteBuf:PutLongList(data)
end

--- @return System_Single[]
function UnifiedNetwork_ByteBuf:GetFloatArray()
end

--- @return System_Void
--- @param data System_Single[]
function UnifiedNetwork_ByteBuf:PutFloatArray(data)
end

--- @return System_Collections_Generic_List`1[System_Single]
function UnifiedNetwork_ByteBuf:GetFloatList()
end

--- @return System_Void
--- @param data System_Collections_Generic_List`1[System_Single]
function UnifiedNetwork_ByteBuf:PutFloatList(data)
end

--- @return System_String[]
function UnifiedNetwork_ByteBuf:GetStringArray()
end

--- @return System_Void
--- @param data System_String[]
function UnifiedNetwork_ByteBuf:PutStringArray(data)
end

--- @return System_Collections_Generic_List`1[System_String]
function UnifiedNetwork_ByteBuf:GetStringList()
end

--- @return System_Void
--- @param data System_Collections_Generic_List`1[System_String]
function UnifiedNetwork_ByteBuf:PutStringList(data)
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_ByteBuf:PutObject(obj)
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_ByteBuf:Equals(obj)
end

--- @return System_Int32
function UnifiedNetwork_ByteBuf:GetHashCode()
end

--- @return System_Type
function UnifiedNetwork_ByteBuf:GetType()
end

--- @return System_String
function UnifiedNetwork_ByteBuf:ToString()
end
