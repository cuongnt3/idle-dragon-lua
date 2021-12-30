require "lua.client.core.network.playerData.common.HeroStateInBound"

--- @class BattleResultInBound
BattleResultInBound = Class(BattleResultInBound)

--- @return void
function BattleResultInBound:Ctor()
    --- @type boolean
    self.isWin = nil
    --- @type List
    self.heroStateAttacker = nil
    --- @type List
    self.heroStateDefender = nil
    --- @type SeedInBound
    self.seedInBound = nil
    --- @type Dictionary
    self.activeLinking = nil
end

function BattleResultInBound:GetArgAttackerHp()
    local attackerCount = self.heroStateAttacker:Count()
    if attackerCount > 0 then
        local total = 0
        for i = 1, self.heroStateAttacker:Count() do
            --- @type HeroStateInBound
            local heroStateInBound = self.heroStateAttacker:Get(i)
            total = total + heroStateInBound.hp
        end
        return MathUtils.RoundDecimal(total / attackerCount, 1)
    end
    return 0
end

function BattleResultInBound:GetArgDefenderHp()
    local defenderCount = self.heroStateDefender:Count()
    if defenderCount > 0 then
        local total = 0
        for i = 1, self.heroStateDefender:Count() do
            --- @type HeroStateInBound
            local heroStateInBound = self.heroStateDefender:Get(i)
            total = total + heroStateInBound.hp
        end
        return MathUtils.RoundDecimal(total / defenderCount, 1)
    end
    return 0
end

--- @return string
function BattleResultInBound:ToString()
    local print = function(heroList)
        local str = ""
        for i, v in ipairs(heroList:GetItems()) do
            str = str .. v:ToString() .. "\n"
        end
        return str
    end

    local content = "ATTACKER: \n"
    content = content .. print(self.heroStateAttacker)
    content = content .. "DEFENDER: \n"
    content = content .. print(self.heroStateDefender)
    return content
end

--- @return BattleResultInBound
--- @param buffer UnifiedNetwork_ByteBuf
--- @param isApply boolean
function BattleResultInBound.CreateByBuffer(buffer, isApply)
    local data = BattleResultInBound()

    data.isWin = buffer:GetBool()

    data.heroStateAttacker = NetworkUtils.GetListDataInBound(buffer, HeroStateInBound.CreateByBuffer)
    data.heroStateDefender = NetworkUtils.GetListDataInBound(buffer, HeroStateInBound.CreateByBuffer)

    data.seedInBound = SeedInBound.CreateByBuffer(buffer)
    if isApply == nil or isApply == true then
        data.seedInBound:Initialize()
    end
    local size = buffer:GetByte()
    data.activeLinking = Dictionary()
    for i = 1, size do
        data.activeLinking:Add(buffer:GetInt(), buffer:GetInt())
    end
    zg.playerData.activeLinking = data.activeLinking
    return data
end