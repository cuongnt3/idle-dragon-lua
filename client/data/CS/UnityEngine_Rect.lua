--- @class UnityEngine_Rect
UnityEngine_Rect = Class(UnityEngine_Rect)

--- @return void
function UnityEngine_Rect:Ctor()
	--- @type UnityEngine_Rect
	self.zero = nil
	--- @type System_Single
	self.x = nil
	--- @type System_Single
	self.y = nil
	--- @type UnityEngine_Vector2
	self.position = nil
	--- @type UnityEngine_Vector2
	self.center = nil
	--- @type UnityEngine_Vector2
	self.min = nil
	--- @type UnityEngine_Vector2
	self.max = nil
	--- @type System_Single
	self.width = nil
	--- @type System_Single
	self.height = nil
	--- @type UnityEngine_Vector2
	self.size = nil
	--- @type System_Single
	self.xMin = nil
	--- @type System_Single
	self.yMin = nil
	--- @type System_Single
	self.xMax = nil
	--- @type System_Single
	self.yMax = nil
	--- @type System_Single
	self.left = nil
	--- @type System_Single
	self.right = nil
	--- @type System_Single
	self.top = nil
	--- @type System_Single
	self.bottom = nil
end

--- @return UnityEngine_Rect
--- @param xmin System_Single
--- @param ymin System_Single
--- @param xmax System_Single
--- @param ymax System_Single
function UnityEngine_Rect:MinMaxRect(xmin, ymin, xmax, ymax)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param width System_Single
--- @param height System_Single
function UnityEngine_Rect:Set(x, y, width, height)
end

--- @return System_Boolean
--- @param point UnityEngine_Vector2
function UnityEngine_Rect:Contains(point)
end

--- @return System_Boolean
--- @param point UnityEngine_Vector3
function UnityEngine_Rect:Contains(point)
end

--- @return System_Boolean
--- @param point UnityEngine_Vector3
--- @param allowInverse System_Boolean
function UnityEngine_Rect:Contains(point, allowInverse)
end

--- @return System_Boolean
--- @param other UnityEngine_Rect
function UnityEngine_Rect:Overlaps(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Rect
--- @param allowInverse System_Boolean
function UnityEngine_Rect:Overlaps(other, allowInverse)
end

--- @return UnityEngine_Vector2
--- @param rectangle UnityEngine_Rect
--- @param normalizedRectCoordinates UnityEngine_Vector2
function UnityEngine_Rect:NormalizedToPoint(rectangle, normalizedRectCoordinates)
end

--- @return UnityEngine_Vector2
--- @param rectangle UnityEngine_Rect
--- @param point UnityEngine_Vector2
function UnityEngine_Rect:PointToNormalized(rectangle, point)
end

--- @return System_Int32
function UnityEngine_Rect:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Rect:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Rect
function UnityEngine_Rect:Equals(other)
end

--- @return System_String
function UnityEngine_Rect:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Rect:ToString(format)
end

--- @return System_Type
function UnityEngine_Rect:GetType()
end
