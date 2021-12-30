--- @class CS_GameUtils
CS_GameUtils = Class(CS_GameUtils)

--- @return void
function CS_GameUtils:Ctor()
end

--- @return System_Void
--- @param url System_String
--- @param data System_String
function CS_GameUtils:PostRequest(url, data)
end

--- @return System_Collections_IEnumerator
--- @param url System_String
--- @param data System_String
function CS_GameUtils:IPostRequest(url, data)
end

--- @return System_Void
--- @param url System_String
--- @param onSuccess System_Action`1[System_String]
--- @param onError System_Action`1[System_String]
function CS_GameUtils:DownloadScript(url, onSuccess, onError)
end

--- @return System_Void
--- @param url System_String
--- @param zipPath System_String
--- @param exportPath System_String
--- @param onSuccess System_Action
--- @param onError System_Action`1[System_String]
function CS_GameUtils:DownloadZip(url, zipPath, exportPath, onSuccess, onError)
end

--- @return System_Void
--- @param url System_String
--- @param onSuccess System_Action`1[UnityEngine_Networking_DownloadHandler]
--- @param onError System_Action`1[System_String]
function CS_GameUtils:DownloadFile(url, onSuccess, onError)
end

--- @return System_String
--- @param path System_String
function CS_GameUtils:FormatToUnityPath(path)
end

--- @return System_String
--- @param path System_String
function CS_GameUtils:FormatToSysFilePath(path)
end

--- @return System_Void
--- @param filePath System_String
function CS_GameUtils:CheckFileAndCreateDirWhenNeeded(filePath)
end

--- @return System_Boolean
--- @param outFile System_String
--- @param outBytes System_Byte[]
function CS_GameUtils:SafeWriteAllBytes(outFile, outBytes)
end

--- @return System_Boolean
--- @param outFile System_String
--- @param text System_String
function CS_GameUtils:SafeWriteAllText(outFile, text)
end

--- @return System_Byte[]
--- @param inFile System_String
function CS_GameUtils:SafeReadAllBytes(inFile)
end

--- @return System_String[]
--- @param inFile System_String
function CS_GameUtils:SafeReadAllLines(inFile)
end

--- @return System_String
--- @param inFile System_String
function CS_GameUtils:SafeReadAllText(inFile)
end

--- @return System_Void
--- @param dirPath System_String
function CS_GameUtils:DeleteDirectory(dirPath)
end

--- @return System_Boolean
--- @param folderPath System_String
function CS_GameUtils:SafeClearDir(folderPath)
end

--- @return System_Boolean
--- @param folderPath System_String
function CS_GameUtils:SafeDeleteDir(folderPath)
end

--- @return System_Boolean
--- @param filePath System_String
function CS_GameUtils:SafeDeleteFile(filePath)
end

--- @return System_Boolean
--- @param fromFile System_String
--- @param toFile System_String
function CS_GameUtils:SafeCopyFile(fromFile, toFile)
end

--- @return System_String
function CS_GameUtils:PrivateFolder()
end

--- @return System_Int32
--- @param isExternalStorage System_Boolean
function CS_GameUtils:CheckAvailableSpace(isExternalStorage)
end

--- @return System_Int32
--- @param isExternalStorage System_Boolean
function CS_GameUtils:CheckTotalSpace(isExternalStorage)
end

--- @return System_Int32
--- @param isExternalStorage System_Boolean
function CS_GameUtils:CheckBusySpace(isExternalStorage)
end

--- @return UnityEngine_GameObject
--- @param path System_String
function CS_GameUtils:Instantiate(path)
end

--- @return System_String
function CS_GameUtils:GetDeviceID()
end

--- @return System_Boolean
--- @param obj System_Object
function CS_GameUtils:Equals(obj)
end

--- @return System_Int32
function CS_GameUtils:GetHashCode()
end

--- @return System_Type
function CS_GameUtils:GetType()
end

--- @return System_String
function CS_GameUtils:ToString()
end
