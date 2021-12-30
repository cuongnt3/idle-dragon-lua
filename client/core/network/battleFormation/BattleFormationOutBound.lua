--- @class BattleFormationOutBound : OutBound
BattleFormationOutBound = Class(BattleFormationOutBound, OutBound)

--- @return void
--- @param uiFormationTeamData UIFormationTeamData
--- @param bossCreatedTime number
function BattleFormationOutBound:Ctor(uiFormationTeamData, bossCreatedTime, stage)
    self.uiFormationTeamData = uiFormationTeamData
    self.bossCreatedTime = bossCreatedTime
    self.stage = stage
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function BattleFormationOutBound:Serialize(buffer)
    buffer:PutByte(self.uiFormationTeamData.summonerId)
    buffer:PutByte(self.uiFormationTeamData.formationId)
    local heroList = self.uiFormationTeamData.heroList
    local count = 0
    --- @param hero {heroResource, isFrontLine, position}
    for _, hero in ipairs(heroList:GetItems()) do
        --- @type HeroResource
        local heroResource = hero.heroResource
        if heroResource.inventoryId ~= nil then
            count = count + 1
        end
    end
    buffer:PutByte(count)
    --- @param hero {heroResource, isFrontLine, position}
    for _, hero in ipairs(heroList:GetItems()) do
        --- @type HeroResource
        local heroResource = hero.heroResource
        if heroResource.inventoryId ~= nil then
            local outBound = UnknownOutBound.CreateInstance(PutMethod.Long, heroResource.inventoryId, PutMethod.Bool, hero.isFrontLine, PutMethod.Byte, hero.position)
            outBound:Serialize(buffer)
        end
    end
    if self.bossCreatedTime ~= nil then
        buffer:PutLong(self.bossCreatedTime)
    end
    if self.stage ~= nil then
        buffer:PutInt(self.stage)
    end
end