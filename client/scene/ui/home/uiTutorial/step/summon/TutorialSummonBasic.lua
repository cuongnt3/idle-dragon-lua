--- @class TutorialSummonBasic : TutorialSummon
TutorialSummonBasic = Class(TutorialSummonBasic, TutorialSummon)

--- @return void
function TutorialSummonBasic:Ctor()
    TutorialSummon.Ctor(self)

    self.basicSummon = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.FREE_BASIC_SUMMON_CLICK)
                                    :HideFocus(true)
                                    :Focus(TutorialFocus.FOCUS_CLICK)
            :StepId(self:GetStepId())
            :Delay(0.1)
            :TrackingName("click_summon_basic")
            :TrackingID(7)
            :WaitOpCode(OpCode.TUTORIAL_SUMMON_HERO)
    )
    self.backResult.tutorialStepData:TrackingID(8)
end

TutorialSummonBasic.stepId = 2000

--- @return number
function TutorialSummonBasic:GetStepId()
    return TutorialSummonBasic.stepId
end

--- @return number
function TutorialSummonBasic:CanRunTutorial()
    ---@type List
    local listHero = InventoryUtils.Get(ResourceType.Hero)
    return listHero:Count() == 0
end

--- @return TutorialNode
function TutorialSummonBasic:Continue()
    return TutorialLine.Create(self.clickSummon,
            self.clickBasicSummon,
            self.basicSummon,
            self.backResult,
            self.clickHeroicSummon
    )
end

--- @return TutorialNode
function TutorialSummonBasic:Start()
    return self:Continue()
end