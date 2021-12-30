--- @class Spine_Skin
Spine_Skin = Class(Spine_Skin)

--- @return void
function Spine_Skin:Ctor()
	--- @type System_String
	self.Name = nil
	--- @type System_Collections_Generic_Dictionary`2[Spine_Skin_AttachmentKeyTuple,Spine_Attachment]
	self.Attachments = nil
end

--- @return System_Void
--- @param slotIndex System_Int32
--- @param name System_String
--- @param attachment Spine_Attachment
function Spine_Skin:AddAttachment(slotIndex, name, attachment)
end

--- @return Spine_Attachment
--- @param slotIndex System_Int32
--- @param name System_String
function Spine_Skin:GetAttachment(slotIndex, name)
end

--- @return System_Void
--- @param slotIndex System_Int32
--- @param names System_Collections_Generic_List`1[System_String]
function Spine_Skin:FindNamesForSlot(slotIndex, names)
end

--- @return System_Void
--- @param slotIndex System_Int32
--- @param attachments System_Collections_Generic_List`1[Spine_Attachment]
function Spine_Skin:FindAttachmentsForSlot(slotIndex, attachments)
end

--- @return System_String
function Spine_Skin:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_Skin:Equals(obj)
end

--- @return System_Int32
function Spine_Skin:GetHashCode()
end

--- @return System_Type
function Spine_Skin:GetType()
end
