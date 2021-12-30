--- @class TutorialCampaign2 : TutorialCampaign
TutorialCampaign2 = Class(TutorialCampaign2, TutorialCampaign)

--- @return void
function TutorialCampaign2:Ctor()
    TutorialCampaign.Ctor(self)

    ---@type TutorialSingle
    self.forgeEquipment = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_need_power"):ShowNpc(true):HideFocus(true):
    Step(TutorialStep.FORGE_EQUIPMENT):TrackingName("click_upgrade_equipment"):Focus(TutorialFocus.TAP_TO_CLICK):Delay(0.1):Pivot(TutorialPivot.BOTTOM_RIGHT))

    ---@type TutorialSingle
    self.selectPosition1 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_formation_change_position"):
    Step(TutorialStep.POSITION_2):TrackingName("select_position_1"):Focus(TutorialFocus.FOCUS_CLICK):Delay(0.5):Pivot(TutorialPivot.CENTER))

    ---@type TutorialSingle
    self.selectPosition2 = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.POSITION_3):Delay(0.2):TrackingName("select_position_2"):
    Focus(TutorialFocus.FOCUS_CLICK))

    ---@type TutorialSingle
    self.formationInfo = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_formation_buff"):Delay(0.2):
    Focus(TutorialFocus.FOCUS):TrackingName("formation_buff"):Pivot(TutorialPivot.BOTTOM_RIGHT):Step(TutorialStep.FORMATION_BUFF):ShowNpc(true))

    ---@type TutorialSingle
    self.closeBattle = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_need_power"):ShowNpc(true):Step(TutorialStep.BATTLE_CLOSE):
    Focus(TutorialFocus.TAP_TO_CLICK):Delay(0.1):Pivot(TutorialPivot.TOP_LEFT):HideFocus(true):TrackingName("battle_close"))

    self.clickCampaign.tutorialStepData:TrackingID(1)
    self.clickBattle.tutorialStepData:TrackingID(2)
    self.selectPosition1.tutorialStepData:TrackingID(3)
    self.selectPosition2.tutorialStepData:TrackingID(4)
    self.formationInfo.tutorialStepData:TrackingID(5)
    self.formationBattleClick.tutorialStepData:TrackingID(6)
    self.closeBattle.tutorialStepData:TrackingID(7)
end

TutorialCampaign2.stepId = 5000

--- @return number
function TutorialCampaign2:GetStepId()
    return TutorialCampaign2.stepId
end

--- @return number
function TutorialCampaign2:CanRunTutorial()
    local canRun = zg.playerData:GetCampaignData().stageIdle == 101001
    if canRun then
        canRun = false
        ---@type FormationInBound
        local formationInBound = zg.playerData:GetFormationInBound()
        if formationInBound ~= nil then
            ---@type TeamFormationInBound
            local teamFormation = formationInBound.teamDict:Get(GameMode.CAMPAIGN)
            if teamFormation ~= nil and teamFormation.backLine:Count() == 0 then
                canRun = true
            end
        end
    end
    return canRun
end

--- @return TutorialNode
function TutorialCampaign2:Continue()
    return TutorialLine.Create(self.clickBattle, self.selectPosition1,
            self.selectPosition2,
            self.formationInfo,
            self.formationBattleClick,
            self.closeBattle
    )
end

--- @return TutorialNode
function TutorialCampaign2:Start()
    return TutorialLine.Create(self.clickCampaign,
            self:Continue()
    )
end