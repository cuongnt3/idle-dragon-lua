--- @class BattleService
BattleService = Class(BattleService)

--- @return void
function BattleService:Ctor()
    --- @type HeroDataService
    self._heroDataService = nil

    --- @type ItemDataService
    self._itemDataService = nil

    --- @type PredefineTeamDataService
    self._predefineTeamDataService = nil
end

--- @return HeroDataService
function BattleService:GetHeroDataService()
    return self._heroDataService
end

--- @return ItemDataService
function BattleService:GetItemDataService()
    return self._itemDataService
end

--- @return PredefineTeamDataService
function BattleService:GetPredefineTeamDataService()
    return self._predefineTeamDataService
end


--- @return void
--- @param heroDataService HeroDataService
--- @param itemDataService ItemDataService
--- @param predefineTeamDataService PredefineTeamDataService
function BattleService:SetDependencies(heroDataService, itemDataService,predefineTeamDataService)
    self._heroDataService = heroDataService
    self._itemDataService = itemDataService
    self._predefineTeamDataService = predefineTeamDataService
end

--- @return BattleResult
--- @param battle Battle
--- @param runMode RunMode
function BattleService:CalculateBattleResult(battle, runMode)
    battle:SetRunMode(runMode)
    battle:PrepareBattle(self)

    battle:OnStartBattle()
    battle:Resolve()
    battle:OnEndBattle()

    return battle:GetResult()
end