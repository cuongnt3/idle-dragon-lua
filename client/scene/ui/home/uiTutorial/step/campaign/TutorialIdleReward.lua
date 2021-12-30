--- @class TutorialIdleReward : TutorialCampaign
TutorialIdleReward = Class(TutorialIdleReward, TutorialCampaign)

--- @return void
function TutorialIdleReward:Ctor()
    TutorialCampaign.Ctor(self)

    ---@type TutorialSingle
    self.idleReward = TutorialSingle.Create(TutorialStepData():GetTextMethod(function ()
        return string.format(LanguageUtils.LocalizeTutorial("npc_idle_reward"),
                math.floor(ResourceMgr.GetCampaignDataConfig():GetMaxTimeIdle() / 3600))
    end):ShowNpc(true):TrackingName("idle_reward"):
    Step(TutorialStep.CAMPAIGN_IDLE_REWARD_CLICK)             :Focus(TutorialFocus.FOCUS_CLICK):Delay(1):
    Pivot(TutorialPivot.TOP_RIGHT)                            :StepId(self:GetStepId()):WaitOpCode(OpCode.CAMPAIGN_RESOURCE_CLAIM))

    ---@type TutorialSingle
    self.continueLevelUp = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_level_up"):ShowNpc(true):
    Step(TutorialStep.CLOSE_POPUP_REWARD):TrackingName("npc_level_up"):Focus(TutorialFocus.TAP_TO_CLICK):Delay(1):
    Pivot(TutorialPivot.TOP_LEFT))

    ---@type TutorialSingle
    self.backCampaignAuto = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.BACK_CAMPAIGN):
    Focus(TutorialFocus.AUTO_NEXT):TrackingName("back_campaign_auto"):Delay(1))

    self.clickCampaign.tutorialStepData:TrackingID(1)
    self.idleReward.tutorialStepData:TrackingID(2)
    self.continueLevelUp.tutorialStepData:TrackingID(3)
    self.backCampaignAuto.tutorialStepData:TrackingID(4)

end

TutorialIdleReward.stepId = 11000

--- @return number
function TutorialIdleReward:GetStepId()
    return TutorialIdleReward.stepId
end

--- @return number
function TutorialIdleReward:CanRunTutorial()
    return zg.playerData:GetCampaignData().stageIdle == 101001
end

--- @return TutorialNode
function TutorialIdleReward:Continue()
    return TutorialLine.Create(self.idleReward,
            self.continueLevelUp,
            self.backCampaignAuto
    )
end

--- @return TutorialNode
function TutorialIdleReward:Start()
    return TutorialLine.Create(self.clickCampaign,
            self:Continue()
    )
end