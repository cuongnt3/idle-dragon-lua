--- @class EventNewHeroSummonModel : EventPopupModel
EventNewHeroSummonModel = Class(EventNewHeroSummonModel, EventPopupModel)

function EventNewHeroSummonModel:Ctor()
    --- @type number
    self.numberSummon = 0
    --- @type number
    self.lastFreeSummon = 0
    EventPopupModel.Ctor(self)
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventNewHeroSummonModel:ReadInnerData(buffer)
    self.numberSummon = buffer:GetInt()
    self.lastFreeSummon = buffer:GetLong()
end

--- @return number
function EventNewHeroSummonModel:GetTimeFreeSummon()
    local serverTime = zg.timeMgr:GetServerTime()
    return self:GetConfig():GetFreeInterval() - (serverTime - self.lastFreeSummon) + 1
end

function EventNewHeroSummonModel:HasNotification()
    return zg.timeMgr:GetServerTime() - self.lastFreeSummon > self:GetConfig():GetFreeInterval()
end