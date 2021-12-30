--- @class BAGame_UserStorageInfo
BAGame_UserStorageInfo = Class(BAGame_UserStorageInfo)

--- @return void
function BAGame_UserStorageInfo:Ctor()
end

--- @return System_Void
--- @param hash System_String
--- @param uuid System_String
--- @param partner System_Int32
--- @param isProduction System_Boolean
--- @param domainDev System_String
--- @param domainProduction System_String
--- @param apiDomainDev System_String
--- @param apiDomainProduction System_String
--- @param querryParams System_String
--- @param querryParamsIap System_String
--- @param querryParamsProduct System_String
function BAGame_UserStorageInfo:SetSungameDefine(hash, uuid, partner, isProduction, domainDev, domainProduction, apiDomainDev, apiDomainProduction, querryParams, querryParamsIap, querryParamsProduct)
end

--- @return System_Void
--- @param hash System_String
--- @param uuid System_String
function BAGame_UserStorageInfo:SaveUserHash(hash, uuid)
end

--- @return System_String
function BAGame_UserStorageInfo:GetAPIKey()
end

--- @return System_String
function BAGame_UserStorageInfo:GetUuid()
end

--- @return System_String
function BAGame_UserStorageInfo:GetDeviceId()
end

--- @return System_Boolean
--- @param obj System_Object
function BAGame_UserStorageInfo:Equals(obj)
end

--- @return System_Int32
function BAGame_UserStorageInfo:GetHashCode()
end

--- @return System_Type
function BAGame_UserStorageInfo:GetType()
end

--- @return System_String
function BAGame_UserStorageInfo:ToString()
end
