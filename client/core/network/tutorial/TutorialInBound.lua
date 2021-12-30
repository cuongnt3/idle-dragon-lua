--- @class TutorialInBound
TutorialInBound = Class(TutorialInBound)

--- @return void
function TutorialInBound:Ctor()
end

--- @param buffer UnifiedNetwork_ByteBuf
function TutorialInBound:ReadBuffer(buffer)
    --- @type number
    self.summonStep = buffer:GetByte()
    --- @type number
    local size = buffer:GetShort()
    --- @type List
    self.listStepComplete = List()
    for _ = 1, size do
        self.listStepComplete:Add(buffer:GetInt())
    end
end