--- @class UnityEngine_Screen
UnityEngine_Screen = Class(UnityEngine_Screen)

--- @return void
function UnityEngine_Screen:Ctor()
	--- @type System_Int32
	self.width = nil
	--- @type System_Int32
	self.height = nil
	--- @type System_Single
	self.dpi = nil
	--- @type UnityEngine_ScreenOrientation
	self.orientation = nil
	--- @type System_Int32
	self.sleepTimeout = nil
	--- @type System_Boolean
	self.autorotateToPortrait = nil
	--- @type System_Boolean
	self.autorotateToPortraitUpsideDown = nil
	--- @type System_Boolean
	self.autorotateToLandscapeLeft = nil
	--- @type System_Boolean
	self.autorotateToLandscapeRight = nil
	--- @type UnityEngine_Resolution
	self.currentResolution = nil
	--- @type System_Boolean
	self.fullScreen = nil
	--- @type UnityEngine_FullScreenMode
	self.fullScreenMode = nil
	--- @type UnityEngine_Rect
	self.safeArea = nil
	--- @type UnityEngine_Resolution[]
	self.resolutions = nil
	--- @type UnityEngine_Resolution[]
	self.GetResolution = nil
	--- @type System_Boolean
	self.showCursor = nil
	--- @type System_Boolean
	self.lockCursor = nil
end

--- @return System_Void
--- @param width System_Int32
--- @param height System_Int32
--- @param fullscreenMode UnityEngine_FullScreenMode
--- @param preferredRefreshRate System_Int32
function UnityEngine_Screen:SetResolution(width, height, fullscreenMode, preferredRefreshRate)
end

--- @return System_Void
--- @param width System_Int32
--- @param height System_Int32
--- @param fullscreenMode UnityEngine_FullScreenMode
function UnityEngine_Screen:SetResolution(width, height, fullscreenMode)
end

--- @return System_Void
--- @param width System_Int32
--- @param height System_Int32
--- @param fullscreen System_Boolean
--- @param preferredRefreshRate System_Int32
function UnityEngine_Screen:SetResolution(width, height, fullscreen, preferredRefreshRate)
end

--- @return System_Void
--- @param width System_Int32
--- @param height System_Int32
--- @param fullscreen System_Boolean
function UnityEngine_Screen:SetResolution(width, height, fullscreen)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Screen:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Screen:GetHashCode()
end

--- @return System_Type
function UnityEngine_Screen:GetType()
end

--- @return System_String
function UnityEngine_Screen:ToString()
end
