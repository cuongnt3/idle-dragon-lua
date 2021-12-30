--- @class IS_Battle_SoundFrameData
IS_Battle_SoundFrameData = Class(IS_Battle_SoundFrameData)

--- @return void
function IS_Battle_SoundFrameData:Ctor()
	--- @type System_Int32
	self.frame = nil
	--- @type System_String
	self.fixedFolderPath = nil
	--- @type System_String
	self.fixedFileName = nil
end

--- @return System_Void
--- @param config System_String[]
function IS_Battle_SoundFrameData:ParseData(config)
end

--- @return System_Boolean
--- @param obj System_Object
function IS_Battle_SoundFrameData:Equals(obj)
end

--- @return System_Int32
function IS_Battle_SoundFrameData:GetHashCode()
end

--- @return System_Type
function IS_Battle_SoundFrameData:GetType()
end

--- @return System_String
function IS_Battle_SoundFrameData:ToString()
end
