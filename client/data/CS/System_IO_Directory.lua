--- @class System_IO_Directory
System_IO_Directory = Class(System_IO_Directory)

--- @return void
function System_IO_Directory:Ctor()
end

--- @return System_String[]
--- @param path System_String
function System_IO_Directory:GetFiles(path)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:GetFiles(path, searchPattern)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:GetFiles(path, searchPattern, searchOption)
end

--- @return System_String[]
--- @param path System_String
function System_IO_Directory:GetDirectories(path)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:GetDirectories(path, searchPattern)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:GetDirectories(path, searchPattern, searchOption)
end

--- @return System_String[]
--- @param path System_String
function System_IO_Directory:GetFileSystemEntries(path)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:GetFileSystemEntries(path, searchPattern)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:GetFileSystemEntries(path, searchPattern, searchOption)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
function System_IO_Directory:EnumerateDirectories(path)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:EnumerateDirectories(path, searchPattern)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:EnumerateDirectories(path, searchPattern, searchOption)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
function System_IO_Directory:EnumerateFiles(path)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:EnumerateFiles(path, searchPattern)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:EnumerateFiles(path, searchPattern, searchOption)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
function System_IO_Directory:EnumerateFileSystemEntries(path)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
function System_IO_Directory:EnumerateFileSystemEntries(path, searchPattern)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function System_IO_Directory:EnumerateFileSystemEntries(path, searchPattern, searchOption)
end

--- @return System_String
--- @param path System_String
function System_IO_Directory:GetDirectoryRoot(path)
end

--- @return System_IO_DirectoryInfo
--- @param path System_String
function System_IO_Directory:CreateDirectory(path)
end

--- @return System_IO_DirectoryInfo
--- @param path System_String
--- @param directorySecurity System_Security_AccessControl_DirectorySecurity
function System_IO_Directory:CreateDirectory(path, directorySecurity)
end

--- @return System_Void
--- @param path System_String
function System_IO_Directory:Delete(path)
end

--- @return System_Void
--- @param path System_String
--- @param recursive System_Boolean
function System_IO_Directory:Delete(path, recursive)
end

--- @return System_Boolean
--- @param path System_String
function System_IO_Directory:Exists(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetLastAccessTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetLastAccessTimeUtc(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetLastWriteTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetLastWriteTimeUtc(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetCreationTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_Directory:GetCreationTimeUtc(path)
end

--- @return System_String
function System_IO_Directory:GetCurrentDirectory()
end

--- @return System_String[]
function System_IO_Directory:GetLogicalDrives()
end

--- @return System_IO_DirectoryInfo
--- @param path System_String
function System_IO_Directory:GetParent(path)
end

--- @return System_Void
--- @param sourceDirName System_String
--- @param destDirName System_String
function System_IO_Directory:Move(sourceDirName, destDirName)
end

--- @return System_Void
--- @param path System_String
--- @param directorySecurity System_Security_AccessControl_DirectorySecurity
function System_IO_Directory:SetAccessControl(path, directorySecurity)
end

--- @return System_Void
--- @param path System_String
--- @param creationTime System_DateTime
function System_IO_Directory:SetCreationTime(path, creationTime)
end

--- @return System_Void
--- @param path System_String
--- @param creationTimeUtc System_DateTime
function System_IO_Directory:SetCreationTimeUtc(path, creationTimeUtc)
end

--- @return System_Void
--- @param path System_String
function System_IO_Directory:SetCurrentDirectory(path)
end

--- @return System_Void
--- @param path System_String
--- @param lastAccessTime System_DateTime
function System_IO_Directory:SetLastAccessTime(path, lastAccessTime)
end

--- @return System_Void
--- @param path System_String
--- @param lastAccessTimeUtc System_DateTime
function System_IO_Directory:SetLastAccessTimeUtc(path, lastAccessTimeUtc)
end

--- @return System_Void
--- @param path System_String
--- @param lastWriteTime System_DateTime
function System_IO_Directory:SetLastWriteTime(path, lastWriteTime)
end

--- @return System_Void
--- @param path System_String
--- @param lastWriteTimeUtc System_DateTime
function System_IO_Directory:SetLastWriteTimeUtc(path, lastWriteTimeUtc)
end

--- @return System_Security_AccessControl_DirectorySecurity
--- @param path System_String
--- @param includeSections System_Security_AccessControl_AccessControlSections
function System_IO_Directory:GetAccessControl(path, includeSections)
end

--- @return System_Security_AccessControl_DirectorySecurity
--- @param path System_String
function System_IO_Directory:GetAccessControl(path)
end

--- @return System_Boolean
--- @param obj System_Object
function System_IO_Directory:Equals(obj)
end

--- @return System_Int32
function System_IO_Directory:GetHashCode()
end

--- @return System_Type
function System_IO_Directory:GetType()
end

--- @return System_String
function System_IO_Directory:ToString()
end
