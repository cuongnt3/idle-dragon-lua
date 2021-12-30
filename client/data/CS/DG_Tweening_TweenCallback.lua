--- @class DG_Tweening_TweenCallback
DG_Tweening_TweenCallback = Class(DG_Tweening_TweenCallback)

--- @return void
function DG_Tweening_TweenCallback:Ctor()
	--- @type System_Reflection_MethodInfo
	self.Method = nil
	--- @type System_Object
	self.Target = nil
end

--- @return System_Void
function DG_Tweening_TweenCallback:Invoke()
end

--- @return System_IAsyncResult
--- @param callback System_AsyncCallback
--- @param object System_Object
function DG_Tweening_TweenCallback:BeginInvoke(callback, object)
end

--- @return System_Void
--- @param result System_IAsyncResult
function DG_Tweening_TweenCallback:EndInvoke(result)
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function DG_Tweening_TweenCallback:GetObjectData(info, context)
end

--- @return System_Boolean
--- @param obj System_Object
function DG_Tweening_TweenCallback:Equals(obj)
end

--- @return System_Int32
function DG_Tweening_TweenCallback:GetHashCode()
end

--- @return System_Delegate[]
function DG_Tweening_TweenCallback:GetInvocationList()
end

--- @return System_Object
--- @param args System_Object[]
function DG_Tweening_TweenCallback:DynamicInvoke(args)
end

--- @return System_Object
function DG_Tweening_TweenCallback:Clone()
end

--- @return System_Type
function DG_Tweening_TweenCallback:GetType()
end

--- @return System_String
function DG_Tweening_TweenCallback:ToString()
end
