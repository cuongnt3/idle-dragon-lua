--- @class UnityEngine_Quaternion
UnityEngine_Quaternion = Class(UnityEngine_Quaternion)

--- @return void
function UnityEngine_Quaternion:Ctor()
	--- @type System_Single
	self.Item = nil
	--- @type UnityEngine_Quaternion
	self.identity = nil
	--- @type UnityEngine_Vector3
	self.eulerAngles = nil
	--- @type UnityEngine_Quaternion
	self.normalized = nil
	--- @type System_Single
	self.x = nil
	--- @type System_Single
	self.y = nil
	--- @type System_Single
	self.z = nil
	--- @type System_Single
	self.w = nil
	--- @type System_Single
	self.kEpsilon = nil
end

--- @return UnityEngine_Quaternion
--- @param fromDirection UnityEngine_Vector3
--- @param toDirection UnityEngine_Vector3
function UnityEngine_Quaternion:FromToRotation(fromDirection, toDirection)
end

--- @return UnityEngine_Quaternion
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Quaternion:Inverse(rotation)
end

--- @return UnityEngine_Quaternion
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
--- @param t System_Single
function UnityEngine_Quaternion:Slerp(a, b, t)
end

--- @return UnityEngine_Quaternion
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
--- @param t System_Single
function UnityEngine_Quaternion:SlerpUnclamped(a, b, t)
end

--- @return UnityEngine_Quaternion
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
--- @param t System_Single
function UnityEngine_Quaternion:Lerp(a, b, t)
end

--- @return UnityEngine_Quaternion
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
--- @param t System_Single
function UnityEngine_Quaternion:LerpUnclamped(a, b, t)
end

--- @return UnityEngine_Quaternion
--- @param angle System_Single
--- @param axis UnityEngine_Vector3
function UnityEngine_Quaternion:AngleAxis(angle, axis)
end

--- @return UnityEngine_Quaternion
--- @param forward UnityEngine_Vector3
--- @param upwards UnityEngine_Vector3
function UnityEngine_Quaternion:LookRotation(forward, upwards)
end

--- @return UnityEngine_Quaternion
--- @param forward UnityEngine_Vector3
function UnityEngine_Quaternion:LookRotation(forward)
end

--- @return System_Void
--- @param newX System_Single
--- @param newY System_Single
--- @param newZ System_Single
--- @param newW System_Single
function UnityEngine_Quaternion:Set(newX, newY, newZ, newW)
end

--- @return System_Single
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
function UnityEngine_Quaternion:Dot(a, b)
end

--- @return System_Void
--- @param view UnityEngine_Vector3
function UnityEngine_Quaternion:SetLookRotation(view)
end

--- @return System_Void
--- @param view UnityEngine_Vector3
--- @param up UnityEngine_Vector3
function UnityEngine_Quaternion:SetLookRotation(view, up)
end

--- @return System_Single
--- @param a UnityEngine_Quaternion
--- @param b UnityEngine_Quaternion
function UnityEngine_Quaternion:Angle(a, b)
end

--- @return UnityEngine_Quaternion
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Quaternion:Euler(x, y, z)
end

--- @return UnityEngine_Quaternion
--- @param euler UnityEngine_Vector3
function UnityEngine_Quaternion:Euler(euler)
end

--- @return System_Void
--- @param angle System_Single&
--- @param axis UnityEngine_Vector3&
function UnityEngine_Quaternion:ToAngleAxis(angle, axis)
end

--- @return System_Void
--- @param fromDirection UnityEngine_Vector3
--- @param toDirection UnityEngine_Vector3
function UnityEngine_Quaternion:SetFromToRotation(fromDirection, toDirection)
end

--- @return UnityEngine_Quaternion
--- @param from UnityEngine_Quaternion
--- @param to UnityEngine_Quaternion
--- @param maxDegreesDelta System_Single
function UnityEngine_Quaternion:RotateTowards(from, to, maxDegreesDelta)
end

--- @return UnityEngine_Quaternion
--- @param q UnityEngine_Quaternion
function UnityEngine_Quaternion:Normalize(q)
end

--- @return System_Void
function UnityEngine_Quaternion:Normalize()
end

--- @return System_Int32
function UnityEngine_Quaternion:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Quaternion:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Quaternion
function UnityEngine_Quaternion:Equals(other)
end

--- @return System_String
function UnityEngine_Quaternion:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Quaternion:ToString(format)
end

--- @return UnityEngine_Quaternion
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Quaternion:EulerRotation(x, y, z)
end

--- @return UnityEngine_Quaternion
--- @param euler UnityEngine_Vector3
function UnityEngine_Quaternion:EulerRotation(euler)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Quaternion:SetEulerRotation(x, y, z)
end

--- @return System_Void
--- @param euler UnityEngine_Vector3
function UnityEngine_Quaternion:SetEulerRotation(euler)
end

--- @return UnityEngine_Vector3
function UnityEngine_Quaternion:ToEuler()
end

--- @return UnityEngine_Quaternion
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Quaternion:EulerAngles(x, y, z)
end

--- @return UnityEngine_Quaternion
--- @param euler UnityEngine_Vector3
function UnityEngine_Quaternion:EulerAngles(euler)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3&
--- @param angle System_Single&
function UnityEngine_Quaternion:ToAxisAngle(axis, angle)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Quaternion:SetEulerAngles(x, y, z)
end

--- @return System_Void
--- @param euler UnityEngine_Vector3
function UnityEngine_Quaternion:SetEulerAngles(euler)
end

--- @return UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Quaternion:ToEulerAngles(rotation)
end

--- @return UnityEngine_Vector3
function UnityEngine_Quaternion:ToEulerAngles()
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Quaternion:SetAxisAngle(axis, angle)
end

--- @return UnityEngine_Quaternion
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Quaternion:AxisAngle(axis, angle)
end

--- @return System_Type
function UnityEngine_Quaternion:GetType()
end
