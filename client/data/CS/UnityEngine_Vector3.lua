--- @class UnityEngine_Vector3
UnityEngine_Vector3 = Class(UnityEngine_Vector3)

--- @return void
function UnityEngine_Vector3:Ctor()
	--- @type System_Single
	self.Item = nil
	--- @type UnityEngine_Vector3
	self.normalized = nil
	--- @type System_Single
	self.magnitude = nil
	--- @type System_Single
	self.sqrMagnitude = nil
	--- @type UnityEngine_Vector3
	self.zero = nil
	--- @type UnityEngine_Vector3
	self.one = nil
	--- @type UnityEngine_Vector3
	self.forward = nil
	--- @type UnityEngine_Vector3
	self.back = nil
	--- @type UnityEngine_Vector3
	self.up = nil
	--- @type UnityEngine_Vector3
	self.down = nil
	--- @type UnityEngine_Vector3
	self.left = nil
	--- @type UnityEngine_Vector3
	self.right = nil
	--- @type UnityEngine_Vector3
	self.positiveInfinity = nil
	--- @type UnityEngine_Vector3
	self.negativeInfinity = nil
	--- @type UnityEngine_Vector3
	self.fwd = nil
	--- @type System_Single
	self.kEpsilon = nil
	--- @type System_Single
	self.x = nil
	--- @type System_Single
	self.y = nil
	--- @type System_Single
	self.z = nil
end

--- @return UnityEngine_Vector3
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
--- @param t System_Single
function UnityEngine_Vector3:Slerp(a, b, t)
end

--- @return UnityEngine_Vector3
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
--- @param t System_Single
function UnityEngine_Vector3:SlerpUnclamped(a, b, t)
end

--- @return System_Void
--- @param normal UnityEngine_Vector3&
--- @param tangent UnityEngine_Vector3&
function UnityEngine_Vector3:OrthoNormalize(normal, tangent)
end

--- @return System_Void
--- @param normal UnityEngine_Vector3&
--- @param tangent UnityEngine_Vector3&
--- @param binormal UnityEngine_Vector3&
function UnityEngine_Vector3:OrthoNormalize(normal, tangent, binormal)
end

--- @return UnityEngine_Vector3
--- @param current UnityEngine_Vector3
--- @param target UnityEngine_Vector3
--- @param maxRadiansDelta System_Single
--- @param maxMagnitudeDelta System_Single
function UnityEngine_Vector3:RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta)
end

--- @return UnityEngine_Vector3
--- @param excludeThis UnityEngine_Vector3
--- @param fromThat UnityEngine_Vector3
function UnityEngine_Vector3:Exclude(excludeThis, fromThat)
end

--- @return UnityEngine_Vector3
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
--- @param t System_Single
function UnityEngine_Vector3:Lerp(a, b, t)
end

--- @return UnityEngine_Vector3
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
--- @param t System_Single
function UnityEngine_Vector3:LerpUnclamped(a, b, t)
end

--- @return UnityEngine_Vector3
--- @param current UnityEngine_Vector3
--- @param target UnityEngine_Vector3
--- @param maxDistanceDelta System_Single
function UnityEngine_Vector3:MoveTowards(current, target, maxDistanceDelta)
end

--- @return UnityEngine_Vector3
--- @param current UnityEngine_Vector3
--- @param target UnityEngine_Vector3
--- @param currentVelocity UnityEngine_Vector3&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
function UnityEngine_Vector3:SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

--- @return UnityEngine_Vector3
--- @param current UnityEngine_Vector3
--- @param target UnityEngine_Vector3
--- @param currentVelocity UnityEngine_Vector3&
--- @param smoothTime System_Single
function UnityEngine_Vector3:SmoothDamp(current, target, currentVelocity, smoothTime)
end

--- @return UnityEngine_Vector3
--- @param current UnityEngine_Vector3
--- @param target UnityEngine_Vector3
--- @param currentVelocity UnityEngine_Vector3&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
--- @param deltaTime System_Single
function UnityEngine_Vector3:SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

--- @return System_Void
--- @param newX System_Single
--- @param newY System_Single
--- @param newZ System_Single
function UnityEngine_Vector3:Set(newX, newY, newZ)
end

--- @return UnityEngine_Vector3
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
function UnityEngine_Vector3:Scale(a, b)
end

--- @return System_Void
--- @param scale UnityEngine_Vector3
function UnityEngine_Vector3:Scale(scale)
end

--- @return UnityEngine_Vector3
--- @param lhs UnityEngine_Vector3
--- @param rhs UnityEngine_Vector3
function UnityEngine_Vector3:Cross(lhs, rhs)
end

--- @return System_Int32
function UnityEngine_Vector3:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Vector3:Equals(other)
end

--- @return UnityEngine_Vector3
--- @param inDirection UnityEngine_Vector3
--- @param inNormal UnityEngine_Vector3
function UnityEngine_Vector3:Reflect(inDirection, inNormal)
end

--- @return UnityEngine_Vector3
--- @param value UnityEngine_Vector3
function UnityEngine_Vector3:Normalize(value)
end

--- @return System_Void
function UnityEngine_Vector3:Normalize()
end

--- @return System_Single
--- @param lhs UnityEngine_Vector3
--- @param rhs UnityEngine_Vector3
function UnityEngine_Vector3:Dot(lhs, rhs)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
--- @param onNormal UnityEngine_Vector3
function UnityEngine_Vector3:Project(vector, onNormal)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
--- @param planeNormal UnityEngine_Vector3
function UnityEngine_Vector3:ProjectOnPlane(vector, planeNormal)
end

--- @return System_Single
--- @param from UnityEngine_Vector3
--- @param to UnityEngine_Vector3
function UnityEngine_Vector3:Angle(from, to)
end

--- @return System_Single
--- @param from UnityEngine_Vector3
--- @param to UnityEngine_Vector3
--- @param axis UnityEngine_Vector3
function UnityEngine_Vector3:SignedAngle(from, to, axis)
end

--- @return System_Single
--- @param a UnityEngine_Vector3
--- @param b UnityEngine_Vector3
function UnityEngine_Vector3:Distance(a, b)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
--- @param maxLength System_Single
function UnityEngine_Vector3:ClampMagnitude(vector, maxLength)
end

--- @return System_Single
--- @param vector UnityEngine_Vector3
function UnityEngine_Vector3:Magnitude(vector)
end

--- @return System_Single
--- @param vector UnityEngine_Vector3
function UnityEngine_Vector3:SqrMagnitude(vector)
end

--- @return UnityEngine_Vector3
--- @param lhs UnityEngine_Vector3
--- @param rhs UnityEngine_Vector3
function UnityEngine_Vector3:Min(lhs, rhs)
end

--- @return UnityEngine_Vector3
--- @param lhs UnityEngine_Vector3
--- @param rhs UnityEngine_Vector3
function UnityEngine_Vector3:Max(lhs, rhs)
end

--- @return System_String
function UnityEngine_Vector3:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Vector3:ToString(format)
end

--- @return System_Single
--- @param from UnityEngine_Vector3
--- @param to UnityEngine_Vector3
function UnityEngine_Vector3:AngleBetween(from, to)
end

--- @return System_Type
function UnityEngine_Vector3:GetType()
end
