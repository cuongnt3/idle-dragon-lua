require "lua.client.data.Event.EventHalloweenConfig"
require "lua.client.scene.ui.home.uiEventHalloween.uiEventHalloweenLayout.EventDice.DiceSlotView"
require "lua.client.scene.ui.home.uiEventHalloween.uiEventHalloweenLayout.EventDice.LapSlotView"
require "lua.client.scene.ui.home.uiEventHalloween.uiEventHalloweenLayout.EventDice.DiceRewardResult"

local TIME_TO_ROLL = 0.15
--- @class UIEventDiceLayout : UIEventHalloweenLayout
UIEventDiceLayout = Class(UIEventDiceLayout, UIEventHalloweenLayout)

--- @param view UIEventHalloweenView
--- @param halloweenTab HalloweenTab
--- @param anchor UnityEngine_RectTransform
function UIEventDiceLayout:Ctor(view, halloweenTab, anchor)
    --- @type DiceLayoutConfig
    self.layoutConfig = nil
    ---@type List<DiceSlotView>
    self.diceList = nil
    ---@type List<LapSlotView>
    self.lapList = nil
    ---@type number
    self.rollNum = 1
    ---@type number
    self.position = 1
    ---@type number
    self.prevPosition = 1
    ---@type number
    self.lapCompleted = 1
    ---@type boolean
    self.isLimit = false
    ---@type EventDiceGameData
    self.eventDiceData = nil

    self.arrowTransform_1 = nil

    self.arrowTransform_2 = nil

    UIEventHalloweenLayout.Ctor(self, view, halloweenTab, anchor)
end

function UIEventDiceLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("dice_layout", self.anchor)
    UIEventHalloweenLayout.InitLayoutConfig(self, inst)
    self.arrowTransform_1 = self.layoutConfig.select1:GetChild(0)
    self.arrowTransform_2 = self.layoutConfig.select2:GetChild(0)
    self.rollAnim = self.layoutConfig.rollAnim
    self.bg = self.layoutConfig.rollBg
    --self.itemsTableView = ItemsTableView(self.layoutConfig.rewardAnchor)
    self:InitLocalization()
    self:GetModelConfig()
    self:InitDiceViews()
    self:InitLapViews()
    self:InitButtons()
end

function UIEventDiceLayout:InitButtons()
    self.layoutConfig.rollButton.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickRoll()
    end)
end

function UIEventDiceLayout:InitDiceViews()
    if self.diceList == nil then
        self.diceList = List()
    end
    local dicList = self.eventConfig:GetDiceConfig()
    for i = 1, self.layoutConfig.diceRollContainer.childCount do
        if dicList:IsContainKey(i) then
            local reward = dicList:Get(i)
            local diceView = DiceSlotView(self.layoutConfig.diceRollContainer:GetChild(i - 1), i)
            diceView:SetReward(reward)
            self.diceList:Add(diceView)
        end
    end
end

function UIEventDiceLayout:InitLapViews()
    if self.lapList == nil then
        self.lapList = List()
    end
    local dicList = self.eventConfig:GetLapConfig()
    for i = 1, self.layoutConfig.lapAnchor.childCount do
        if dicList:IsContainKey(i) then
            ---@type EventHalloweenLapDataConfig
            local reward = dicList:Get(i)
            local lapView = LapSlotView(self.layoutConfig.lapAnchor:GetChild(i - 1), i, reward:GetLapRequire())
            lapView:SetReward(reward:GetRewardList())
            self.lapList:Add(lapView)
        end
    end
end

function UIEventDiceLayout:UpdateLapViews()
    local questId = self.eventConfig:GetQuestId(self.lapCompleted)
    self.layoutConfig.lapCompletedValue.text = self.lapCompleted
    --XDebug.Log(string.format("lap: %s, quest id: %s",self.lapCompleted, questId))
    for i = 1, self.lapList:Count() do
        local view = self.lapList:Get(i)
        view:SetView(questId)
    end
end

function UIEventDiceLayout:UpdateDiceViews()
    for i = 1, self.diceList:Count() do
        local view = self.diceList:Get(i)
        for j = 1, self.posList:Count() do
            local temp = self.posList:Get(j) + 1
            if i == temp then
                view:SetView(true)
                break
            end
        end
    end
end

function UIEventDiceLayout:ResetLapViews()
    for i = 1, self.lapList:Count() do
        local view = self.lapList:Get(i)
        view:SetView(0)
    end
end

function UIEventDiceLayout:ResetDiceViews(showEffect)
    for i = 1, self.diceList:Count() do
        local view = self.diceList:Get(i)
        view:SetView(false)
        if showEffect ~= nil then
            view:ShowEffect()
        end
    end
    self.first = nil
    --if self.posList ~= nil then
    --    self.posList:Clear()
    --end
end

