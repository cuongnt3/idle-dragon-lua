--- @class XLua_LuaEnv
XLua_LuaEnv = Class(XLua_LuaEnv)

--- @return void
function XLua_LuaEnv:Ctor()
	--- @type XLua_LuaTable
	self.Global = nil
	--- @type System_Int32
	self.GcPause = nil
	--- @type System_Int32
	self.GcStepmul = nil
	--- @type System_Int32
	self.Memroy = nil
end

--- @return System_Void
--- @param initer System_Action`2[XLua_LuaEnv,XLua_ObjectTranslator]
function XLua_LuaEnv:AddIniter(initer)
end

--- @return CS_T
--- @param chunk System_Byte[]
--- @param chunkName System_String
--- @param env XLua_LuaTable
function XLua_LuaEnv:LoadString(chunk, chunkName, env)
end

--- @return CS_T
--- @param chunk System_String
--- @param chunkName System_String
--- @param env XLua_LuaTable
function XLua_LuaEnv:LoadString(chunk, chunkName, env)
end

--- @return XLua_LuaFunction
--- @param chunk System_String
--- @param chunkName System_String
--- @param env XLua_LuaTable
function XLua_LuaEnv:LoadString(chunk, chunkName, env)
end

--- @return System_Object[]
--- @param chunk System_Byte[]
--- @param chunkName System_String
--- @param env XLua_LuaTable
function XLua_LuaEnv:DoString(chunk, chunkName, env)
end

--- @return System_Object[]
--- @param chunk System_String
--- @param chunkName System_String
--- @param env XLua_LuaTable
function XLua_LuaEnv:DoString(chunk, chunkName, env)
end

--- @return System_Void
--- @param type System_Type
--- @param alias System_String
function XLua_LuaEnv:Alias(type, alias)
end

--- @return System_Void
function XLua_LuaEnv:Tick()
end

--- @return System_Void
function XLua_LuaEnv:GC()
end

--- @return XLua_LuaTable
function XLua_LuaEnv:NewTable()
end

--- @return System_Void
function XLua_LuaEnv:Dispose()
end

--- @return System_Void
--- @param dispose System_Boolean
function XLua_LuaEnv:Dispose(dispose)
end

--- @return System_Void
--- @param oldTop System_Int32
function XLua_LuaEnv:ThrowExceptionFromError(oldTop)
end

--- @return System_Void
--- @param loader XLua_LuaEnv_CustomLoader
function XLua_LuaEnv:AddLoader(loader)
end

--- @return System_Void
--- @param name System_String
--- @param initer XLua_LuaDLL_lua_CSFunction
function XLua_LuaEnv:AddBuildin(name, initer)
end

--- @return System_Void
function XLua_LuaEnv:FullGc()
end

--- @return System_Void
function XLua_LuaEnv:StopGc()
end

--- @return System_Void
function XLua_LuaEnv:RestartGc()
end

--- @return System_Boolean
--- @param data System_Int32
function XLua_LuaEnv:GcStep(data)
end

--- @return System_Boolean
--- @param obj System_Object
function XLua_LuaEnv:Equals(obj)
end

--- @return System_Int32
function XLua_LuaEnv:GetHashCode()
end

--- @return System_Type
function XLua_LuaEnv:GetType()
end

--- @return System_String
function XLua_LuaEnv:ToString()
end
