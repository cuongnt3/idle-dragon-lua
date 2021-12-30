--- @class UnityEngine_Gradient
UnityEngine_Gradient = Class(UnityEngine_Gradient)

--- @return void
function UnityEngine_Gradient:Ctor()
	--- @type UnityEngine_GradientColorKey[]
	self.colorKeys = nil
	--- @type UnityEngine_GradientAlphaKey[]
	self.alphaKeys = nil
	--- @type UnityEngine_GradientMode
	self.mode = nil
end

--- @return UnityEngine_Color
--- @param time System_Single
function UnityEngine_Gradient:Evaluate(time)
end

--- @return System_Void
--- @param colorKeys UnityEngine_GradientColorKey[]
--- @param alphaKeys UnityEngine_GradientAlphaKey[]
function UnityEngine_Gradient:SetKeys(colorKeys, alphaKeys)
end

--- @return System_Boolean
--- @param o System_Object
function UnityEngine_Gradient:Equals(o)
end

--- @return System_Boolean
--- @param other UnityEngine_Gradient
function UnityEngine_Gradient:Equals(other)
end

--- @return System_Int32
function UnityEngine_Gradient:GetHashCode()
end

--- @return System_Type
function UnityEngine_Gradient:GetType()
end

--- @return System_String
function UnityEngine_Gradient:ToString()
end
