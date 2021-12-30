--- @class TeamPowerCalculator
TeamPowerCalculator = Class(TeamPowerCalculator)

--- @return void
function TeamPowerCalculator:Ctor()
    self.battle = Battle()
end

--- @return void
--- @param teamInfo BattleTeamInfo
function TeamPowerCalculator:SetTeamInfo(teamInfo)
    local randomHelper = RandomHelper()
    randomHelper:SetSeed(0)

    local dummyTeam = self:CreateDummyTeam()
    self.battle:SetTeamInfo(teamInfo, dummyTeam, randomHelper)
end

--- @return void
--- @param teamInfo BattleTeamInfo
function TeamPowerCalculator:SetDefenderTeamInfo(teamInfo)
    local randomHelper = RandomHelper()
    randomHelper:SetSeed(0)

    local dummyTeam = self:CreateDummyTeam()
    self.battle:SetTeamInfo(dummyTeam, teamInfo, randomHelper)
end

--- @return number
--- @param battleService BattleService
function TeamPowerCalculator:CalculatePower(battleService)
    local result = 0

    self.battle:SetRunMode(RunMode.FASTEST)
    self.battle:PrepareBattle(battleService)

    local attackerTeam = self.battle:GetTeamById(BattleConstants.ATTACKER_TEAM_ID)

    local heroList = attackerTeam:GetHeroList()
    for i = 1, heroList:Count() do
        local hero = heroList:Get(i)
        result = result + hero:CalculateBattlePower()
    end

    local summoner = attackerTeam:GetSummoner()
    result = result + summoner:CalculateBattlePower()

    return math.floor(result)
end

--- @return Dictionary<number, number> key: index of hero in formation (1->5), value: power of hero
--- @param battleService BattleService
--- @param heroDataService HeroDataService
function TeamPowerCalculator:CalculatePowerDetail(battleService, heroDataService)
    local result = Dictionary()

    self.battle:SetRunMode(RunMode.FASTEST)
    self.battle:PrepareBattle(battleService)

    local attackerTeam = self.battle:GetTeamById(BattleConstants.ATTACKER_TEAM_ID)
    local formationData = heroDataService:GetFormationData(attackerTeam.formationId)

    local heroList = attackerTeam:GetHeroList()
    for i = 1, heroList:Count() do
        --- @type BaseHero
        local hero = heroList:Get(i)
        local power = math.floor(hero:CalculateBattlePower())
        if hero.positionInfo.isFrontLine == true then
            result:Add(hero.positionInfo.position, power)
        else
            result:Add(hero.positionInfo.position + formationData.frontLine, power)
        end
    end
    return result
end

--- @return BattleTeamInfo
function TeamPowerCalculator:CreateDummyTeam()
    local defenderTeam = BattleTeamInfo()
    defenderTeam.teamId = BattleConstants.DEFENDER_TEAM_ID
    defenderTeam.formation = 1

    local dummySummoner = SummonerBattleInfo()
    dummySummoner:SetInfo(BattleConstants.DEFENDER_TEAM_ID, HeroConstants.SUMMONER_NOVICE_ID, HeroConstants.DEFAULT_SUMMONER_STAR, 1)
    dummySummoner:SetSkills(HeroConstants.DEFAULT_SUMMONER_STAR, HeroConstants.DEFAULT_SUMMONER_STAR, HeroConstants.DEFAULT_SUMMONER_STAR, HeroConstants.DEFAULT_SUMMONER_STAR)
    dummySummoner.isDummy = true

    defenderTeam.summonerBattleInfo = dummySummoner

    return defenderTeam
end