--- @class BattleDetailData
BattleDetailData = Class(BattleDetailData)

--- @return void
function BattleDetailData:Ctor(attackerTeam, defenderTeam, seedInbound)
    ---@type BattleTeamInfo
    self.attackerTeam = attackerTeam
    ---@type BattleTeamInfo
    self.defenderTeam = defenderTeam
    ---@type SeedInBound
    self.seedInbound = seedInbound
end