--- @class UnityEngine_Application
UnityEngine_Application = Class(UnityEngine_Application)

--- @return void
function UnityEngine_Application:Ctor()
	--- @type System_Boolean
	self.isLoadingLevel = nil
	--- @type System_Int32
	self.streamedBytes = nil
	--- @type System_Boolean
	self.webSecurityEnabled = nil
	--- @type System_Boolean
	self.isPlaying = nil
	--- @type System_Boolean
	self.isFocused = nil
	--- @type UnityEngine_RuntimePlatform
	self.platform = nil
	--- @type System_String
	self.buildGUID = nil
	--- @type System_Boolean
	self.isMobilePlatform = nil
	--- @type System_Boolean
	self.isConsolePlatform = nil
	--- @type System_Boolean
	self.runInBackground = nil
	--- @type System_Boolean
	self.isBatchMode = nil
	--- @type System_String
	self.dataPath = nil
	--- @type System_String
	self.streamingAssetsPath = nil
	--- @type System_String
	self.persistentDataPath = nil
	--- @type System_String
	self.temporaryCachePath = nil
	--- @type System_String
	self.absoluteURL = nil
	--- @type System_String
	self.unityVersion = nil
	--- @type System_String
	self.version = nil
	--- @type System_String
	self.installerName = nil
	--- @type System_String
	self.identifier = nil
	--- @type UnityEngine_ApplicationInstallMode
	self.installMode = nil
	--- @type UnityEngine_ApplicationSandboxType
	self.sandboxType = nil
	--- @type System_String
	self.productName = nil
	--- @type System_String
	self.companyName = nil
	--- @type System_String
	self.cloudProjectId = nil
	--- @type System_Int32
	self.targetFrameRate = nil
	--- @type UnityEngine_SystemLanguage
	self.systemLanguage = nil
	--- @type UnityEngine_StackTraceLogType
	self.stackTraceLogType = nil
	--- @type UnityEngine_ThreadPriority
	self.backgroundLoadingPriority = nil
	--- @type UnityEngine_NetworkReachability
	self.internetReachability = nil
	--- @type System_Boolean
	self.genuine = nil
	--- @type System_Boolean
	self.genuineCheckAvailable = nil
	--- @type System_Boolean
	self.isShowingSplashScreen = nil
	--- @type System_Boolean
	self.isPlayer = nil
	--- @type System_Boolean
	self.isEditor = nil
	--- @type System_Int32
	self.levelCount = nil
	--- @type System_Int32
	self.loadedLevel = nil
	--- @type System_String
	self.loadedLevelName = nil
end

--- @return System_Void
function UnityEngine_Application:Quit()
end

--- @return System_Void
function UnityEngine_Application:CancelQuit()
end

--- @return System_Void
function UnityEngine_Application:Unload()
end

--- @return System_Single
--- @param levelIndex System_Int32
function UnityEngine_Application:GetStreamProgressForLevel(levelIndex)
end

--- @return System_Single
--- @param levelName System_String
function UnityEngine_Application:GetStreamProgressForLevel(levelName)
end

--- @return System_Boolean
--- @param levelIndex System_Int32
function UnityEngine_Application:CanStreamedLevelBeLoaded(levelIndex)
end

--- @return System_Boolean
--- @param levelName System_String
function UnityEngine_Application:CanStreamedLevelBeLoaded(levelName)
end

--- @return System_String[]
function UnityEngine_Application:GetBuildTags()
end

--- @return System_Void
--- @param buildTags System_String[]
function UnityEngine_Application:SetBuildTags(buildTags)
end

--- @return System_Boolean
function UnityEngine_Application:HasProLicense()
end

--- @return System_Void
--- @param script System_String
function UnityEngine_Application:ExternalEval(script)
end

--- @return System_Boolean
--- @param delegateMethod UnityEngine_Application_AdvertisingIdentifierCallback
function UnityEngine_Application:RequestAdvertisingIdentifierAsync(delegateMethod)
end

--- @return System_Void
--- @param url System_String
function UnityEngine_Application:OpenURL(url)
end

--- @return System_Void
--- @param mode System_Int32
function UnityEngine_Application:ForceCrash(mode)
end

--- @return UnityEngine_StackTraceLogType
--- @param logType UnityEngine_LogType
function UnityEngine_Application:GetStackTraceLogType(logType)
end

--- @return System_Void
--- @param logType UnityEngine_LogType
--- @param stackTraceType UnityEngine_StackTraceLogType
function UnityEngine_Application:SetStackTraceLogType(logType, stackTraceType)
end

--- @return UnityEngine_AsyncOperation
--- @param mode UnityEngine_UserAuthorization
function UnityEngine_Application:RequestUserAuthorization(mode)
end

--- @return System_Boolean
--- @param mode UnityEngine_UserAuthorization
function UnityEngine_Application:HasUserAuthorization(mode)
end

--- @return System_Void
--- @param functionName System_String
--- @param args System_Object[]
function UnityEngine_Application:ExternalCall(functionName, args)
end

--- @return System_Void
--- @param o UnityEngine_Object
function UnityEngine_Application:DontDestroyOnLoad(o)
end

--- @return System_Void
--- @param filename System_String
--- @param superSize System_Int32
function UnityEngine_Application:CaptureScreenshot(filename, superSize)
end

--- @return System_Void
--- @param filename System_String
function UnityEngine_Application:CaptureScreenshot(filename)
end

--- @return System_Void
--- @param handler UnityEngine_Application_LogCallback
function UnityEngine_Application:RegisterLogCallback(handler)
end

--- @return System_Void
--- @param handler UnityEngine_Application_LogCallback
function UnityEngine_Application:RegisterLogCallbackThreaded(handler)
end

--- @return System_Void
--- @param index System_Int32
function UnityEngine_Application:LoadLevel(index)
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Application:LoadLevel(name)
end

--- @return System_Void
--- @param index System_Int32
function UnityEngine_Application:LoadLevelAdditive(index)
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Application:LoadLevelAdditive(name)
end

--- @return UnityEngine_AsyncOperation
--- @param index System_Int32
function UnityEngine_Application:LoadLevelAsync(index)
end

--- @return UnityEngine_AsyncOperation
--- @param levelName System_String
function UnityEngine_Application:LoadLevelAsync(levelName)
end

--- @return UnityEngine_AsyncOperation
--- @param index System_Int32
function UnityEngine_Application:LoadLevelAdditiveAsync(index)
end

--- @return UnityEngine_AsyncOperation
--- @param levelName System_String
function UnityEngine_Application:LoadLevelAdditiveAsync(levelName)
end

--- @return System_Boolean
--- @param index System_Int32
function UnityEngine_Application:UnloadLevel(index)
end

--- @return System_Boolean
--- @param scenePath System_String
function UnityEngine_Application:UnloadLevel(scenePath)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Application:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Application:GetHashCode()
end

--- @return System_Type
function UnityEngine_Application:GetType()
end

--- @return System_String
function UnityEngine_Application:ToString()
end
