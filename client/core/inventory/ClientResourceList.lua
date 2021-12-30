--- @class ClientResourceList
ClientResourceList = Class(ClientResourceList)

--- @return void
--- @param type ResourceType
function ClientResourceList:Ctor(type)
    self.type = type
    --- @type List --<number>
    self._resourceList = List()
end

--- @return void
--- @param data table
function ClientResourceList:InitDatabase(data)
    if data ~= nil then
        self._resourceList:Clear()
        for k, v in pairs(data) do
            self:Add(v)
        end
    end
end

--- @return number
--- @param resourceId number
function ClientResourceList:Get(resourceId)
    if resourceId == nil then
        assert(false, string.format("resourceId[%s]", resourceId))
    end
    return self._resourceList:IsContainValue(resourceId) and 1 or 0
end

--- @return table
function ClientResourceList:GetItems()
    return self._resourceList:GetItems()
end

--- @return table
function ClientResourceList:GetResourceDict()
    return self._resourceList
end

--- @return void
--- @param resourceId number
function ClientResourceList:InitResource(resourceId)
    if not self._resourceList:IsContainValue(resourceId) then
        self._resourceList:Add(resourceId)
    end
end

--- @return void
--- @param resourceId number
function ClientResourceList:Add(resourceId)
    if not self._resourceList:IsContainValue(resourceId) then
        self._resourceList:Add(resourceId)
        RxMgr.changeResource:Next(
                {['resourceType'] = self.type, ['resourceId'] = resourceId})
    end
end

--- @return void
--- @param resourceId number
function ClientResourceList:Sub(resourceId)
    if self._resourceList:IsContainValue(resourceId) then
        self._resourceList:RemoveByReference(resourceId)
        RxMgr.changeResource:Next(
                {['resourceType'] = self.type, ['resourceId'] = resourceId})
    end
end

--- @return boolean
--- @param resourceId number
function ClientResourceList:IsValid(resourceId)
    return self._resourceList:IsContainValue(resourceId)
end

--- @return void
function ClientResourceList:Clear()
    self._resourceList:Clear()
end

function ClientResourceList:ToString()
    local content = "Resource["
    for k, itemId in pairs(self._resourceList:GetItems()) do
        content = content .. itemId .. ","
    end
    content = content .. ']\n'
    return content
end