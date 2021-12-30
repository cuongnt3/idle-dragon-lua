--- @class UnityEngine_Gyroscope
UnityEngine_Gyroscope = Class(UnityEngine_Gyroscope)

--- @return void
function UnityEngine_Gyroscope:Ctor()
	--- @type UnityEngine_Vector3
	self.rotationRate = nil
	--- @type UnityEngine_Vector3
	self.rotationRateUnbiased = nil
	--- @type UnityEngine_Vector3
	self.gravity = nil
	--- @type UnityEngine_Vector3
	self.userAcceleration = nil
	--- @type UnityEngine_Quaternion
	self.attitude = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Single
	self.updateInterval = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Gyroscope:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Gyroscope:GetHashCode()
end

--- @return System_Type
function UnityEngine_Gyroscope:GetType()
end

--- @return System_String
function UnityEngine_Gyroscope:ToString()
end
