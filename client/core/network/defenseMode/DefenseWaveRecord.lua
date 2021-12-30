require("lua.client.core.network.playerData.defenseMode.TeamHeroState")
require("lua.client.core.network.playerData.SeedInBound")

--- @class DefenseWaveRecord
DefenseWaveRecord = Class(DefenseWaveRecord)

function DefenseWaveRecord:Ctor(buffer)
    --- @type TeamHeroState
    self.teamHeroState = nil
    --- @type boolean
    self.isWin = nil
    --- @type SeedInBound
    self.seed = nil


    if buffer ~= nil then
        self:ReadBuffer(buffer)
    end
end

--- @param buffer UnifiedNetwork_ByteBuf
function DefenseWaveRecord:ReadBuffer(buffer)
    self.teamHeroState = TeamHeroState(buffer)
    self.isWin = buffer:GetBool()
    self.seed = SeedInBound.CreateByBuffer(buffer)
end