function UIEventDiceLayout:InitLocalization()
    self.layoutConfig.startTitle.text = LanguageUtils.LocalizeCommon("start")
    self.layoutConfig.diceGuideTitle.text = LanguageUtils.LocalizeCommon("dice_guide")
    self.layoutConfig.diceTitle.text = LanguageUtils.LocalizeCommon("dice_title")
    self.layoutConfig.lapTitle.text = LanguageUtils.LocalizeCommon("lap_reward")
    self.layoutConfig.rollText.text = LanguageUtils.LocalizeCommon("roll")
    self.layoutConfig.localizeLapCompleted.text = LanguageUtils.LocalizeCommon("completed")
end

function UIEventDiceLayout:SetUpLayout()
    UIEventLayout.SetUpLayout(self)
    self.anchor.gameObject:SetActive(true)
end
function UIEventDiceLayout:OnShow()
    UIEventHalloweenLayout.OnShow(self)
    self:FillData()
    self:UpdateRequireView()
end

function UIEventDiceLayout:FillData()
    self.diceBarView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyBarView, self.layoutConfig.diceBarAnchor)
    self.diceBarView:SetIconData(MoneyType.EVENT_HALLOWEEN_DICE)
    self.eventDiceData = self.eventHalloweenModel:GetDiceData()
    self.position = self.eventDiceData.position + 1
    self.prevPosition = self.position
    self.lapCompleted = self.eventDiceData.lapCompleted
    self.rollNum = self.eventDiceData.rollNumber
    self.posList = self.eventHalloweenModel:GetPositionDiceList()
    if self.position ~= 1 then
        self.posList:Add(self.position - 1)
    end
    self:UpdateCurrentDiceView()
    self:UpdateLapViews()
    self:UpdateDiceViews()
end

function UIEventDiceLayout:UpdateCurrentDiceView()
    if self.position <= self.diceList:Count() then
        local view = self.diceList:Get(self.position)
        local check = self:IsBigDice(self.position)
        self:SetEnableArrow(check, true)
        self:SetEnableFrame(view.config.transform.position, check, true)
    end
end

function UIEventDiceLayout:UpdateRequireView()
    if self.requireList == nil then
        self.requireList = self.eventConfig:GetRollRequireConfig()
    end
    self.layoutConfig.requireText.text = self.requireList:Get(1).number
end

function UIEventDiceLayout:StartAnimRollDice()
    self.bg.color = U_Color(0,0,0,0)
    self.bg.gameObject:SetActive(true)
    self.bg:DOColor(U_Color(0,0,0,0.75), 1)

    self.rollAnim.gameObject:SetActive(true)
    self.rollAnim.AnimationState:SetAnimation(0, "roll", true)
end

function UIEventDiceLayout:OnClickRoll()
    local onReceived = function(result)
        --- @type DiceRewardResult
        local diceResult

        local onBufferReading = function(buffer)
            diceResult = DiceRewardResult(buffer)
        end

        local onSuccess = function()
            if diceResult ~= nil then
                zg.audioMgr:PlaySfxUi(SfxUiType.DICE_ROLL)

                self.touch = TouchUtils.Spawn("DiceRollAnimation")
                self.prevPosition = self.position
                self.position = diceResult.newPosition + 1
                self.diceValue = diceResult.diceValue
                self.eventDiceData.position = diceResult.newPosition
                self.posList:Add(self.eventDiceData.position)
                Coroutine.start(function()
                    coroutine.waitforseconds(2)
                    ---@type UnityEngine_UI_Image
                    local rollImage = self.layoutConfig.rollImage
                    rollImage.sprite = ResourceLoadUtils.LoadIconRollDice(self.diceValue)
                    rollImage.color = U_Color(1,1,1,1)
                    self.rollAnim.gameObject:SetActive(false)
                    rollImage.gameObject:SetActive(true)
                    zg.audioMgr:PlaySfxUi(SfxUiType.DICE_END)
                    --rollImage:DOColor(U_Color(1,1,1,1), 0.2)
                    coroutine.waitforseconds(0.5)
                    self.bg:DOColor(U_Color(0,0,0,0), 1)
                    coroutine.waitforseconds(0.5)
                    rollImage:DOColor(U_Color(1,1,1,0), 0.5)
                    coroutine.waitforseconds(0.5)
                    rollImage.gameObject:SetActive(false)
                    self.bg.gameObject:SetActive(false)

                    self:DiceRollAnimation()
                    InventoryUtils.Sub(ResourceType.Money, MoneyType.EVENT_HALLOWEEN_DICE, 1)
                end)
            end
        end
        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, SmartPoolUtils.LogicCodeNotification)
    end
    local canRoll = InventoryUtils.IsEnoughSingleResourceRequirement( self.requireList:Get(1))--self.requireList:Get(self.rollNum + 1).number))
    if canRoll then
        self:StartAnimRollDice()
        NetworkUtils.Request(OpCode.EVENT_HALLOWEEN_DICE_ROLL, nil, onReceived)
    end
end

