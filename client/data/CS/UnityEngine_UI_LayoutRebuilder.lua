--- @class UnityEngine_UI_LayoutRebuilder
UnityEngine_UI_LayoutRebuilder = Class(UnityEngine_UI_LayoutRebuilder)

--- @return void
function UnityEngine_UI_LayoutRebuilder:Ctor()
	--- @type UnityEngine_Transform
	self.transform = nil
end

--- @return System_Boolean
function UnityEngine_UI_LayoutRebuilder:IsDestroyed()
end

--- @return System_Void
--- @param layoutRoot UnityEngine_RectTransform
function UnityEngine_UI_LayoutRebuilder:ForceRebuildLayoutImmediate(layoutRoot)
end

--- @return System_Void
--- @param executing UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_LayoutRebuilder:Rebuild(executing)
end

--- @return System_Void
--- @param rect UnityEngine_RectTransform
function UnityEngine_UI_LayoutRebuilder:MarkLayoutForRebuild(rect)
end

--- @return System_Void
function UnityEngine_UI_LayoutRebuilder:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_LayoutRebuilder:GraphicUpdateComplete()
end

--- @return System_Int32
function UnityEngine_UI_LayoutRebuilder:GetHashCode()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_UI_LayoutRebuilder:Equals(obj)
end

--- @return System_String
function UnityEngine_UI_LayoutRebuilder:ToString()
end

--- @return System_Type
function UnityEngine_UI_LayoutRebuilder:GetType()
end
