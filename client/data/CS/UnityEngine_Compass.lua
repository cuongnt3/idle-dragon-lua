--- @class UnityEngine_Compass
UnityEngine_Compass = Class(UnityEngine_Compass)

--- @return void
function UnityEngine_Compass:Ctor()
	--- @type System_Single
	self.magneticHeading = nil
	--- @type System_Single
	self.trueHeading = nil
	--- @type System_Single
	self.headingAccuracy = nil
	--- @type UnityEngine_Vector3
	self.rawVector = nil
	--- @type System_Double
	self.timestamp = nil
	--- @type System_Boolean
	self.enabled = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Compass:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Compass:GetHashCode()
end

--- @return System_Type
function UnityEngine_Compass:GetType()
end

--- @return System_String
function UnityEngine_Compass:ToString()
end
