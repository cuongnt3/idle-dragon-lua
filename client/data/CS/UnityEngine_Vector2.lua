--- @class UnityEngine_Vector2
UnityEngine_Vector2 = Class(UnityEngine_Vector2)

--- @return void
function UnityEngine_Vector2:Ctor()
	--- @type System_Single
	self.Item = nil
	--- @type UnityEngine_Vector2
	self.normalized = nil
	--- @type System_Single
	self.magnitude = nil
	--- @type System_Single
	self.sqrMagnitude = nil
	--- @type UnityEngine_Vector2
	self.zero = nil
	--- @type UnityEngine_Vector2
	self.one = nil
	--- @type UnityEngine_Vector2
	self.up = nil
	--- @type UnityEngine_Vector2
	self.down = nil
	--- @type UnityEngine_Vector2
	self.left = nil
	--- @type UnityEngine_Vector2
	self.right = nil
	--- @type UnityEngine_Vector2
	self.positiveInfinity = nil
	--- @type UnityEngine_Vector2
	self.negativeInfinity = nil
	--- @type System_Single
	self.x = nil
	--- @type System_Single
	self.y = nil
	--- @type System_Single
	self.kEpsilon = nil
end

--- @return System_Void
--- @param newX System_Single
--- @param newY System_Single
function UnityEngine_Vector2:Set(newX, newY)
end

--- @return UnityEngine_Vector2
--- @param a UnityEngine_Vector2
--- @param b UnityEngine_Vector2
--- @param t System_Single
function UnityEngine_Vector2:Lerp(a, b, t)
end

--- @return UnityEngine_Vector2
--- @param a UnityEngine_Vector2
--- @param b UnityEngine_Vector2
--- @param t System_Single
function UnityEngine_Vector2:LerpUnclamped(a, b, t)
end

--- @return UnityEngine_Vector2
--- @param current UnityEngine_Vector2
--- @param target UnityEngine_Vector2
--- @param maxDistanceDelta System_Single
function UnityEngine_Vector2:MoveTowards(current, target, maxDistanceDelta)
end

--- @return UnityEngine_Vector2
--- @param a UnityEngine_Vector2
--- @param b UnityEngine_Vector2
function UnityEngine_Vector2:Scale(a, b)
end

--- @return System_Void
--- @param scale UnityEngine_Vector2
function UnityEngine_Vector2:Scale(scale)
end

--- @return System_Void
function UnityEngine_Vector2:Normalize()
end

--- @return System_String
function UnityEngine_Vector2:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Vector2:ToString(format)
end

--- @return System_Int32
function UnityEngine_Vector2:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Vector2:Equals(other)
end

--- @return UnityEngine_Vector2
--- @param inDirection UnityEngine_Vector2
--- @param inNormal UnityEngine_Vector2
function UnityEngine_Vector2:Reflect(inDirection, inNormal)
end

--- @return System_Single
--- @param lhs UnityEngine_Vector2
--- @param rhs UnityEngine_Vector2
function UnityEngine_Vector2:Dot(lhs, rhs)
end

--- @return System_Single
--- @param from UnityEngine_Vector2
--- @param to UnityEngine_Vector2
function UnityEngine_Vector2:Angle(from, to)
end

--- @return System_Single
--- @param from UnityEngine_Vector2
--- @param to UnityEngine_Vector2
function UnityEngine_Vector2:SignedAngle(from, to)
end

--- @return System_Single
--- @param a UnityEngine_Vector2
--- @param b UnityEngine_Vector2
function UnityEngine_Vector2:Distance(a, b)
end

--- @return UnityEngine_Vector2
--- @param vector UnityEngine_Vector2
--- @param maxLength System_Single
function UnityEngine_Vector2:ClampMagnitude(vector, maxLength)
end

--- @return System_Single
--- @param a UnityEngine_Vector2
function UnityEngine_Vector2:SqrMagnitude(a)
end

--- @return System_Single
function UnityEngine_Vector2:SqrMagnitude()
end

--- @return UnityEngine_Vector2
--- @param lhs UnityEngine_Vector2
--- @param rhs UnityEngine_Vector2
function UnityEngine_Vector2:Min(lhs, rhs)
end

--- @return UnityEngine_Vector2
--- @param lhs UnityEngine_Vector2
--- @param rhs UnityEngine_Vector2
function UnityEngine_Vector2:Max(lhs, rhs)
end

--- @return UnityEngine_Vector2
--- @param current UnityEngine_Vector2
--- @param target UnityEngine_Vector2
--- @param currentVelocity UnityEngine_Vector2&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
--- @param deltaTime System_Single
function UnityEngine_Vector2:SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end
