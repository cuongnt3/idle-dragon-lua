--- @class UnityEngine_Mathf
UnityEngine_Mathf = Class(UnityEngine_Mathf)

--- @return void
function UnityEngine_Mathf:Ctor()
	--- @type System_Single
	self.PI = nil
	--- @type System_Single
	self.Infinity = nil
	--- @type System_Single
	self.NegativeInfinity = nil
	--- @type System_Single
	self.Deg2Rad = nil
	--- @type System_Single
	self.Rad2Deg = nil
	--- @type System_Single
	self.Epsilon = nil
end

--- @return System_Int32
--- @param value System_Int32
function UnityEngine_Mathf:ClosestPowerOfTwo(value)
end

--- @return System_Boolean
--- @param value System_Int32
function UnityEngine_Mathf:IsPowerOfTwo(value)
end

--- @return System_Int32
--- @param value System_Int32
function UnityEngine_Mathf:NextPowerOfTwo(value)
end

--- @return System_Single
--- @param value System_Single
function UnityEngine_Mathf:GammaToLinearSpace(value)
end

--- @return System_Single
--- @param value System_Single
function UnityEngine_Mathf:LinearToGammaSpace(value)
end

--- @return UnityEngine_Color
--- @param kelvin System_Single
function UnityEngine_Mathf:CorrelatedColorTemperatureToRGB(kelvin)
end

--- @return System_UInt16
--- @param val System_Single
function UnityEngine_Mathf:FloatToHalf(val)
end

--- @return System_Single
--- @param val System_UInt16
function UnityEngine_Mathf:HalfToFloat(val)
end

--- @return System_Single
--- @param x System_Single
--- @param y System_Single
function UnityEngine_Mathf:PerlinNoise(x, y)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Sin(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Cos(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Tan(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Asin(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Acos(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Atan(f)
end

--- @return System_Single
--- @param y System_Single
--- @param x System_Single
function UnityEngine_Mathf:Atan2(y, x)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Sqrt(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Abs(f)
end

--- @return System_Int32
--- @param value System_Int32
function UnityEngine_Mathf:Abs(value)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
function UnityEngine_Mathf:Min(a, b)
end

--- @return System_Single
--- @param values System_Single[]
function UnityEngine_Mathf:Min(values)
end

--- @return System_Int32
--- @param a System_Int32
--- @param b System_Int32
function UnityEngine_Mathf:Min(a, b)
end

--- @return System_Int32
--- @param values System_Int32[]
function UnityEngine_Mathf:Min(values)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
function UnityEngine_Mathf:Max(a, b)
end

--- @return System_Single
--- @param values System_Single[]
function UnityEngine_Mathf:Max(values)
end

--- @return System_Int32
--- @param a System_Int32
--- @param b System_Int32
function UnityEngine_Mathf:Max(a, b)
end

--- @return System_Int32
--- @param values System_Int32[]
function UnityEngine_Mathf:Max(values)
end

--- @return System_Single
--- @param f System_Single
--- @param p System_Single
function UnityEngine_Mathf:Pow(f, p)
end

--- @return System_Single
--- @param power System_Single
function UnityEngine_Mathf:Exp(power)
end

--- @return System_Single
--- @param f System_Single
--- @param p System_Single
function UnityEngine_Mathf:Log(f, p)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Log(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Log10(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Ceil(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Floor(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Round(f)
end

--- @return System_Int32
--- @param f System_Single
function UnityEngine_Mathf:CeilToInt(f)
end

--- @return System_Int32
--- @param f System_Single
function UnityEngine_Mathf:FloorToInt(f)
end

--- @return System_Int32
--- @param f System_Single
function UnityEngine_Mathf:RoundToInt(f)
end

--- @return System_Single
--- @param f System_Single
function UnityEngine_Mathf:Sign(f)
end

--- @return System_Single
--- @param value System_Single
--- @param min System_Single
--- @param max System_Single
function UnityEngine_Mathf:Clamp(value, min, max)
end

--- @return System_Int32
--- @param value System_Int32
--- @param min System_Int32
--- @param max System_Int32
function UnityEngine_Mathf:Clamp(value, min, max)
end

--- @return System_Single
--- @param value System_Single
function UnityEngine_Mathf:Clamp01(value)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
--- @param t System_Single
function UnityEngine_Mathf:Lerp(a, b, t)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
--- @param t System_Single
function UnityEngine_Mathf:LerpUnclamped(a, b, t)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
--- @param t System_Single
function UnityEngine_Mathf:LerpAngle(a, b, t)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param maxDelta System_Single
function UnityEngine_Mathf:MoveTowards(current, target, maxDelta)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param maxDelta System_Single
function UnityEngine_Mathf:MoveTowardsAngle(current, target, maxDelta)
end

--- @return System_Single
--- @param from System_Single
--- @param to System_Single
--- @param t System_Single
function UnityEngine_Mathf:SmoothStep(from, to, t)
end

--- @return System_Single
--- @param value System_Single
--- @param absmax System_Single
--- @param gamma System_Single
function UnityEngine_Mathf:Gamma(value, absmax, gamma)
end

--- @return System_Boolean
--- @param a System_Single
--- @param b System_Single
function UnityEngine_Mathf:Approximately(a, b)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
function UnityEngine_Mathf:SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
function UnityEngine_Mathf:SmoothDamp(current, target, currentVelocity, smoothTime)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
--- @param deltaTime System_Single
function UnityEngine_Mathf:SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
function UnityEngine_Mathf:SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
function UnityEngine_Mathf:SmoothDampAngle(current, target, currentVelocity, smoothTime)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
--- @param currentVelocity System_Single&
--- @param smoothTime System_Single
--- @param maxSpeed System_Single
--- @param deltaTime System_Single
function UnityEngine_Mathf:SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

--- @return System_Single
--- @param t System_Single
--- @param length System_Single
function UnityEngine_Mathf:Repeat(t, length)
end

--- @return System_Single
--- @param t System_Single
--- @param length System_Single
function UnityEngine_Mathf:PingPong(t, length)
end

--- @return System_Single
--- @param a System_Single
--- @param b System_Single
--- @param value System_Single
function UnityEngine_Mathf:InverseLerp(a, b, value)
end

--- @return System_Single
--- @param current System_Single
--- @param target System_Single
function UnityEngine_Mathf:DeltaAngle(current, target)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Mathf:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Mathf:GetHashCode()
end

--- @return System_String
function UnityEngine_Mathf:ToString()
end

--- @return System_Type
function UnityEngine_Mathf:GetType()
end
