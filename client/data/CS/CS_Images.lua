--- @class CS_Images
CS_Images = Class(CS_Images)

--- @return void
function CS_Images:Ctor()
	--- @type UnityEngine_Texture2D
	self.clearImage = nil
	--- @type UnityEngine_Texture2D
	self.collapseImage = nil
	--- @type UnityEngine_Texture2D
	self.clearOnNewSceneImage = nil
	--- @type UnityEngine_Texture2D
	self.showTimeImage = nil
	--- @type UnityEngine_Texture2D
	self.showSceneImage = nil
	--- @type UnityEngine_Texture2D
	self.userImage = nil
	--- @type UnityEngine_Texture2D
	self.showMemoryImage = nil
	--- @type UnityEngine_Texture2D
	self.softwareImage = nil
	--- @type UnityEngine_Texture2D
	self.dateImage = nil
	--- @type UnityEngine_Texture2D
	self.showFpsImage = nil
	--- @type UnityEngine_Texture2D
	self.infoImage = nil
	--- @type UnityEngine_Texture2D
	self.saveLogsImage = nil
	--- @type UnityEngine_Texture2D
	self.searchImage = nil
	--- @type UnityEngine_Texture2D
	self.copyImage = nil
	--- @type UnityEngine_Texture2D
	self.closeImage = nil
	--- @type UnityEngine_Texture2D
	self.buildFromImage = nil
	--- @type UnityEngine_Texture2D
	self.systemInfoImage = nil
	--- @type UnityEngine_Texture2D
	self.graphicsInfoImage = nil
	--- @type UnityEngine_Texture2D
	self.backImage = nil
	--- @type UnityEngine_Texture2D
	self.logImage = nil
	--- @type UnityEngine_Texture2D
	self.warningImage = nil
	--- @type UnityEngine_Texture2D
	self.errorImage = nil
	--- @type UnityEngine_Texture2D
	self.barImage = nil
	--- @type UnityEngine_Texture2D
	self.button_activeImage = nil
	--- @type UnityEngine_Texture2D
	self.even_logImage = nil
	--- @type UnityEngine_Texture2D
	self.odd_logImage = nil
	--- @type UnityEngine_Texture2D
	self.selectedImage = nil
	--- @type UnityEngine_GUISkin
	self.reporterScrollerSkin = nil
end

--- @return System_Boolean
--- @param obj System_Object
function CS_Images:Equals(obj)
end

--- @return System_Int32
function CS_Images:GetHashCode()
end

--- @return System_Type
function CS_Images:GetType()
end

--- @return System_String
function CS_Images:ToString()
end
