--- @class UnityEditor_AssetDatabase
UnityEditor_AssetDatabase = Class(UnityEditor_AssetDatabase)

--- @return void
function UnityEditor_AssetDatabase:Ctor()
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:Contains(obj)
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:Contains(instanceID)
end

--- @return System_String
--- @param parentFolder System_String
--- @param newFolderName System_String
function UnityEditor_AssetDatabase:CreateFolder(parentFolder, newFolderName)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:IsMainAsset(obj)
end

--- @return System_String
function UnityEditor_AssetDatabase:GetCurrentCacheServerIp()
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:IsMainAsset(instanceID)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:IsSubAsset(obj)
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:IsSubAsset(instanceID)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:IsForeignAsset(obj)
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:IsForeignAsset(instanceID)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:IsNativeAsset(obj)
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:IsNativeAsset(instanceID)
end

--- @return System_String
--- @param path System_String
function UnityEditor_AssetDatabase:GenerateUniqueAssetPath(path)
end

--- @return System_Void
function UnityEditor_AssetDatabase:StartAssetEditing()
end

--- @return System_Void
function UnityEditor_AssetDatabase:StopAssetEditing()
end

--- @return System_Void
function UnityEditor_AssetDatabase:ReleaseCachedFileHandles()
end

--- @return System_String
--- @param oldPath System_String
--- @param newPath System_String
function UnityEditor_AssetDatabase:ValidateMoveAsset(oldPath, newPath)
end

--- @return System_String
--- @param oldPath System_String
--- @param newPath System_String
function UnityEditor_AssetDatabase:MoveAsset(oldPath, newPath)
end

--- @return System_String
--- @param asset UnityEngine_Object
--- @param newPath System_String
function UnityEditor_AssetDatabase:ExtractAsset(asset, newPath)
end

--- @return System_String
--- @param pathName System_String
--- @param newName System_String
function UnityEditor_AssetDatabase:RenameAsset(pathName, newName)
end

--- @return System_Boolean
--- @param path System_String
function UnityEditor_AssetDatabase:MoveAssetToTrash(path)
end

--- @return System_Boolean
--- @param path System_String
function UnityEditor_AssetDatabase:DeleteAsset(path)
end

--- @return System_Void
--- @param path System_String
--- @param options UnityEditor_ImportAssetOptions
function UnityEditor_AssetDatabase:ImportAsset(path, options)
end

--- @return System_Void
--- @param path System_String
function UnityEditor_AssetDatabase:ImportAsset(path)
end

--- @return System_Boolean
--- @param path System_String
--- @param newPath System_String
function UnityEditor_AssetDatabase:CopyAsset(path, newPath)
end

--- @return System_Boolean
--- @param path System_String
function UnityEditor_AssetDatabase:WriteImportSettingsIfDirty(path)
end

--- @return System_String[]
--- @param path System_String
function UnityEditor_AssetDatabase:GetSubFolders(path)
end

--- @return System_Boolean
--- @param path System_String
function UnityEditor_AssetDatabase:IsValidFolder(path)
end

--- @return System_Void
--- @param asset UnityEngine_Object
--- @param path System_String
function UnityEditor_AssetDatabase:CreateAsset(asset, path)
end

--- @return System_Void
--- @param objectToAdd UnityEngine_Object
--- @param path System_String
function UnityEditor_AssetDatabase:AddObjectToAsset(objectToAdd, path)
end

--- @return System_Void
--- @param objectToAdd UnityEngine_Object
--- @param assetObject UnityEngine_Object
function UnityEditor_AssetDatabase:AddObjectToAsset(objectToAdd, assetObject)
end

--- @return System_Void
--- @param mainObject UnityEngine_Object
--- @param assetPath System_String
function UnityEditor_AssetDatabase:SetMainObject(mainObject, assetPath)
end

--- @return System_String
--- @param assetObject UnityEngine_Object
function UnityEditor_AssetDatabase:GetAssetPath(assetObject)
end

--- @return System_String
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:GetAssetPath(instanceID)
end

--- @return System_String
--- @param assetObject UnityEngine_Object
function UnityEditor_AssetDatabase:GetAssetOrScenePath(assetObject)
end

--- @return System_String
--- @param path System_String
function UnityEditor_AssetDatabase:GetTextMetaFilePathFromAssetPath(path)
end

--- @return System_String
--- @param path System_String
function UnityEditor_AssetDatabase:GetAssetPathFromTextMetaFilePath(path)
end

--- @return UnityEngine_Object
--- @param assetPath System_String
--- @param type System_Type
function UnityEditor_AssetDatabase:LoadAssetAtPath(assetPath, type)
end

--- @return CS_T
--- @param assetPath System_String
function UnityEditor_AssetDatabase:LoadAssetAtPath(assetPath)
end

--- @return UnityEngine_Object
--- @param assetPath System_String
function UnityEditor_AssetDatabase:LoadMainAssetAtPath(assetPath)
end

--- @return System_Type
--- @param assetPath System_String
function UnityEditor_AssetDatabase:GetMainAssetTypeAtPath(assetPath)
end

