--- @class UnityEngine_Object
UnityEngine_Object = Class(UnityEngine_Object)

--- @return void
function UnityEngine_Object:Ctor()
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Int32
function UnityEngine_Object:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Object:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Object:Equals(other)
end

--- @return UnityEngine_Object
--- @param original UnityEngine_Object
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Object:Instantiate(original, position, rotation)
end

--- @return UnityEngine_Object
--- @param original UnityEngine_Object
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
--- @param parent UnityEngine_Transform
function UnityEngine_Object:Instantiate(original, position, rotation, parent)
end

--- @return UnityEngine_Object
--- @param original UnityEngine_Object
function UnityEngine_Object:Instantiate(original)
end

--- @return UnityEngine_Object
--- @param original UnityEngine_Object
--- @param parent UnityEngine_Transform
function UnityEngine_Object:Instantiate(original, parent)
end

--- @return UnityEngine_Object
--- @param original UnityEngine_Object
--- @param parent UnityEngine_Transform
--- @param instantiateInWorldSpace System_Boolean
function UnityEngine_Object:Instantiate(original, parent, instantiateInWorldSpace)
end

--- @return CS_T
--- @param original CS_T
function UnityEngine_Object:Instantiate(original)
end

--- @return CS_T
--- @param original CS_T
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Object:Instantiate(original, position, rotation)
end

--- @return CS_T
--- @param original CS_T
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
--- @param parent UnityEngine_Transform
function UnityEngine_Object:Instantiate(original, position, rotation, parent)
end

--- @return CS_T
--- @param original CS_T
--- @param parent UnityEngine_Transform
function UnityEngine_Object:Instantiate(original, parent)
end

--- @return CS_T
--- @param original CS_T
--- @param parent UnityEngine_Transform
--- @param worldPositionStays System_Boolean
function UnityEngine_Object:Instantiate(original, parent, worldPositionStays)
end

--- @return System_Void
--- @param obj UnityEngine_Object
--- @param t System_Single
function UnityEngine_Object:Destroy(obj, t)
end

--- @return System_Void
--- @param obj UnityEngine_Object
function UnityEngine_Object:Destroy(obj)
end

--- @return System_Void
--- @param obj UnityEngine_Object
--- @param allowDestroyingAssets System_Boolean
function UnityEngine_Object:DestroyImmediate(obj, allowDestroyingAssets)
end

--- @return System_Void
--- @param obj UnityEngine_Object
function UnityEngine_Object:DestroyImmediate(obj)
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_Object:FindObjectsOfType(type)
end

--- @return System_Void
--- @param target UnityEngine_Object
function UnityEngine_Object:DontDestroyOnLoad(target)
end

--- @return System_Void
--- @param obj UnityEngine_Object
--- @param t System_Single
function UnityEngine_Object:DestroyObject(obj, t)
end

--- @return System_Void
--- @param obj UnityEngine_Object
function UnityEngine_Object:DestroyObject(obj)
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_Object:FindSceneObjectsOfType(type)
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_Object:FindObjectsOfTypeIncludingAssets(type)
end

--- @return CS_T[]
function UnityEngine_Object:FindObjectsOfType()
end

--- @return CS_T
function UnityEngine_Object:FindObjectOfType()
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_Object:FindObjectsOfTypeAll(type)
end

--- @return UnityEngine_Object
--- @param type System_Type
function UnityEngine_Object:FindObjectOfType(type)
end

--- @return System_String
function UnityEngine_Object:ToString()
end

--- @return System_Type
function UnityEngine_Object:GetType()
end
