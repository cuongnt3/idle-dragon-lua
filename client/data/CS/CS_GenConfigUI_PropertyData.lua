--- @class CS_GenConfigUI_PropertyData
CS_GenConfigUI_PropertyData = Class(CS_GenConfigUI_PropertyData)

--- @return void
function CS_GenConfigUI_PropertyData:Ctor()
	--- @type System_String
	self.propertyName = nil
	--- @type UnityEngine_Component
	self.component = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
end

--- @return System_Boolean
--- @param obj System_Object
function CS_GenConfigUI_PropertyData:Equals(obj)
end

--- @return System_Int32
function CS_GenConfigUI_PropertyData:GetHashCode()
end

--- @return System_Type
function CS_GenConfigUI_PropertyData:GetType()
end

--- @return System_String
function CS_GenConfigUI_PropertyData:ToString()
end
