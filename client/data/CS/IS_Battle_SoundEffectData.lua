--- @class IS_Battle_SoundEffectData
IS_Battle_SoundEffectData = Class(IS_Battle_SoundEffectData)

--- @return void
function IS_Battle_SoundEffectData:Ctor()
	--- @type System_String
	self.animName = nil
	--- @type System_Collections_Generic_List`1[IS_Battle_SoundFrameData]
	self.listSoundFrameData = nil
end

--- @return System_Void
--- @param config System_String[]
function IS_Battle_SoundEffectData:ParseData(config)
end

--- @return System_Boolean
--- @param obj System_Object
function IS_Battle_SoundEffectData:Equals(obj)
end

--- @return System_Int32
function IS_Battle_SoundEffectData:GetHashCode()
end

--- @return System_Type
function IS_Battle_SoundEffectData:GetType()
end

--- @return System_String
function IS_Battle_SoundEffectData:ToString()
end
