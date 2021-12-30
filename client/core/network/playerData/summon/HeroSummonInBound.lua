--- @class HeroSummonInBound
HeroSummonInBound = Class(HeroSummonInBound)

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function HeroSummonInBound:ReadBuffer(buffer)
    self.sizeOfLastFreeSummon = buffer:GetByte()

    self.summonLastFreeDict = Dictionary()
    for i = 1, self.sizeOfLastFreeSummon do
        self.summonLastFreeDict:Add(buffer:GetByte(), buffer:GetLong())
    end
end

--- @return number
--- @param summonType SummonType
function HeroSummonInBound:GetTimeFreeSummon(summonType)
    local serverTime = zg.timeMgr:GetServerTime()
    local csv = ResourceMgr.GetHeroSummonConfig()
    return csv:GetFreeInterval(summonType) - (serverTime - self.summonLastFreeDict:Get(summonType)) + 1
end

--- @return void
function HeroSummonInBound:ToString()
    local str = ""
    str = str .. "last: " .. self.summonLastFreeDict:ToString()
    return str
end