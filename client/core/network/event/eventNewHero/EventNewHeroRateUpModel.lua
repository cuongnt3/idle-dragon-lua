--- @class EventNewHeroRateUpModel : EventPopupModel
EventNewHeroRateUpModel = Class(EventNewHeroRateUpModel, EventPopupModel)

function EventNewHeroRateUpModel:Ctor()
    --- @type number
    self.numberSummon = 0
    --- @type number
    self.lastFreeSummon = 0
    EventPopupModel.Ctor(self)
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventNewHeroRateUpModel:ReadInnerData(buffer)
    self.numberSummon = buffer:GetInt()
    self.lastFreeSummon = buffer:GetLong()
end

--- @return number
function EventNewHeroRateUpModel:GetTimeFreeSummon()
    local serverTime = zg.timeMgr:GetServerTime()
    return self:GetConfig():GetFreeInterval() - (serverTime - self.lastFreeSummon) + 1
end

function EventNewHeroRateUpModel:HasNotification()
    return zg.timeMgr:GetServerTime() - self.lastFreeSummon > self:GetConfig():GetFreeInterval()
end