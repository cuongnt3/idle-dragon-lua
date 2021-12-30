
--- @class BattleRaidOutBound : BattleFormationOutBound
BattleRaidOutBound = Class(BattleRaidOutBound, BattleFormationOutBound)

--- @return void
--- @param raidType RaidModeType
--- @param stage number
--- @param uiFormationTeamData UIFormationTeamData
function BattleRaidOutBound:Ctor(raidType, stage, uiFormationTeamData)
    self.raidType = raidType
    self.stage = stage
    self.uiFormationTeamData = uiFormationTeamData
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function BattleRaidOutBound:Serialize(buffer)
    buffer:PutByte(self.raidType)
    buffer:PutShort(self.stage)
    BattleFormationOutBound.Serialize(self, buffer)
end