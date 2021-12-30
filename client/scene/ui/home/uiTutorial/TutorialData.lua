require "lua.client.scene.ui.home.uiTutorial.step.TutorialBase"
require "lua.client.scene.ui.home.uiTutorial.step.start.TutorialStarGame"
require "lua.client.scene.ui.home.uiTutorial.step.summon.TutorialSummon"
require "lua.client.scene.ui.home.uiTutorial.step.summon.TutorialSummonBasic"
require "lua.client.scene.ui.home.uiTutorial.step.summon.TutorialSummonHeroic"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialCampaign"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialCampaign1"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialCampaign2"
require "lua.client.scene.ui.home.uiTutorial.step.blackSmith.TutorialBlackSmith"
require "lua.client.scene.ui.home.uiTutorial.step.blackMarket.TutorialBlackMarket"
require "lua.client.scene.ui.home.uiTutorial.step.summon.TutorialUseHeroicScroll"
require "lua.client.scene.ui.home.uiTutorial.step.heroMenu.TutorialHeroMenu"
require "lua.client.scene.ui.home.uiTutorial.step.heroMenu.TutorialAutoEquip"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialCampaign3"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialIdleReward"
require "lua.client.scene.ui.home.uiTutorial.step.heroMenu.TutorialLevelUpHero"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialCampaign4"
require "lua.client.scene.ui.home.uiTutorial.step.quest.TutorialQuest"
require "lua.client.scene.ui.home.uiTutorial.step.quest.TutorialQuestTree"
require "lua.client.scene.ui.home.uiTutorial.step.quest.TutorialQuestComplete"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialStage10"
require "lua.client.scene.ui.home.uiTutorial.step.rename.TutorialRename"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialHeroFragment"
require "lua.client.scene.ui.home.uiTutorial.step.campaign.TutorialEvolveSummoner"
require "lua.client.scene.ui.home.uiTutorial.step.summoner.TutorialSwitchSummoner"
require "lua.client.scene.ui.home.uiTutorial.step.battle.TutorialAutoBattle"
require "lua.client.scene.ui.home.uiTutorial.step.battle.TutorialHeroPower"
require "lua.client.scene.ui.home.uiTutorial.step.battle.TutorialSkillSummoner"
require "lua.client.scene.ui.home.uiTutorial.step.quest.TutorialMiniQuestTree"
require "lua.client.scene.ui.home.uiTutorial.step.quest.TutorialMiniQuestComplete"

--- @class TutorialData
TutorialData = {}

---@type List --<TutorialBase>
TutorialData._listTutorial = nil

--- @return List
function TutorialData.GetListTutorial()
    if TutorialData._listTutorial == nil then
        TutorialData._listTutorial = List()
        TutorialData._listTutorial:Add(TutorialRename())
        TutorialData._listTutorial:Add(TutorialSummonBasic())
        TutorialData._listTutorial:Add(TutorialSummonHeroic())
        TutorialData._listTutorial:Add(TutorialCampaign1())
        TutorialData._listTutorial:Add(TutorialCampaign2())
        TutorialData._listTutorial:Add(TutorialIdleReward())
        --TutorialData._listTutorial:Add(TutorialBlackSmith())
        TutorialData._listTutorial:Add(TutorialBlackMarket())
        TutorialData._listTutorial:Add(TutorialUseHeroicScroll())
        --TutorialData._listTutorial:Add(TutorialAutoEquip())
        TutorialData._listTutorial:Add(TutorialLevelUpHero())
        TutorialData._listTutorial:Add(TutorialCampaign3())
        --TutorialData._listTutorial:Add(TutorialCampaign4())
        --TutorialData._listTutorial:Add(TutorialStage10())
        --TutorialData._listTutorial:Add(TutorialMiniQuestTree())
        --TutorialData._listTutorial:Add(TutorialMiniQuestComplete())
        --TutorialData._listTutorial:Add(TutorialHeroFragment())
        TutorialData._listTutorial:Add(TutorialEvolveSummoner())
        TutorialData._listTutorial:Add(TutorialSwitchSummoner())
    end
    return TutorialData._listTutorial
end

--- @return TutorialBase
function TutorialData.GetTutorialCanShow()
    ---@type TutorialInBound
    local tutorialInBound = zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL)
    if tutorialInBound ~= nil then
        ---@type List
        local listTutorialData = TutorialData.GetListTutorial()
        ---@param v TutorialBase
        for i, v in ipairs(listTutorialData:GetItems()) do
            if tutorialInBound.listStepComplete:IsContainValue(v:GetStepId()) == false and v:CanRunTutorial() == true then
                return v
            end
        end
    end
    return nil
end

--- @return boolean
function TutorialData.CanShowTutorial()
    if IS_PBE_VERSION == true then
        return false
    else
        return not (TutorialData.GetTutorialCanShow() == nil)
    end
end