--- @class UnityEngine_RectOffset
UnityEngine_RectOffset = Class(UnityEngine_RectOffset)

--- @return void
function UnityEngine_RectOffset:Ctor()
	--- @type System_Int32
	self.left = nil
	--- @type System_Int32
	self.right = nil
	--- @type System_Int32
	self.top = nil
	--- @type System_Int32
	self.bottom = nil
	--- @type System_Int32
	self.horizontal = nil
	--- @type System_Int32
	self.vertical = nil
end

--- @return UnityEngine_Rect
--- @param rect UnityEngine_Rect
function UnityEngine_RectOffset:Add(rect)
end

--- @return UnityEngine_Rect
--- @param rect UnityEngine_Rect
function UnityEngine_RectOffset:Remove(rect)
end

--- @return System_String
function UnityEngine_RectOffset:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_RectOffset:Equals(obj)
end

--- @return System_Int32
function UnityEngine_RectOffset:GetHashCode()
end

--- @return System_Type
function UnityEngine_RectOffset:GetType()
end
