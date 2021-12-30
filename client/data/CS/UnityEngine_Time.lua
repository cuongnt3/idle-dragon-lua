--- @class UnityEngine_Time
UnityEngine_Time = Class(UnityEngine_Time)

--- @return void
function UnityEngine_Time:Ctor()
	--- @type System_Single
	self.time = nil
	--- @type System_Single
	self.timeSinceLevelLoad = nil
	--- @type System_Single
	self.deltaTime = nil
	--- @type System_Single
	self.fixedTime = nil
	--- @type System_Single
	self.unscaledTime = nil
	--- @type System_Single
	self.fixedUnscaledTime = nil
	--- @type System_Single
	self.unscaledDeltaTime = nil
	--- @type System_Single
	self.fixedUnscaledDeltaTime = nil
	--- @type System_Single
	self.fixedDeltaTime = nil
	--- @type System_Single
	self.maximumDeltaTime = nil
	--- @type System_Single
	self.smoothDeltaTime = nil
	--- @type System_Single
	self.maximumParticleDeltaTime = nil
	--- @type System_Single
	self.timeScale = nil
	--- @type System_Int32
	self.frameCount = nil
	--- @type System_Int32
	self.renderedFrameCount = nil
	--- @type System_Single
	self.realtimeSinceStartup = nil
	--- @type System_Int32
	self.captureFramerate = nil
	--- @type System_Boolean
	self.inFixedTimeStep = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Time:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Time:GetHashCode()
end

--- @return System_Type
function UnityEngine_Time:GetType()
end

--- @return System_String
function UnityEngine_Time:ToString()
end
