--- @class CS_GameUserData
CS_GameUserData = Class(CS_GameUserData)

--- @return void
function CS_GameUserData:Ctor()
	--- @type System_Int32
	self.level = nil
	--- @type System_String
	self.platform = nil
	--- @type System_Int64
	self.role_id = nil
	--- @type System_Int32
	self.server_id = nil
	--- @type System_String
	self.product_id = nil
	--- @type System_String
	self.account_id = nil
end

--- @return CS_GameUserData
--- @param seId System_String
function CS_GameUserData:Clone(seId)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_GameUserData:Equals(obj)
end

--- @return System_Int32
function CS_GameUserData:GetHashCode()
end

--- @return System_Type
function CS_GameUserData:GetType()
end

--- @return System_String
function CS_GameUserData:ToString()
end
