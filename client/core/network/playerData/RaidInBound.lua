--- @class RaidInBound
RaidInBound = Class(RaidInBound)

--- @return void
function RaidInBound:Ctor()
end

--- @param buffer UnifiedNetwork_ByteBuf
function RaidInBound:ReadBuffer(buffer)
    local size = buffer:GetByte()
    ---@type Dictionary
    self.turnBuyInDay = Dictionary()
    for _ = 1, size do
        self.turnBuyInDay:Add(buffer:GetByte(), buffer:GetByte())
    end
end

--- @return void
function RaidInBound:ToString()
    return LogUtils.ToDetail(self.turnBuyInDay:GetItems())
end