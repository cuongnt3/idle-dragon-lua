--- @class TutorialCampaign1 : TutorialCampaign
TutorialCampaign1 = Class(TutorialCampaign1, TutorialCampaign)

--- @return void
function TutorialCampaign1:Ctor()
    TutorialCampaign.Ctor(self)

    ---@type TutorialSingle
    self.npcClickCampaign = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.CAMPAIGN_CLICK):ShowNpc(true):TrackingID(1):
    Focus(TutorialFocus.FOCUS_CLICK):TrackingName("click_campaign_npc"):Delay(0.5):KeyLocalize("npc_continue_campaign"):Pivot(TutorialPivot.BOTTOM_RIGHT))

    ---@type TutorialSingle
    self.selectHero1 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_select_hero_formation"):HideFocus(true):TrackingID(3):
    Step(TutorialStep.FORMATION_SELECT_HERO_2):TrackingName("select_hero_1"):Focus(TutorialFocus.FOCUS_CLICK):Delay(0.5):Pivot(TutorialPivot.CENTER_TOP))

    ---@type TutorialSingle
    self.selectHero2 = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.FORMATION_SELECT_HERO_1):HideFocus(true):
    Focus(TutorialFocus.FOCUS_CLICK):TrackingName("select_hero_2"):Delay(0.5):TrackingID(4))

    ---@type TutorialSingle
    self.formationInfo = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_formation_info_position"):HideFocus(true):
    Pivot(TutorialPivot.CENTER_TOP):TrackingName("formation_info"):Delay(0.2):TrackingID(5))

    ---@type TutorialSingle
    self.formationBattleClick = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.FORMATION_BATTLE_CLICK):Delay(0.2):TrackingID(6):
    HideFocus(true):WaitOpCode(OpCode.CAMPAIGN_CHALLENGE):TrackingName("click_battle_formation"):Focus(TutorialFocus.FOCUS_CLICK):StepId(self:GetStepId())
    )

    self.clickBattle.tutorialStepData:TrackingID(2)
    self.closeBattle.tutorialStepData:TrackingID(7)

end

TutorialCampaign1.stepId = 4000

--- @return number
function TutorialCampaign1:GetStepId()
    return TutorialCampaign1.stepId
end

--- @return number
function TutorialCampaign1:CanRunTutorial()
    return zg.playerData:GetCampaignData().stageNext == 101001
end

--- @return TutorialNode
function TutorialCampaign1:Continue()
    return TutorialLine.Create(self:TutorialGoToFormationNpc(),
            self.selectHero1,
            self.selectHero2,
            self.formationInfo,
            self.formationBattleClick,
            self.closeBattle)
end

--- @return TutorialNode
function TutorialCampaign1:Start()
    return self:Continue()
end