--- @return System_Boolean
--- @param assetPath System_String
function UnityEditor_AssetDatabase:IsMainAssetAtPathLoaded(assetPath)
end

--- @return UnityEngine_Object[]
--- @param assetPath System_String
function UnityEditor_AssetDatabase:LoadAllAssetRepresentationsAtPath(assetPath)
end

--- @return UnityEngine_Object[]
--- @param assetPath System_String
function UnityEditor_AssetDatabase:LoadAllAssetsAtPath(assetPath)
end

--- @return System_String[]
function UnityEditor_AssetDatabase:GetAllAssetPaths()
end

--- @return System_Void
--- @param options UnityEditor_ImportAssetOptions
function UnityEditor_AssetDatabase:RefreshDelayed(options)
end

--- @return System_Void
function UnityEditor_AssetDatabase:RefreshDelayed()
end

--- @return System_Void
--- @param options UnityEditor_ImportAssetOptions
function UnityEditor_AssetDatabase:Refresh(options)
end

--- @return System_Void
function UnityEditor_AssetDatabase:Refresh()
end

--- @return System_Boolean
--- @param instanceID System_Int32
--- @param lineNumber System_Int32
function UnityEditor_AssetDatabase:OpenAsset(instanceID, lineNumber)
end

--- @return System_Boolean
--- @param instanceID System_Int32
function UnityEditor_AssetDatabase:OpenAsset(instanceID)
end

--- @return System_Boolean
--- @param target UnityEngine_Object
function UnityEditor_AssetDatabase:OpenAsset(target)
end

--- @return System_Boolean
--- @param target UnityEngine_Object
--- @param lineNumber System_Int32
function UnityEditor_AssetDatabase:OpenAsset(target, lineNumber)
end

--- @return System_Boolean
--- @param objects UnityEngine_Object[]
function UnityEditor_AssetDatabase:OpenAsset(objects)
end

--- @return System_String
--- @param path System_String
function UnityEditor_AssetDatabase:AssetPathToGUID(path)
end

--- @return System_String
--- @param guid System_String
function UnityEditor_AssetDatabase:GUIDToAssetPath(guid)
end

--- @return UnityEngine_Hash128
--- @param path System_String
function UnityEditor_AssetDatabase:GetAssetDependencyHash(path)
end

--- @return System_Void
function UnityEditor_AssetDatabase:SaveAssets()
end

--- @return UnityEngine_Texture
--- @param path System_String
function UnityEditor_AssetDatabase:GetCachedIcon(path)
end

--- @return System_Void
--- @param obj UnityEngine_Object
--- @param labels System_String[]
function UnityEditor_AssetDatabase:SetLabels(obj, labels)
end

--- @return System_String[]
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:GetLabels(obj)
end

--- @return System_Void
--- @param obj UnityEngine_Object
function UnityEditor_AssetDatabase:ClearLabels(obj)
end

--- @return System_String[]
function UnityEditor_AssetDatabase:GetAllAssetBundleNames()
end

--- @return System_String[]
function UnityEditor_AssetDatabase:GetAssetBundleNames()
end

--- @return System_String[]
function UnityEditor_AssetDatabase:GetUnusedAssetBundleNames()
end

--- @return System_Boolean
--- @param assetBundleName System_String
--- @param forceRemove System_Boolean
function UnityEditor_AssetDatabase:RemoveAssetBundleName(assetBundleName, forceRemove)
end

--- @return System_Void
function UnityEditor_AssetDatabase:RemoveUnusedAssetBundleNames()
end

--- @return System_String[]
--- @param assetBundleName System_String
function UnityEditor_AssetDatabase:GetAssetPathsFromAssetBundle(assetBundleName)
end

--- @return System_String[]
--- @param assetBundleName System_String
--- @param assetName System_String
function UnityEditor_AssetDatabase:GetAssetPathsFromAssetBundleAndAssetName(assetBundleName, assetName)
end

--- @return System_String
--- @param assetPath System_String
function UnityEditor_AssetDatabase:GetImplicitAssetBundleName(assetPath)
end

--- @return System_String
--- @param assetPath System_String
function UnityEditor_AssetDatabase:GetImplicitAssetBundleVariantName(assetPath)
end

--- @return System_String[]
--- @param assetBundleName System_String
--- @param recursive System_Boolean
function UnityEditor_AssetDatabase:GetAssetBundleDependencies(assetBundleName, recursive)
end

--- @return System_String[]
--- @param pathName System_String
function UnityEditor_AssetDatabase:GetDependencies(pathName)
end

--- @return System_String[]
--- @param pathName System_String
--- @param recursive System_Boolean
function UnityEditor_AssetDatabase:GetDependencies(pathName, recursive)
end

--- @return System_String[]
--- @param pathNames System_String[]
function UnityEditor_AssetDatabase:GetDependencies(pathNames)
end

--- @return System_String[]
--- @param pathNames System_String[]
--- @param recursive System_Boolean
function UnityEditor_AssetDatabase:GetDependencies(pathNames, recursive)
end

