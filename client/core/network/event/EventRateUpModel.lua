--- @class EventRateUpModel : EventPopupModel
EventRateUpModel = Class(EventRateUpModel, EventPopupModel)

--- @param buffer UnifiedNetwork_ByteBuf
function EventRateUpModel:ReadData(buffer)
    EventPopupModel.ReadData(self, buffer)
    self.numberSummon = buffer:GetInt()
end

