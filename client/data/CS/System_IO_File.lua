--- @class System_IO_File
System_IO_File = Class(System_IO_File)

--- @return void
function System_IO_File:Ctor()
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String
function System_IO_File:AppendAllText(path, contents)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String
--- @param encoding System_Text_Encoding
function System_IO_File:AppendAllText(path, contents, encoding)
end

--- @return System_IO_StreamWriter
--- @param path System_String
function System_IO_File:AppendText(path)
end

--- @return System_Void
--- @param sourceFileName System_String
--- @param destFileName System_String
function System_IO_File:Copy(sourceFileName, destFileName)
end

--- @return System_Void
--- @param sourceFileName System_String
--- @param destFileName System_String
--- @param overwrite System_Boolean
function System_IO_File:Copy(sourceFileName, destFileName, overwrite)
end

--- @return System_IO_FileStream
--- @param path System_String
function System_IO_File:Create(path)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param bufferSize System_Int32
function System_IO_File:Create(path, bufferSize)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param bufferSize System_Int32
--- @param options System_IO_FileOptions
function System_IO_File:Create(path, bufferSize, options)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param bufferSize System_Int32
--- @param options System_IO_FileOptions
--- @param fileSecurity System_Security_AccessControl_FileSecurity
function System_IO_File:Create(path, bufferSize, options, fileSecurity)
end

--- @return System_IO_StreamWriter
--- @param path System_String
function System_IO_File:CreateText(path)
end

--- @return System_Void
--- @param path System_String
function System_IO_File:Delete(path)
end

--- @return System_Boolean
--- @param path System_String
function System_IO_File:Exists(path)
end

--- @return System_Security_AccessControl_FileSecurity
--- @param path System_String
function System_IO_File:GetAccessControl(path)
end

--- @return System_Security_AccessControl_FileSecurity
--- @param path System_String
--- @param includeSections System_Security_AccessControl_AccessControlSections
function System_IO_File:GetAccessControl(path, includeSections)
end

--- @return System_IO_FileAttributes
--- @param path System_String
function System_IO_File:GetAttributes(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetCreationTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetCreationTimeUtc(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetLastAccessTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetLastAccessTimeUtc(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetLastWriteTime(path)
end

--- @return System_DateTime
--- @param path System_String
function System_IO_File:GetLastWriteTimeUtc(path)
end

--- @return System_Void
--- @param sourceFileName System_String
--- @param destFileName System_String
function System_IO_File:Move(sourceFileName, destFileName)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param mode System_IO_FileMode
function System_IO_File:Open(path, mode)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param mode System_IO_FileMode
--- @param access System_IO_FileAccess
function System_IO_File:Open(path, mode, access)
end

--- @return System_IO_FileStream
--- @param path System_String
--- @param mode System_IO_FileMode
--- @param access System_IO_FileAccess
--- @param share System_IO_FileShare
function System_IO_File:Open(path, mode, access, share)
end

--- @return System_IO_FileStream
--- @param path System_String
function System_IO_File:OpenRead(path)
end

--- @return System_IO_StreamReader
--- @param path System_String
function System_IO_File:OpenText(path)
end

--- @return System_IO_FileStream
--- @param path System_String
function System_IO_File:OpenWrite(path)
end

--- @return System_Void
--- @param sourceFileName System_String
--- @param destinationFileName System_String
--- @param destinationBackupFileName System_String
function System_IO_File:Replace(sourceFileName, destinationFileName, destinationBackupFileName)
end

--- @return System_Void
--- @param sourceFileName System_String
--- @param destinationFileName System_String
--- @param destinationBackupFileName System_String
--- @param ignoreMetadataErrors System_Boolean
function System_IO_File:Replace(sourceFileName, destinationFileName, destinationBackupFileName, ignoreMetadataErrors)
end

--- @return System_Void
--- @param path System_String
--- @param fileSecurity System_Security_AccessControl_FileSecurity
function System_IO_File:SetAccessControl(path, fileSecurity)
end

--- @return System_Void
--- @param path System_String
--- @param fileAttributes System_IO_FileAttributes
function System_IO_File:SetAttributes(path, fileAttributes)
end

--- @return System_Void
--- @param path System_String
--- @param creationTime System_DateTime
function System_IO_File:SetCreationTime(path, creationTime)
end

--- @return System_Void
--- @param path System_String
--- @param creationTimeUtc System_DateTime
function System_IO_File:SetCreationTimeUtc(path, creationTimeUtc)
end

--- @return System_Void
--- @param path System_String
--- @param lastAccessTime System_DateTime
function System_IO_File:SetLastAccessTime(path, lastAccessTime)
end

--- @return System_Void
--- @param path System_String
--- @param lastAccessTimeUtc System_DateTime
function System_IO_File:SetLastAccessTimeUtc(path, lastAccessTimeUtc)
end

--- @return System_Void
--- @param path System_String
--- @param lastWriteTime System_DateTime
function System_IO_File:SetLastWriteTime(path, lastWriteTime)
end

--- @return System_Void
--- @param path System_String
--- @param lastWriteTimeUtc System_DateTime
function System_IO_File:SetLastWriteTimeUtc(path, lastWriteTimeUtc)
end

--- @return System_Byte[]
--- @param path System_String
function System_IO_File:ReadAllBytes(path)
end

--- @return System_String[]
--- @param path System_String
function System_IO_File:ReadAllLines(path)
end

--- @return System_String[]
--- @param path System_String
--- @param encoding System_Text_Encoding
function System_IO_File:ReadAllLines(path, encoding)
end

--- @return System_String
--- @param path System_String
function System_IO_File:ReadAllText(path)
end

--- @return System_String
--- @param path System_String
--- @param encoding System_Text_Encoding
function System_IO_File:ReadAllText(path, encoding)
end

--- @return System_Void
--- @param path System_String
--- @param bytes System_Byte[]
function System_IO_File:WriteAllBytes(path, bytes)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String[]
function System_IO_File:WriteAllLines(path, contents)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String[]
--- @param encoding System_Text_Encoding
function System_IO_File:WriteAllLines(path, contents, encoding)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String
function System_IO_File:WriteAllText(path, contents)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_String
--- @param encoding System_Text_Encoding
function System_IO_File:WriteAllText(path, contents, encoding)
end

--- @return System_Void
--- @param path System_String
function System_IO_File:Encrypt(path)
end

--- @return System_Void
--- @param path System_String
function System_IO_File:Decrypt(path)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
function System_IO_File:ReadLines(path)
end

--- @return System_Collections_Generic_IEnumerable`1[System_String]
--- @param path System_String
--- @param encoding System_Text_Encoding
function System_IO_File:ReadLines(path, encoding)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_Collections_Generic_IEnumerable`1[System_String]
function System_IO_File:AppendAllLines(path, contents)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_Collections_Generic_IEnumerable`1[System_String]
--- @param encoding System_Text_Encoding
function System_IO_File:AppendAllLines(path, contents, encoding)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_Collections_Generic_IEnumerable`1[System_String]
function System_IO_File:WriteAllLines(path, contents)
end

--- @return System_Void
--- @param path System_String
--- @param contents System_Collections_Generic_IEnumerable`1[System_String]
--- @param encoding System_Text_Encoding
function System_IO_File:WriteAllLines(path, contents, encoding)
end

--- @return System_Boolean
--- @param obj System_Object
function System_IO_File:Equals(obj)
end

--- @return System_Int32
function System_IO_File:GetHashCode()
end

--- @return System_Type
function System_IO_File:GetType()
end

--- @return System_String
function System_IO_File:ToString()
end
