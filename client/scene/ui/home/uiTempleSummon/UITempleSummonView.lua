---COMMENT_CONFIG_HOME    require "lua.client.scene.ui.home.uiTempleSummon.TempleSummonConfig"
require "lua.client.scene.ui.home.uiTempleSummon.previewTempleSummon.PreviewTempleSummon"
require "lua.client.core.network.temple.TempleRequest"

--- @class UITempleSummonView : UIBaseView
UITempleSummonView = Class(UITempleSummonView, UIBaseView)

--- @return void
--- @param model UITempleSummonModel
function UITempleSummonView:Ctor(model, ctrl)
    --- @type TempleSummonConfig
    self.config = nil
    --- @type PreviewTempleSummon
    self.previewTempleSummon = nil
    --- @type ItemsTableView
    self.moneyTableView = nil

    UIBaseView.Ctor(self, model, ctrl)
    --- @type UITempleSummonModel
    self.model = self.model
end

--- @return void
function UITempleSummonView:OnReadyCreate()
    ---@type TempleSummonConfig
    self.config = UIBaseConfig(self.uiTransform)
    self.previewTempleSummon = PreviewTempleSummon(self.config.previewTempleSummon, self)

    self:_InitButtonListener()
    self:_InitPreviewTemple()
    self:_SetSlideScreen()
    self:_InitMoneyTableView()
end

function UITempleSummonView:_InitMoneyTableView()
    self.moneyTableView = ItemsTableView(self.config.moneyBarAnchor, nil, UIPoolType.MoneyBarView)
end

--- @return void
function UITempleSummonView:InitLocalization()
    self.config.localizeSummon.text = LanguageUtils.LocalizeCommon("summon")
    self.config.localizeSummon10.text = string.format(LanguageUtils.LocalizeCommon("summon_x"), 10)
    self.config.localizeReplaceHero.text = LanguageUtils.LocalizeCommon("replace_hero")
end

--- @return void
function UITempleSummonView:OnReadyShow()
    self.config.cover.enabled = false

    self:_InitMoneyBar()
    self:_SetButtonPrice()
    self.previewTempleSummon:OnShow()
end

function UITempleSummonView:OnClickBackOrClose()
    zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end

--- @return void
function UITempleSummonView:Hide()
    self.previewTempleSummon:OnHide()
    self.moneyTableView:Hide()
    UIBaseView.Hide(self)
end

--- @return void
function UITempleSummonView:_InitMoneyBar()
    self:SetUpMoneyBar(MoneyType.PROPHET_ORB, MoneyType.PROPHET_WOOD)
end

function UITempleSummonView:SetUpMoneyBar(...)
    local args = { ... }
    local moneyList = List()
    for i = 1, #args do
        moneyList:Add(args[i])
    end
    self.moneyTableView:SetData(moneyList)
end

--- @return void
function UITempleSummonView:_SetButtonPrice()
    self.config.textPriceSummon1.text = self.model.templeSummonData:GetSummonPrice(1)
    self.config.textPriceSummon10.text = self.model.templeSummonData:GetSummonPrice(10)
end

--- @return void
function UITempleSummonView:OnClickHelpInfo()
    PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, LanguageUtils.LocalizeHelpInfo("prophet_tree_info"))
end

--- @return void
--- @param quantity number
function UITempleSummonView:_Summon(quantity)
    local moneyNeeded = self.model.templeSummonData:GetSummonPrice(quantity)
    local canSummon = InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, MoneyType.PROPHET_ORB, moneyNeeded))
    if canSummon then
        local callback = function(templeSummonResult)
            self.model.templeSummonResult = templeSummonResult
            self:_ShowReward()
            InventoryUtils.Get(ResourceType.Money):Sub(MoneyType.PROPHET_ORB, moneyNeeded)
        end
        self.previewTempleSummon:OnSummon()
        zg.audioMgr:PlaySfxUi(SfxUiType.PROPHET_TREE_SUMMON)
        TempleRequest.Summon(self.model.temple, quantity, callback)
    end

end

