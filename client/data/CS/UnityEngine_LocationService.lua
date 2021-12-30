--- @class UnityEngine_LocationService
UnityEngine_LocationService = Class(UnityEngine_LocationService)

--- @return void
function UnityEngine_LocationService:Ctor()
	--- @type System_Boolean
	self.isEnabledByUser = nil
	--- @type UnityEngine_LocationServiceStatus
	self.status = nil
	--- @type UnityEngine_LocationInfo
	self.lastData = nil
end

--- @return System_Void
--- @param desiredAccuracyInMeters System_Single
--- @param updateDistanceInMeters System_Single
function UnityEngine_LocationService:Start(desiredAccuracyInMeters, updateDistanceInMeters)
end

--- @return System_Void
--- @param desiredAccuracyInMeters System_Single
function UnityEngine_LocationService:Start(desiredAccuracyInMeters)
end

--- @return System_Void
function UnityEngine_LocationService:Start()
end

--- @return System_Void
function UnityEngine_LocationService:Stop()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_LocationService:Equals(obj)
end

--- @return System_Int32
function UnityEngine_LocationService:GetHashCode()
end

--- @return System_Type
function UnityEngine_LocationService:GetType()
end

--- @return System_String
function UnityEngine_LocationService:ToString()
end
