--- @class TutorialStartGame : TutorialBase
TutorialStartGame = Class(TutorialStartGame, TutorialBase)

--- @return void
function TutorialStartGame:Ctor()
    ---@type TutorialNode
    self.t1 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_hello"):Delay(0.5):
    Pivot(TutorialPivot.CENTER))
    ---@type TutorialNode
    self.t2 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_what_summoner"):
    Text1("player_option1")                           :Text2("player_option2"):Option1Id(self:GetStepId()))
    ---@type TutorialNode
    self.t3 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_summoner_info"):
    Pivot(TutorialPivot.BOTTOM_LEFT))
    ---@type TutorialNode
    self.t4 = TutorialSingle.Create(TutorialStepData():KeyLocalize("npc_ready"):
    Pivot(TutorialPivot.BOTTOM_LEFT)                  :Text1("player_option1_3"):StepId(self:GetStepId()))

end

TutorialStartGame.stepId = 1000

--- @return number
function TutorialStartGame:GetStepId()
    return TutorialStartGame.stepId
end

--- @return TutorialNode
function TutorialStartGame:Start()
    return TutorialLine.Create(self.t1,
            TutorialOption.Create(self.t2, nil,
                    TutorialLine.Create(self.t3,
                            self.t4
                    )
            )
    )
end

--- @return TutorialNode
function TutorialStartGame:Continue()

end