function UIEventDiceLayout:DiceRollAnimation()
    Coroutine.start(function()
        ---@type DiceSlotView
        local diceView = nil
        if self.position > self.diceList:Count() then
            self.position = self.diceList:Count()
        end

        local temp = self.prevPosition + self.diceValue
        if temp > self.diceList:Count() then
            self.lapCompleted = self.lapCompleted + 1
            self.eventDiceData.lapCompleted = self.eventDiceData.lapCompleted + 1
            for i = self.prevPosition + 1, self.diceList:Count() do
                diceView = self.diceList:Get(i)
                local check = self:IsBigDice(i)
                self:SetEnableArrow(check, false)
                zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
                self:SetEnableFrame(diceView.config.transform.position, check, true)
                coroutine.waitforseconds(TIME_TO_ROLL)
                self:SetEnableFrame(diceView.config.transform.position, check, false)
            end
            local check_2 = self:IsBigDice(1)
            diceView = self.diceList:Get(1)
            self:SetEnableArrow(check_2, false)
            zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
            self:SetEnableFrame(diceView.config.transform.position, check_2, true)
            coroutine.waitforseconds(TIME_TO_ROLL)
            if diceView ~= nil then
                self:SetEnableArrow(check_2, true)
                self.prevPosition = self.position
                diceView:ShowRewardInbound()
            end
            self:UpdateLapViews()
            coroutine.waitforseconds(TIME_TO_ROLL + 0.5)
            self:ResetSelect(false)
            diceView:SetView(true)
            coroutine.waitforseconds(0.25)
            local count = 2
            for j = 1, count do
                for i = 1, self.diceList:Count() do
                    --- @type DiceSlotView
                    local _diceView = self.diceList:Get(i)
                    zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
                    _diceView:SetEnableFrame(true)
                    coroutine.waitforseconds(0.035)
                    _diceView:SetEnableFrame(false)
                end
            end
            count = 3
            for j = 1, count do
                zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
                for i = 1, self.diceList:Count() do
                    --- @type DiceSlotView
                    local _diceView = self.diceList:Get(i)
                    _diceView:SetEnableFrame(true)
                end
                coroutine.waitforseconds(0.6)
            end

            coroutine.waitforseconds(0.2)
            zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
            self:ResetDiceViews(true)
            self:UpdateCurrentDiceView()
            self.posList:Clear()
        else
            ---@type DiceSlotView
            local check = false
            for i = self.prevPosition + 1, self.position do
                check = self:IsBigDice(i)
                diceView = self.diceList:Get(i)
                self:SetEnableArrow(check, false)
                zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
                self:SetEnableFrame(diceView.config.transform.position, check, true)
                coroutine.waitforseconds(TIME_TO_ROLL)
                self:SetEnableFrame(diceView.config.transform.position, check, false)
            end
            if diceView ~= nil then
                zg.audioMgr:PlaySfxUi(SfxUiType.DICE_BEEP)
                self:SetEnableArrow(check, true)
                self:SetEnableFrame(diceView.config.transform.position, check, true)
                self.prevPosition = self.position
                diceView:ShowRewardInbound()
                diceView:SetView(true)
            end
        end
        self.touch:Enable()
    end)
end
function UIEventDiceLayout:IsBigDice(index)
    local indexList = { 1, 10, 14, 23 }
    for i, v in ipairs(indexList) do
        if v == index then
            return true
        end
    end
    return false
end
function UIEventDiceLayout:SetEnableArrow(check, isEnable)
    if check then
        self.arrowTransform_1.gameObject:SetActive(isEnable)
        self.arrowTransform_2.gameObject:SetActive(not isEnable)
    else
        self.arrowTransform_1.gameObject:SetActive(not isEnable)
        self.arrowTransform_2.gameObject:SetActive(isEnable)
    end
end
function UIEventDiceLayout:SetEnableFrame(position, check, isEnable)
    if check then
        self.layoutConfig.select1.gameObject:SetActive(isEnable)
        self.layoutConfig.select2.gameObject:SetActive(not isEnable)
        self.layoutConfig.select1.position = position
    else
        self.layoutConfig.select1.gameObject:SetActive(not isEnable)
        self.layoutConfig.select2.gameObject:SetActive(isEnable)
        self.layoutConfig.select2.position = position
    end
end
function UIEventDiceLayout:ResetSelect(isEnable)
        self.layoutConfig.select1.gameObject:SetActive(isEnable)
        self.layoutConfig.select2.gameObject:SetActive(isEnable)
end
function UIEventDiceLayout:OnHide()
    self:ResetDiceViews()
    self:ResetLapViews()
    self:UpdateCurrentDiceView()
    if self.diceBarView ~= nil then
        self.diceBarView:ReturnPool()
        self.diceBarView = nil
    end
    --if self.eventDiceData ~= nil then
    --    self.eventDiceData = nil
    --    XDebug.Log("dice data onhide: " .. tostring(self.eventHalloweenModel:GetDiceData()))
    --end
end

