--- @class UnityEngine_RectTransformUtility
UnityEngine_RectTransformUtility = Class(UnityEngine_RectTransformUtility)

--- @return void
function UnityEngine_RectTransformUtility:Ctor()
end

--- @return System_Boolean
--- @param rect UnityEngine_RectTransform
--- @param screenPoint UnityEngine_Vector2
function UnityEngine_RectTransformUtility:RectangleContainsScreenPoint(rect, screenPoint)
end

--- @return System_Boolean
--- @param rect UnityEngine_RectTransform
--- @param screenPoint UnityEngine_Vector2
--- @param cam UnityEngine_Camera
function UnityEngine_RectTransformUtility:RectangleContainsScreenPoint(rect, screenPoint, cam)
end

--- @return System_Boolean
--- @param rect UnityEngine_RectTransform
--- @param screenPoint UnityEngine_Vector2
--- @param cam UnityEngine_Camera
--- @param worldPoint UnityEngine_Vector3&
function UnityEngine_RectTransformUtility:ScreenPointToWorldPointInRectangle(rect, screenPoint, cam, worldPoint)
end

--- @return System_Boolean
--- @param rect UnityEngine_RectTransform
--- @param screenPoint UnityEngine_Vector2
--- @param cam UnityEngine_Camera
--- @param localPoint UnityEngine_Vector2&
function UnityEngine_RectTransformUtility:ScreenPointToLocalPointInRectangle(rect, screenPoint, cam, localPoint)
end

--- @return UnityEngine_Ray
--- @param cam UnityEngine_Camera
--- @param screenPos UnityEngine_Vector2
function UnityEngine_RectTransformUtility:ScreenPointToRay(cam, screenPos)
end

--- @return UnityEngine_Vector2
--- @param cam UnityEngine_Camera
--- @param worldPoint UnityEngine_Vector3
function UnityEngine_RectTransformUtility:WorldToScreenPoint(cam, worldPoint)
end

--- @return UnityEngine_Bounds
--- @param root UnityEngine_Transform
--- @param child UnityEngine_Transform
function UnityEngine_RectTransformUtility:CalculateRelativeRectTransformBounds(root, child)
end

--- @return UnityEngine_Bounds
--- @param trans UnityEngine_Transform
function UnityEngine_RectTransformUtility:CalculateRelativeRectTransformBounds(trans)
end

--- @return System_Void
--- @param rect UnityEngine_RectTransform
--- @param axis System_Int32
--- @param keepPositioning System_Boolean
--- @param recursive System_Boolean
function UnityEngine_RectTransformUtility:FlipLayoutOnAxis(rect, axis, keepPositioning, recursive)
end

--- @return System_Void
--- @param rect UnityEngine_RectTransform
--- @param keepPositioning System_Boolean
--- @param recursive System_Boolean
function UnityEngine_RectTransformUtility:FlipLayoutAxes(rect, keepPositioning, recursive)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
--- @param elementTransform UnityEngine_Transform
--- @param canvas UnityEngine_Canvas
function UnityEngine_RectTransformUtility:PixelAdjustPoint(point, elementTransform, canvas)
end

--- @return UnityEngine_Rect
--- @param rectTransform UnityEngine_RectTransform
--- @param canvas UnityEngine_Canvas
function UnityEngine_RectTransformUtility:PixelAdjustRect(rectTransform, canvas)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_RectTransformUtility:Equals(obj)
end

--- @return System_Int32
function UnityEngine_RectTransformUtility:GetHashCode()
end

--- @return System_Type
function UnityEngine_RectTransformUtility:GetType()
end

--- @return System_String
function UnityEngine_RectTransformUtility:ToString()
end
