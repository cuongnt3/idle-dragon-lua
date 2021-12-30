--- @class XLua_LuaTable
XLua_LuaTable = Class(XLua_LuaTable)

--- @return void
function XLua_LuaTable:Ctor()
	--- @type System_Object
	self.Item = nil
	--- @type System_Object
	self.Item = nil
	--- @type System_Int32
	self.Length = nil
end

--- @return System_Void
--- @param key CS_TKey
--- @param value CS_TValue&
function XLua_LuaTable:Get(key, value)
end

--- @return System_Boolean
--- @param key CS_TKey
function XLua_LuaTable:ContainsKey(key)
end

--- @return System_Void
--- @param key CS_TKey
--- @param value CS_TValue
function XLua_LuaTable:Set(key, value)
end

--- @return CS_T
--- @param path System_String
function XLua_LuaTable:GetInPath(path)
end

--- @return System_Void
--- @param path System_String
--- @param val CS_T
function XLua_LuaTable:SetInPath(path, val)
end

--- @return System_Void
--- @param action System_Action`2[TKey,TValue]
function XLua_LuaTable:ForEach(action)
end

--- @return System_Collections_IEnumerable
function XLua_LuaTable:GetKeys()
end

--- @return System_Collections_Generic_IEnumerable`1[T]
function XLua_LuaTable:GetKeys()
end

--- @return CS_T
--- @param key System_Object
function XLua_LuaTable:Get(key)
end

--- @return CS_TValue
--- @param key CS_TKey
function XLua_LuaTable:Get(key)
end

--- @return CS_TValue
--- @param key System_String
function XLua_LuaTable:Get(key)
end

--- @return System_Void
--- @param metaTable XLua_LuaTable
function XLua_LuaTable:SetMetaTable(metaTable)
end

--- @return CS_T
function XLua_LuaTable:Cast()
end

--- @return System_String
function XLua_LuaTable:ToString()
end

--- @return System_Void
function XLua_LuaTable:Dispose()
end

--- @return System_Void
--- @param disposeManagedResources System_Boolean
function XLua_LuaTable:Dispose(disposeManagedResources)
end

--- @return System_Boolean
--- @param o System_Object
function XLua_LuaTable:Equals(o)
end

--- @return System_Int32
function XLua_LuaTable:GetHashCode()
end

--- @return System_Type
function XLua_LuaTable:GetType()
end
