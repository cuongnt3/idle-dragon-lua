--- @class Summoner_SkillController
Summoner_SkillController = Class(Summoner_SkillController, SkillController)

---------------------------------------- Manage effects ----------------------------------------
--- @return boolean
--- @param initiator BaseSummoner
function Summoner_SkillController:CanBeCounterAttack(initiator)
    return false
end