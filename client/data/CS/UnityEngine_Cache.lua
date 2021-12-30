--- @class UnityEngine_Cache
UnityEngine_Cache = Class(UnityEngine_Cache)

--- @return void
function UnityEngine_Cache:Ctor()
	--- @type System_Boolean
	self.valid = nil
	--- @type System_Boolean
	self.ready = nil
	--- @type System_Boolean
	self.readOnly = nil
	--- @type System_String
	self.path = nil
	--- @type System_Int32
	self.index = nil
	--- @type System_Int64
	self.spaceFree = nil
	--- @type System_Int64
	self.maximumAvailableStorageSpace = nil
	--- @type System_Int64
	self.spaceOccupied = nil
	--- @type System_Int32
	self.expirationDelay = nil
end

--- @return System_Int32
function UnityEngine_Cache:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Cache:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Cache
function UnityEngine_Cache:Equals(other)
end

--- @return System_Boolean
function UnityEngine_Cache:ClearCache()
end

--- @return System_Boolean
--- @param expiration System_Int32
function UnityEngine_Cache:ClearCache(expiration)
end

--- @return System_String
function UnityEngine_Cache:ToString()
end

--- @return System_Type
function UnityEngine_Cache:GetType()
end
