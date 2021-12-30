--- @class ProgressPackCollection
ProgressPackCollection = Class(ProgressPackCollection)

function ProgressPackCollection:Ctor()
    --- @type Dictionary
    self.activeProgressPackDict = Dictionary()
    --- @type Dictionary
    self.boughtPackDict = Dictionary()
end

--- @param buffer UnifiedNetwork_ByteBuf
function ProgressPackCollection:ReadBuffer(buffer)
    self.activeProgressPackDict = Dictionary()
    --- @type number
    local size = buffer:GetByte()
    for _ = 1, size do
        local groupId = buffer:GetInt()
        local createdTime = buffer:GetLong()
        self.activeProgressPackDict:Add(groupId, createdTime)
    end

    self.boughtPackDict = Dictionary()
    --- @type number
    size = buffer:GetByte()
    for _ = 1, size do
        local packId = buffer:GetInt()
        local numberBought = buffer:GetInt()
        self.boughtPackDict:Add(packId, numberBought)
    end
end

--- @return number
--- @param packId number
function ProgressPackCollection:GetBoughtCount(packId)
    if self.boughtPackDict:IsContainKey(packId) then
        return self.boughtPackDict:Get(packId)
    end
    return 0
end

--- @param packId number
function ProgressPackCollection:IncreaseBoughtPack(packId)
    local bought = self:GetBoughtCount(packId)
    self.boughtPackDict:Add(packId, bought + 1)
end

--- @return List | GroupProductConfig
function ProgressPackCollection:GetActiveGroupList()
    local activeList = List()
    --- @type ProgressGroupPackOfProducts
    local iapConfig = ResourceMgr.GetPurchaseConfig():GetCashShop():GetPack(OpCode.PURCHASE_PROGRESS_PACK)
    for groupId, createdTime in pairs(self.activeProgressPackDict:GetItems()) do
        local group = iapConfig:GetGroup(groupId)
        if group ~= nil and group:IsActiveByDuration(createdTime) then
            activeList:Add(group)
        end
    end
    activeList:SortWithMethod(GroupProductConfig.SortByPriority)
    return activeList
end

--- @return List | GroupProductConfig
--- @param packViewType PackViewType
function ProgressPackCollection:GetListActiveGroupByViewType(packViewType)
    local activeList = self:GetActiveGroupList()
    for i = activeList:Count(), 1, -1 do
        --- @type GroupProductConfig
        local groupProductConfig = activeList:Get(i)
        if groupProductConfig.viewType ~= packViewType then
            activeList:RemoveByIndex(i)
        end
    end
    return activeList
end