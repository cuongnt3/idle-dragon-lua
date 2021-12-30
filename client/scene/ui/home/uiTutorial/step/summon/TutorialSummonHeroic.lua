--- @class TutorialSummonHeroic : TutorialSummon
TutorialSummonHeroic = Class(TutorialSummonHeroic, TutorialSummon)

--- @return void
function TutorialSummonHeroic:Ctor()
    TutorialSummon.Ctor(self)

    ---@type TutorialNode
    self.heroicSummon = TutorialSingle.Create(TutorialStepData()
            :Step(TutorialStep.FREE_HEROIC_SUMMON_CLICK)
            :HideFocus(true)
            :Focus(TutorialFocus.FOCUS_CLICK)
            :StepId(self:GetStepId())
            :Delay(1)
            :TrackingName("click_summon_heroic")
            :TrackingID(10)
            :WaitOpCode(OpCode.TUTORIAL_SUMMON_HERO)
    )
    self.backResult.tutorialStepData:TrackingID(11)
    self.backSummonAuto.tutorialStepData:TrackingID(12)
end

TutorialSummonHeroic.stepId = 3000

--- @return number
function TutorialSummonHeroic:GetStepId()
    return TutorialSummonHeroic.stepId
end

--- @return number
function TutorialSummonHeroic:CanRunTutorial()
    ---@type List
    local listHero = InventoryUtils.Get(ResourceType.Hero)
    return listHero:Count() == 1
end

--- @return TutorialNode
function TutorialSummonHeroic:Continue()
    return TutorialLine.Create(self.heroicSummon,
            self.backResult,
            self.backSummonAuto
    )
end

--- @return TutorialNode
function TutorialSummonHeroic:Start()
    return TutorialLine.Create(self.clickSummon,
            self:Continue()
    )
end