--- @return void
function UITempleSummonView:_ShowReward()
    assert(self.model.templeSummonResult)
    local rewardList = List()
    for fragmentId, number in pairs(self.model.templeSummonResult.heroFragmentDict:GetItems()) do
        rewardList:Add(ItemIconData.CreateInstance(ResourceType.HeroFragment, fragmentId, number))
    end
    rewardList:Add(ItemIconData.CreateInstance(ResourceType.Money, MoneyType.PROPHET_WOOD, self.model.templeSummonResult.prophetWoodBonus))

    PopupMgr.ShowPopupDelay(1.2, UIPopupName.UIPopupReward, { ["resourceList"] = rewardList }, nil, nil)

    self.model.templeSummonResult = nil
end

function UITempleSummonView:_InitPreviewTemple()
    local map = function(temple)
        if temple < 1 then
            temple = self.model.templeCount
        elseif temple > self.model.templeCount then
            temple = 1
        end
        return temple
    end
    local subscribe = function(value)
        --- @type UnityEngine_Color
        local color = UIUtils.text_color_with_type[value]
        self.model.temple = value
        self.config.textStoneName.text = LanguageUtils.LocalizeFaction(value)
        self.config.textStoneName.color = color
        self.config.bgHeroTitleDetail1.color = color
        self.config.bgHeroTitleDetail2.color = color

        self.config.glow.color = UIUtils.glow_color_with_type[value]
    end
    self.model.currentTemple = Subject.Create()
    self.model.currentTemple
        :Map(map)
        :Subscribe(subscribe)
    self.model.currentTemple:Next(1)
end

--- @return void
function UITempleSummonView:_InitButtonListener()
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.buttonTutorial.onClick:AddListener(function()
        self:OnClickHelpInfo()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)
    self.config.buttonReplace.onClick:AddListener(function()
        PopupMgr.ShowAndHidePopup(UIPopupName.UITempleReplace, nil, UIPopupName.UITempleSummon)
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)
    self.config.buttonSummon1.onClick:AddListener(function()
        self:_Summon(1)
        zg.audioMgr:PlaySfxUi(SfxUiType.BUY)
    end)
    self.config.buttonSummon10.onClick:AddListener(function()
        self:_Summon(10)
        zg.audioMgr:PlaySfxUi(SfxUiType.BUY)
    end)
    self.config.buttonArrowLeft.onClick:AddListener(function()
        self:_MoveLeft()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)

    self.config.buttonArrowRight.onClick:AddListener(function()
        self:_MoveRight()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
    end)
end

--- @return void
function UITempleSummonView:_MoveLeft()
    self:_SetFog()
    self.model.currentTemple:Next(self.model.temple + 1)
    self.previewTempleSummon:MoveLeft()
end

--- @return void
function UITempleSummonView:_MoveRight()
    self:_SetFog()
    self.model.currentTemple:Next(self.model.temple - 1)
    self.previewTempleSummon:MoveRight()
end

--- @return void
function UITempleSummonView:_SetFog()
    Coroutine.start(function()
        self.config.cover.enabled = true
        coroutine.waitforseconds(self.model.timeFog)
        self.config.cover.enabled = false
    end)
end

--- @return void
function UITempleSummonView:_SetSlideScreen()
    --- @type UnityEngine_EventSystems_EventTrigger_Entry
    local entryPointUp = U_EventSystems.EventTrigger.Entry()
    entryPointUp.eventID = U_EventSystems.EventTriggerType.PointerUp
    entryPointUp.callback:AddListener(function(data)
        self.model.positionMouseUp = data.position.x
        local delta = self.model.positionMouseUp - self.model.positionMouseDown
        if delta > 100 then
            self:_MoveRight()
        elseif delta < -100 then
            self:_MoveLeft()
        end
    end)
    self.config.renderer:GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger).triggers:Add(entryPointUp)

    --- @type UnityEngine_EventSystems_EventTrigger_Entry
    local entryPointDown = U_EventSystems.EventTrigger.Entry()
    entryPointDown.eventID = U_EventSystems.EventTriggerType.PointerDown
    entryPointDown.callback:AddListener(function(data)
        self.model.positionMouseDown = data.position.x
    end)
    self.config.renderer:GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger).triggers:Add(entryPointDown)
end

function UITempleSummonView:OnDestroy()
    self.previewTempleSummon:OnDestroy()
end

function UITempleSummonView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)
    self.previewTempleSummon:ShowTempleOrbs()
end