--- @class UnityEngine_AnimationCurve
UnityEngine_AnimationCurve = Class(UnityEngine_AnimationCurve)

--- @return void
function UnityEngine_AnimationCurve:Ctor()
	--- @type UnityEngine_Keyframe[]
	self.keys = nil
	--- @type UnityEngine_Keyframe
	self.Item = nil
	--- @type System_Int32
	self.length = nil
	--- @type UnityEngine_WrapMode
	self.preWrapMode = nil
	--- @type UnityEngine_WrapMode
	self.postWrapMode = nil
end

--- @return System_Single
--- @param time System_Single
function UnityEngine_AnimationCurve:Evaluate(time)
end

--- @return System_Int32
--- @param time System_Single
--- @param value System_Single
function UnityEngine_AnimationCurve:AddKey(time, value)
end

--- @return System_Int32
--- @param key UnityEngine_Keyframe
function UnityEngine_AnimationCurve:AddKey(key)
end

--- @return System_Int32
--- @param index System_Int32
--- @param key UnityEngine_Keyframe
function UnityEngine_AnimationCurve:MoveKey(index, key)
end

--- @return System_Void
--- @param index System_Int32
function UnityEngine_AnimationCurve:RemoveKey(index)
end

--- @return System_Void
--- @param index System_Int32
--- @param weight System_Single
function UnityEngine_AnimationCurve:SmoothTangents(index, weight)
end

--- @return UnityEngine_AnimationCurve
--- @param timeStart System_Single
--- @param timeEnd System_Single
--- @param value System_Single
function UnityEngine_AnimationCurve:Constant(timeStart, timeEnd, value)
end

--- @return UnityEngine_AnimationCurve
--- @param timeStart System_Single
--- @param valueStart System_Single
--- @param timeEnd System_Single
--- @param valueEnd System_Single
function UnityEngine_AnimationCurve:Linear(timeStart, valueStart, timeEnd, valueEnd)
end

--- @return UnityEngine_AnimationCurve
--- @param timeStart System_Single
--- @param valueStart System_Single
--- @param timeEnd System_Single
--- @param valueEnd System_Single
function UnityEngine_AnimationCurve:EaseInOut(timeStart, valueStart, timeEnd, valueEnd)
end

--- @return System_Boolean
--- @param o System_Object
function UnityEngine_AnimationCurve:Equals(o)
end

--- @return System_Boolean
--- @param other UnityEngine_AnimationCurve
function UnityEngine_AnimationCurve:Equals(other)
end

--- @return System_Int32
function UnityEngine_AnimationCurve:GetHashCode()
end

--- @return System_Type
function UnityEngine_AnimationCurve:GetType()
end

--- @return System_String
function UnityEngine_AnimationCurve:ToString()
end
