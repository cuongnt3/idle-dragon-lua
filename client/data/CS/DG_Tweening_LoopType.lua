--- @class DG_Tweening_LoopType
DG_Tweening_LoopType = Class(DG_Tweening_LoopType)

--- @return void
function DG_Tweening_LoopType:Ctor()
	--- @type System_Int32
	self.value__ = nil
	--- @type DG_Tweening_LoopType
	self.Restart = nil
	--- @type DG_Tweening_LoopType
	self.Yoyo = nil
	--- @type DG_Tweening_LoopType
	self.Incremental = nil
end

--- @return System_TypeCode
function DG_Tweening_LoopType:GetTypeCode()
end

--- @return System_Int32
--- @param target System_Object
function DG_Tweening_LoopType:CompareTo(target)
end

--- @return System_String
function DG_Tweening_LoopType:ToString()
end

--- @return System_String
--- @param provider System_IFormatProvider
function DG_Tweening_LoopType:ToString(provider)
end

--- @return System_String
--- @param format System_String
function DG_Tweening_LoopType:ToString(format)
end

--- @return System_String
--- @param format System_String
--- @param provider System_IFormatProvider
function DG_Tweening_LoopType:ToString(format, provider)
end

--- @return System_Boolean
--- @param obj System_Object
function DG_Tweening_LoopType:Equals(obj)
end

--- @return System_Int32
function DG_Tweening_LoopType:GetHashCode()
end

--- @return System_Type
function DG_Tweening_LoopType:GetType()
end
