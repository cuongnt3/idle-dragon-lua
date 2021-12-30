--- @class UnityEngine_Color
UnityEngine_Color = Class(UnityEngine_Color)

--- @return void
function UnityEngine_Color:Ctor()
	--- @type UnityEngine_Color
	self.red = nil
	--- @type UnityEngine_Color
	self.green = nil
	--- @type UnityEngine_Color
	self.blue = nil
	--- @type UnityEngine_Color
	self.white = nil
	--- @type UnityEngine_Color
	self.black = nil
	--- @type UnityEngine_Color
	self.yellow = nil
	--- @type UnityEngine_Color
	self.cyan = nil
	--- @type UnityEngine_Color
	self.magenta = nil
	--- @type UnityEngine_Color
	self.gray = nil
	--- @type UnityEngine_Color
	self.grey = nil
	--- @type UnityEngine_Color
	self.clear = nil
	--- @type System_Single
	self.grayscale = nil
	--- @type UnityEngine_Color
	self.linear = nil
	--- @type UnityEngine_Color
	self.gamma = nil
	--- @type System_Single
	self.maxColorComponent = nil
	--- @type System_Single
	self.Item = nil
	--- @type System_Single
	self.r = nil
	--- @type System_Single
	self.g = nil
	--- @type System_Single
	self.b = nil
	--- @type System_Single
	self.a = nil
end

--- @return System_String
function UnityEngine_Color:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Color:ToString(format)
end

--- @return System_Int32
function UnityEngine_Color:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Color:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Color
function UnityEngine_Color:Equals(other)
end

--- @return UnityEngine_Color
--- @param a UnityEngine_Color
--- @param b UnityEngine_Color
--- @param t System_Single
function UnityEngine_Color:Lerp(a, b, t)
end

--- @return UnityEngine_Color
--- @param a UnityEngine_Color
--- @param b UnityEngine_Color
--- @param t System_Single
function UnityEngine_Color:LerpUnclamped(a, b, t)
end

--- @return System_Void
--- @param rgbColor UnityEngine_Color
--- @param H System_Single&
--- @param S System_Single&
--- @param V System_Single&
function UnityEngine_Color:RGBToHSV(rgbColor, H, S, V)
end

--- @return UnityEngine_Color
--- @param H System_Single
--- @param S System_Single
--- @param V System_Single
function UnityEngine_Color:HSVToRGB(H, S, V)
end

--- @return UnityEngine_Color
--- @param H System_Single
--- @param S System_Single
--- @param V System_Single
--- @param hdr System_Boolean
function UnityEngine_Color:HSVToRGB(H, S, V, hdr)
end

--- @return System_Type
function UnityEngine_Color:GetType()
end
