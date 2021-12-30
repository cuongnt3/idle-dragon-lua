--- @class UnityEngine_Sprite
UnityEngine_Sprite = Class(UnityEngine_Sprite)

--- @return void
function UnityEngine_Sprite:Ctor()
	--- @type UnityEngine_Bounds
	self.bounds = nil
	--- @type UnityEngine_Rect
	self.rect = nil
	--- @type UnityEngine_Vector4
	self.border = nil
	--- @type UnityEngine_Texture2D
	self.texture = nil
	--- @type System_Single
	self.pixelsPerUnit = nil
	--- @type UnityEngine_Texture2D
	self.associatedAlphaSplitTexture = nil
	--- @type UnityEngine_Vector2
	self.pivot = nil
	--- @type System_Boolean
	self.packed = nil
	--- @type UnityEngine_SpritePackingMode
	self.packingMode = nil
	--- @type UnityEngine_SpritePackingRotation
	self.packingRotation = nil
	--- @type UnityEngine_Rect
	self.textureRect = nil
	--- @type UnityEngine_Vector2
	self.textureRectOffset = nil
	--- @type UnityEngine_Vector2[]
	self.vertices = nil
	--- @type System_UInt16[]
	self.triangles = nil
	--- @type UnityEngine_Vector2[]
	self.uv = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Int32
function UnityEngine_Sprite:GetPhysicsShapeCount()
end

--- @return System_Int32
--- @param shapeIdx System_Int32
function UnityEngine_Sprite:GetPhysicsShapePointCount(shapeIdx)
end

--- @return System_Int32
--- @param shapeIdx System_Int32
--- @param physicsShape System_Collections_Generic_List`1[UnityEngine_Vector2]
function UnityEngine_Sprite:GetPhysicsShape(shapeIdx, physicsShape)
end

--- @return System_Void
--- @param physicsShapes System_Collections_Generic_IList`1[UnityEngine_Vector2[]]
function UnityEngine_Sprite:OverridePhysicsShape(physicsShapes)
end

--- @return System_Void
--- @param vertices UnityEngine_Vector2[]
--- @param triangles System_UInt16[]
function UnityEngine_Sprite:OverrideGeometry(vertices, triangles)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
--- @param pixelsPerUnit System_Single
--- @param extrude System_UInt32
--- @param meshType UnityEngine_SpriteMeshType
--- @param border UnityEngine_Vector4
--- @param generateFallbackPhysicsShape System_Boolean
function UnityEngine_Sprite:Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border, generateFallbackPhysicsShape)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
--- @param pixelsPerUnit System_Single
--- @param extrude System_UInt32
--- @param meshType UnityEngine_SpriteMeshType
--- @param border UnityEngine_Vector4
function UnityEngine_Sprite:Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
--- @param pixelsPerUnit System_Single
--- @param extrude System_UInt32
--- @param meshType UnityEngine_SpriteMeshType
function UnityEngine_Sprite:Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
--- @param pixelsPerUnit System_Single
--- @param extrude System_UInt32
function UnityEngine_Sprite:Create(texture, rect, pivot, pixelsPerUnit, extrude)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
--- @param pixelsPerUnit System_Single
function UnityEngine_Sprite:Create(texture, rect, pivot, pixelsPerUnit)
end

--- @return UnityEngine_Sprite
--- @param texture UnityEngine_Texture2D
--- @param rect UnityEngine_Rect
--- @param pivot UnityEngine_Vector2
function UnityEngine_Sprite:Create(texture, rect, pivot)
end

--- @return System_Int32
function UnityEngine_Sprite:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Sprite:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Sprite:Equals(other)
end

--- @return System_String
function UnityEngine_Sprite:ToString()
end

--- @return System_Type
function UnityEngine_Sprite:GetType()
end
