--- @class LightBuzz_Archiver_Archiver
LightBuzz_Archiver_Archiver = Class(LightBuzz_Archiver_Archiver)

--- @return void
function LightBuzz_Archiver_Archiver:Ctor()
	--- @type System_String
	self.Extension = nil
end

--- @return System_Void
--- @param source System_String
--- @param destination System_String
--- @param replaceExisting System_Boolean
function LightBuzz_Archiver_Archiver:Compress(source, destination, replaceExisting)
end

--- @return System_Void
--- @param source System_IO_DirectoryInfo
--- @param destination System_IO_FileInfo
--- @param replaceExisting System_Boolean
function LightBuzz_Archiver_Archiver:Compress(source, destination, replaceExisting)
end

--- @return System_Void
--- @param source System_IO_FileInfo
--- @param destination System_IO_FileInfo
--- @param replaceExisting System_Boolean
function LightBuzz_Archiver_Archiver:Compress(source, destination, replaceExisting)
end

--- @return System_Void
--- @param source System_String
--- @param destination System_String
function LightBuzz_Archiver_Archiver:Decompress(source, destination)
end

--- @return System_Void
--- @param source System_IO_FileInfo
--- @param destination System_IO_DirectoryInfo
function LightBuzz_Archiver_Archiver:Decompress(source, destination)
end

--- @return System_Boolean
--- @param obj System_Object
function LightBuzz_Archiver_Archiver:Equals(obj)
end

--- @return System_Int32
function LightBuzz_Archiver_Archiver:GetHashCode()
end

--- @return System_Type
function LightBuzz_Archiver_Archiver:GetType()
end

--- @return System_String
function LightBuzz_Archiver_Archiver:ToString()
end
