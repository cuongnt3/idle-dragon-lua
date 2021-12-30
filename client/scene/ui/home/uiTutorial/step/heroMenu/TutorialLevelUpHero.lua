--- @class TutorialLevelUpHero : TutorialHeroMenu
TutorialLevelUpHero = Class(TutorialLevelUpHero, TutorialHeroMenu)

--- @return void
function TutorialLevelUpHero:Ctor()
    TutorialHeroMenu.Ctor(self)

    ---@type TutorialSingle
    self.clickLevelUpStart = TutorialSingle.Create(TutorialStepData():Step(TutorialStep.CLICK_LEVEL_UP_HERO):
    Focus(TutorialFocus.FOCUS_CLICK):Delay(0.5):HideFocus(true):TrackingName("click_level_up"))

    ---@type TutorialSingle
    self.clickLevelUpBack = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_upgrade_hero_success"):TrackingName("back_hero_info"):
    Step(TutorialStep.CLICK_LEVEL_UP_HERO_BACK)                     :Pivot(TutorialPivot.BOTTOM_RIGHT):ShowNpc(true):
    Focus(TutorialFocus.TAP_TO_CLICK)                               :StepId(self:GetStepId()):Delay(1))

    ---@type number
    self.numberLevel = nil

    self.clickLevelUpStart.tutorialStepData:TrackingID(10)
    self.clickLevelUpBack.tutorialStepData:TrackingID(31)
    self.backHeroCollectionAuto.tutorialStepData:TrackingID(32)


end

--- @return TutorialNode
function TutorialLevelUpHero:CreateTutorialNodeLevelUp(trackingId)
    return TutorialSingle.Create(TutorialStepData():Step(TutorialStep.CLICK_LEVEL_UP_HERO):
    Focus(TutorialFocus.FOCUS_CLICK):Delay(0.1):HideFocus(true):TrackingID(trackingId))
end

TutorialLevelUpHero.stepId = 12000

--- @return number
function TutorialLevelUpHero:GetStepId()
    return TutorialLevelUpHero.stepId
end

--- @return number
function TutorialLevelUpHero:CanRunTutorial()
    self.numberLevel = nil
    ---@param heroResource HeroResource
    for _, heroResource in pairs(InventoryUtils.Get(ResourceType.Hero):GetItems()) do
        if heroResource.heroLevel >= 10 then
            return false
        end
        if self.numberLevel == nil or self.numberLevel < heroResource.heroLevel then
            self.numberLevel = heroResource.heroLevel
        end
    end
    return true
end

--- @return TutorialNode
function TutorialLevelUpHero:Continue()
    ---@type TutorialLine
    local tutorial = TutorialLine.Create(self:TutorialGoToHeroUpgrade(), self.clickLevelUpStart)
    if self.numberLevel < 9 then
        for i = self.numberLevel + 1, 9 do
            tutorial:AddNode(self:CreateTutorialNodeLevelUp(11 + i))
        end
    end
    tutorial:AddNode(self.clickLevelUpBack,
            self.backHeroCollectionAuto)
    return tutorial
end

--- @return TutorialNode
function TutorialLevelUpHero:Start()
    return self:Continue()
end