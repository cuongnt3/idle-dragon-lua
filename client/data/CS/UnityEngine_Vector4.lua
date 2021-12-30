--- @class UnityEngine_Vector4
UnityEngine_Vector4 = Class(UnityEngine_Vector4)

--- @return void
function UnityEngine_Vector4:Ctor()
	--- @type System_Single
	self.Item = nil
	--- @type UnityEngine_Vector4
	self.normalized = nil
	--- @type System_Single
	self.magnitude = nil
	--- @type System_Single
	self.sqrMagnitude = nil
	--- @type UnityEngine_Vector4
	self.zero = nil
	--- @type UnityEngine_Vector4
	self.one = nil
	--- @type UnityEngine_Vector4
	self.positiveInfinity = nil
	--- @type UnityEngine_Vector4
	self.negativeInfinity = nil
	--- @type System_Single
	self.kEpsilon = nil
	--- @type System_Single
	self.x = nil
	--- @type System_Single
	self.y = nil
	--- @type System_Single
	self.z = nil
	--- @type System_Single
	self.w = nil
end

--- @return System_Void
--- @param newX System_Single
--- @param newY System_Single
--- @param newZ System_Single
--- @param newW System_Single
function UnityEngine_Vector4:Set(newX, newY, newZ, newW)
end

--- @return UnityEngine_Vector4
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
--- @param t System_Single
function UnityEngine_Vector4:Lerp(a, b, t)
end

--- @return UnityEngine_Vector4
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
--- @param t System_Single
function UnityEngine_Vector4:LerpUnclamped(a, b, t)
end

--- @return UnityEngine_Vector4
--- @param current UnityEngine_Vector4
--- @param target UnityEngine_Vector4
--- @param maxDistanceDelta System_Single
function UnityEngine_Vector4:MoveTowards(current, target, maxDistanceDelta)
end

--- @return UnityEngine_Vector4
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
function UnityEngine_Vector4:Scale(a, b)
end

--- @return System_Void
--- @param scale UnityEngine_Vector4
function UnityEngine_Vector4:Scale(scale)
end

--- @return System_Int32
function UnityEngine_Vector4:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Vector4:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Vector4
function UnityEngine_Vector4:Equals(other)
end

--- @return UnityEngine_Vector4
--- @param a UnityEngine_Vector4
function UnityEngine_Vector4:Normalize(a)
end

--- @return System_Void
function UnityEngine_Vector4:Normalize()
end

--- @return System_Single
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
function UnityEngine_Vector4:Dot(a, b)
end

--- @return UnityEngine_Vector4
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
function UnityEngine_Vector4:Project(a, b)
end

--- @return System_Single
--- @param a UnityEngine_Vector4
--- @param b UnityEngine_Vector4
function UnityEngine_Vector4:Distance(a, b)
end

--- @return System_Single
--- @param a UnityEngine_Vector4
function UnityEngine_Vector4:Magnitude(a)
end

--- @return UnityEngine_Vector4
--- @param lhs UnityEngine_Vector4
--- @param rhs UnityEngine_Vector4
function UnityEngine_Vector4:Min(lhs, rhs)
end

--- @return UnityEngine_Vector4
--- @param lhs UnityEngine_Vector4
--- @param rhs UnityEngine_Vector4
function UnityEngine_Vector4:Max(lhs, rhs)
end

--- @return System_String
function UnityEngine_Vector4:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Vector4:ToString(format)
end

--- @return System_Single
--- @param a UnityEngine_Vector4
function UnityEngine_Vector4:SqrMagnitude(a)
end

--- @return System_Single
function UnityEngine_Vector4:SqrMagnitude()
end

--- @return System_Type
function UnityEngine_Vector4:GetType()
end