--- @return System_Void
--- @param assetPathName System_String
--- @param fileName System_String
function UnityEditor_AssetDatabase:ExportPackage(assetPathName, fileName)
end

--- @return System_Void
--- @param assetPathName System_String
--- @param fileName System_String
--- @param flags UnityEditor_ExportPackageOptions
function UnityEditor_AssetDatabase:ExportPackage(assetPathName, fileName, flags)
end

--- @return System_Void
--- @param assetPathNames System_String[]
--- @param fileName System_String
--- @param flags UnityEditor_ExportPackageOptions
function UnityEditor_AssetDatabase:ExportPackage(assetPathNames, fileName, flags)
end

--- @return System_Void
--- @param assetPathNames System_String[]
--- @param fileName System_String
function UnityEditor_AssetDatabase:ExportPackage(assetPathNames, fileName)
end

--- @return System_Void
--- @param packagePath System_String
--- @param interactive System_Boolean
function UnityEditor_AssetDatabase:ImportPackage(packagePath, interactive)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
function UnityEditor_AssetDatabase:IsOpenForEdit(assetObject)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param StatusQueryOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsOpenForEdit(assetObject, StatusQueryOptions)
end

--- @return System_Boolean
--- @param assetOrMetaFilePath System_String
function UnityEditor_AssetDatabase:IsOpenForEdit(assetOrMetaFilePath)
end

--- @return System_Boolean
--- @param assetOrMetaFilePath System_String
--- @param StatusQueryOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsOpenForEdit(assetOrMetaFilePath, StatusQueryOptions)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param message System_String&
function UnityEditor_AssetDatabase:IsOpenForEdit(assetObject, message)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param message System_String&
--- @param statusOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsOpenForEdit(assetObject, message, statusOptions)
end

--- @return System_Boolean
--- @param assetOrMetaFilePath System_String
--- @param message System_String&
function UnityEditor_AssetDatabase:IsOpenForEdit(assetOrMetaFilePath, message)
end

--- @return System_Boolean
--- @param assetOrMetaFilePath System_String
--- @param message System_String&
--- @param statusOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsOpenForEdit(assetOrMetaFilePath, message, statusOptions)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
function UnityEditor_AssetDatabase:IsMetaFileOpenForEdit(assetObject)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param statusOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsMetaFileOpenForEdit(assetObject, statusOptions)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param message System_String&
function UnityEditor_AssetDatabase:IsMetaFileOpenForEdit(assetObject, message)
end

--- @return System_Boolean
--- @param assetObject UnityEngine_Object
--- @param message System_String&
--- @param statusOptions UnityEditor_StatusQueryOptions
function UnityEditor_AssetDatabase:IsMetaFileOpenForEdit(assetObject, message, statusOptions)
end

--- @return UnityEngine_Object
--- @param type System_Type
--- @param path System_String
function UnityEditor_AssetDatabase:GetBuiltinExtraResource(type, path)
end

--- @return CS_T
--- @param path System_String
function UnityEditor_AssetDatabase:GetBuiltinExtraResource(path)
end

--- @return System_Void
--- @param assetPaths System_Collections_Generic_IEnumerable`1[System_String]
--- @param options UnityEditor_ForceReserializeAssetsOptions
function UnityEditor_AssetDatabase:ForceReserializeAssets(assetPaths, options)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
--- @param guid System_String&
--- @param localId System_Int32&
function UnityEditor_AssetDatabase:TryGetGUIDAndLocalFileIdentifier(obj, guid, localId)
end

--- @return System_Boolean
--- @param instanceID System_Int32
--- @param guid System_String&
--- @param localId System_Int32&
function UnityEditor_AssetDatabase:TryGetGUIDAndLocalFileIdentifier(instanceID, guid, localId)
end

--- @return System_Boolean
--- @param obj UnityEngine_Object
--- @param guid System_String&
--- @param localId System_Int64&
function UnityEditor_AssetDatabase:TryGetGUIDAndLocalFileIdentifier(obj, guid, localId)
end

--- @return System_Boolean
--- @param instanceID System_Int32
--- @param guid System_String&
--- @param localId System_Int64&
function UnityEditor_AssetDatabase:TryGetGUIDAndLocalFileIdentifier(instanceID, guid, localId)
end

--- @return System_Void
function UnityEditor_AssetDatabase:ForceReserializeAssets()
end

--- @return System_String
--- @param path System_String
function UnityEditor_AssetDatabase:GetTextMetaDataPathFromAssetPath(path)
end

--- @return System_String[]
--- @param filter System_String
function UnityEditor_AssetDatabase:FindAssets(filter)
end

--- @return System_String[]
--- @param filter System_String
--- @param searchInFolders System_String[]
function UnityEditor_AssetDatabase:FindAssets(filter, searchInFolders)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEditor_AssetDatabase:Equals(obj)
end

--- @return System_Int32
function UnityEditor_AssetDatabase:GetHashCode()
end

--- @return System_Type
function UnityEditor_AssetDatabase:GetType()
end

--- @return System_String
function UnityEditor_AssetDatabase:ToString()
end
