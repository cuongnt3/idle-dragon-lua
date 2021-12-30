--- @class ArenaTeamBattleBotRecord
ArenaTeamBattleBotRecord = Class(ArenaTeamBattleBotRecord)

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function ArenaTeamBattleBotRecord:Ctor(buffer)
    ---@type OtherPlayerInfoInBound
    self.teamRecordAttack = OtherPlayerInfoInBound.CreateByBuffer(buffer)
    ---@type OtherPlayerInfoInBound
    self.teamRecordDefend = PredefineTeamData.CreateByBuffer(buffer)
    ---@type boolean
    self.isAttackWin = buffer:GetBool()
    ---@type SeedInBound
    self.seedInBound = SeedInBound.CreateByBuffer(buffer)
end