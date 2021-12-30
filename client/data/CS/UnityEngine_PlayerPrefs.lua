--- @class UnityEngine_PlayerPrefs
UnityEngine_PlayerPrefs = Class(UnityEngine_PlayerPrefs)

--- @return void
function UnityEngine_PlayerPrefs:Ctor()
end

--- @return System_Void
--- @param key System_String
--- @param value System_Int32
function UnityEngine_PlayerPrefs:SetInt(key, value)
end

--- @return System_Int32
--- @param key System_String
--- @param defaultValue System_Int32
function UnityEngine_PlayerPrefs:GetInt(key, defaultValue)
end

--- @return System_Int32
--- @param key System_String
function UnityEngine_PlayerPrefs:GetInt(key)
end

--- @return System_Void
--- @param key System_String
--- @param value System_Single
function UnityEngine_PlayerPrefs:SetFloat(key, value)
end

--- @return System_Single
--- @param key System_String
--- @param defaultValue System_Single
function UnityEngine_PlayerPrefs:GetFloat(key, defaultValue)
end

--- @return System_Single
--- @param key System_String
function UnityEngine_PlayerPrefs:GetFloat(key)
end

--- @return System_Void
--- @param key System_String
--- @param value System_String
function UnityEngine_PlayerPrefs:SetString(key, value)
end

--- @return System_String
--- @param key System_String
--- @param defaultValue System_String
function UnityEngine_PlayerPrefs:GetString(key, defaultValue)
end

--- @return System_String
--- @param key System_String
function UnityEngine_PlayerPrefs:GetString(key)
end

--- @return System_Boolean
--- @param key System_String
function UnityEngine_PlayerPrefs:HasKey(key)
end

--- @return System_Void
--- @param key System_String
function UnityEngine_PlayerPrefs:DeleteKey(key)
end

--- @return System_Void
function UnityEngine_PlayerPrefs:DeleteAll()
end

--- @return System_Void
function UnityEngine_PlayerPrefs:Save()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_PlayerPrefs:Equals(obj)
end

--- @return System_Int32
function UnityEngine_PlayerPrefs:GetHashCode()
end

--- @return System_Type
function UnityEngine_PlayerPrefs:GetType()
end

--- @return System_String
function UnityEngine_PlayerPrefs:ToString()
end
