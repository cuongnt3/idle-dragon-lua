--- @class UnityEngine_Input
UnityEngine_Input = Class(UnityEngine_Input)

--- @return void
function UnityEngine_Input:Ctor()
	--- @type System_Boolean
	self.simulateMouseWithTouches = nil
	--- @type System_Boolean
	self.anyKey = nil
	--- @type System_Boolean
	self.anyKeyDown = nil
	--- @type System_String
	self.inputString = nil
	--- @type UnityEngine_Vector3
	self.mousePosition = nil
	--- @type UnityEngine_Vector2
	self.mouseScrollDelta = nil
	--- @type UnityEngine_IMECompositionMode
	self.imeCompositionMode = nil
	--- @type System_String
	self.compositionString = nil
	--- @type System_Boolean
	self.imeIsSelected = nil
	--- @type UnityEngine_Vector2
	self.compositionCursorPos = nil
	--- @type System_Boolean
	self.eatKeyPressOnTextFieldFocus = nil
	--- @type System_Boolean
	self.mousePresent = nil
	--- @type System_Int32
	self.touchCount = nil
	--- @type System_Boolean
	self.touchPressureSupported = nil
	--- @type System_Boolean
	self.stylusTouchSupported = nil
	--- @type System_Boolean
	self.touchSupported = nil
	--- @type System_Boolean
	self.multiTouchEnabled = nil
	--- @type System_Boolean
	self.isGyroAvailable = nil
	--- @type UnityEngine_DeviceOrientation
	self.deviceOrientation = nil
	--- @type UnityEngine_Vector3
	self.acceleration = nil
	--- @type System_Boolean
	self.compensateSensors = nil
	--- @type System_Int32
	self.accelerationEventCount = nil
	--- @type System_Boolean
	self.backButtonLeavesApp = nil
	--- @type UnityEngine_LocationService
	self.location = nil
	--- @type UnityEngine_Compass
	self.compass = nil
	--- @type UnityEngine_Gyroscope
	self.gyro = nil
	--- @type UnityEngine_Touch[]
	self.touches = nil
	--- @type UnityEngine_AccelerationEvent[]
	self.accelerationEvents = nil
end

--- @return System_Single
--- @param axisName System_String
function UnityEngine_Input:GetAxis(axisName)
end

--- @return System_Single
--- @param axisName System_String
function UnityEngine_Input:GetAxisRaw(axisName)
end

--- @return System_Boolean
--- @param buttonName System_String
function UnityEngine_Input:GetButton(buttonName)
end

--- @return System_Boolean
--- @param buttonName System_String
function UnityEngine_Input:GetButtonDown(buttonName)
end

--- @return System_Boolean
--- @param buttonName System_String
function UnityEngine_Input:GetButtonUp(buttonName)
end

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_Input:GetMouseButton(button)
end

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_Input:GetMouseButtonDown(button)
end

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_Input:GetMouseButtonUp(button)
end

--- @return System_Void
function UnityEngine_Input:ResetInputAxes()
end

--- @return System_Boolean
--- @param joystickName System_String
function UnityEngine_Input:IsJoystickPreconfigured(joystickName)
end

--- @return System_String[]
function UnityEngine_Input:GetJoystickNames()
end

--- @return UnityEngine_Touch
--- @param index System_Int32
function UnityEngine_Input:GetTouch(index)
end

--- @return UnityEngine_AccelerationEvent
--- @param index System_Int32
function UnityEngine_Input:GetAccelerationEvent(index)
end

--- @return System_Boolean
--- @param key UnityEngine_KeyCode
function UnityEngine_Input:GetKey(key)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Input:GetKey(name)
end

--- @return System_Boolean
--- @param key UnityEngine_KeyCode
function UnityEngine_Input:GetKeyUp(key)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Input:GetKeyUp(name)
end

--- @return System_Boolean
--- @param key UnityEngine_KeyCode
function UnityEngine_Input:GetKeyDown(key)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Input:GetKeyDown(name)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Input:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Input:GetHashCode()
end

--- @return System_Type
function UnityEngine_Input:GetType()
end

--- @return System_String
function UnityEngine_Input:ToString()
end
