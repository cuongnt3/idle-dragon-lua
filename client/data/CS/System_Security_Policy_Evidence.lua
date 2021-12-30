--- @class System_Security_Policy_Evidence
System_Security_Policy_Evidence = Class(System_Security_Policy_Evidence)

--- @return void
function System_Security_Policy_Evidence:Ctor()
	--- @type System_Int32
	self.Count = nil
	--- @type System_Boolean
	self.IsReadOnly = nil
	--- @type System_Boolean
	self.IsSynchronized = nil
	--- @type System_Boolean
	self.Locked = nil
	--- @type System_Object
	self.SyncRoot = nil
end

--- @return System_Void
--- @param id System_Object
function System_Security_Policy_Evidence:AddAssembly(id)
end

--- @return System_Void
--- @param id System_Object
function System_Security_Policy_Evidence:AddHost(id)
end

--- @return System_Void
function System_Security_Policy_Evidence:Clear()
end

--- @return System_Void
--- @param array System_Array
--- @param index System_Int32
function System_Security_Policy_Evidence:CopyTo(array, index)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Security_Policy_Evidence:Equals(obj)
end

--- @return System_Collections_IEnumerator
function System_Security_Policy_Evidence:GetEnumerator()
end

--- @return System_Collections_IEnumerator
function System_Security_Policy_Evidence:GetAssemblyEnumerator()
end

--- @return System_Int32
function System_Security_Policy_Evidence:GetHashCode()
end

--- @return System_Collections_IEnumerator
function System_Security_Policy_Evidence:GetHostEnumerator()
end

--- @return System_Void
--- @param evidence System_Security_Policy_Evidence
function System_Security_Policy_Evidence:Merge(evidence)
end

--- @return System_Void
--- @param t System_Type
function System_Security_Policy_Evidence:RemoveType(t)
end

--- @return System_Type
function System_Security_Policy_Evidence:GetType()
end

--- @return System_String
function System_Security_Policy_Evidence:ToString()
end
