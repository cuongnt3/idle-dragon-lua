---COMMENT_CONFIG_HOME    require "lua.client.scene.ui.home.uiHeroSummonInfo.UIHeroSummonInfoConfig"
require "lua.client.scene.ui.common.prefabHeroInfo.PrefabHeroInfoView"

--- @class UIHeroSummonInfoView : UIBaseView
UIHeroSummonInfoView = Class(UIHeroSummonInfoView, UIBaseView)

--- @return void
--- @param model UIHeroSummonInfoModel
--- @param ctrl UIHeroSummonInfoCtrl
function UIHeroSummonInfoView:Ctor(model, ctrl)
    --- @type UIHeroSummonInfoConfig
    self.config = nil
    --- @type PrefabHeroInfoView
    self.prefabHeroInfoView = nil
    --- @type HeroIconView
    self.heroIconView = nil
    -- init variables here
    UIBaseView.Ctor(self, model, ctrl)
end

--- @return void
function UIHeroSummonInfoView:OnReadyCreate()
    ---@type UIHeroSummonInfoConfig
    self.config = UIBaseConfig(self.uiTransform)
    self:_InitButtonListener()
    assert(self.config.prefabHeroInfo)
    ---@type PrefabHeroInfoView
    self.prefabHeroInfoView = PrefabHeroInfoView(self.config.prefabHeroInfo)
end

--- @return void
--- @param result {heroResource : HeroResource}
function UIHeroSummonInfoView:Init(result)
    if result ~= nil then
        --- @type HeroResource
        self.model.heroResource = result.heroResource
        if self.model.heroResource.heroLevel == nil or self.model.heroResource.heroLevel < 1 then
            self.model.heroResource.heroLevel = 1
        end

        self.prefabHeroInfoView:SetData(self.model.heroResource, result.power, result.statDict)
        self.heroIconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.HeroIconView, self.config.iconSlot)
        self.heroIconView:SetIconData(HeroIconData.CreateByHeroResource(self.model.heroResource))
        self:_SetNameHeroInfo()
    end
end

--- @return void
function UIHeroSummonInfoView:_SetNameHeroInfo()
    self.config.textHeroName.text = LanguageUtils.LocalizeNameHero(self.model.heroResource.heroId)
end

--- @return void
function UIHeroSummonInfoView:_InitButtonListener()
    self.config.backGround.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
end

--- @return void
function UIHeroSummonInfoView:OnReadyShow(result)
    self:Init(result)
end

--- @return void
function UIHeroSummonInfoView:Hide()
    UIBaseView.Hide(self)
    self.heroIconView:ReturnPool()
    self.heroIconView = nil

    self.prefabHeroInfoView:OnDisable()
end