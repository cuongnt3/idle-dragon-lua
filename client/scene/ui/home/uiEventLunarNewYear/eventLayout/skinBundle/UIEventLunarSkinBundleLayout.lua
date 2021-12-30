require "lua.client.scene.ui.home.uiEventMidAutumn.ItemShowWithNameAndType"

--- @class UIEventLunarSkinBundleLayout : UIEventLunarNewYearLayout
UIEventLunarSkinBundleLayout = Class(UIEventLunarSkinBundleLayout, UIEventLunarNewYearLayout)

--- @param view UIEventLunarNewYearView
--- @param lunarNewYearTab LunarNewYearTab
--- @param anchor UnityEngine_RectTransform
function UIEventLunarSkinBundleLayout:Ctor(view, lunarNewYearTab, anchor)
    --- @type number
    self.heroId = 40003
    self.skinId = 40003001

    --- @type UIEventLunarSkinBundleLayoutConfig
    self.layoutConfig = nil
    --- @type UILoopScroll
    self.scrollItems = nil
    --- @type number
    self.packId = 1
    UIEventLunarNewYearLayout.Ctor(self, view, lunarNewYearTab, anchor)
end

function UIEventLunarSkinBundleLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("lunar_new_year_skin_bundle", self.anchor)
    UIEventLunarNewYearLayout.InitLayoutConfig(self, inst)

    self:InitButtonListener()
    self:InitLocalization()
    self:InitScroll()
end

function UIEventLunarSkinBundleLayout:InitScroll()
    --- @param obj ItemWithNameInfoView
    local onCreateItem = function(obj, index)
        local dataIndex = index + 1
        obj:SetIconData(self.listItems:Get(dataIndex))
        obj:EnableBgHighlight(dataIndex == 1)
        obj:ActiveMaskSelect(self.isUnlocked)
    end
    self.scrollItems = UILoopScroll(self.layoutConfig.scrollContent, UIPoolType.ItemWithNameInfoView, onCreateItem)
end

function UIEventLunarSkinBundleLayout:InitLocalization()
    UIEventLunarNewYearLayout.InitLocalization(self)
    self.layoutConfig.textEventName.text = LanguageUtils.LocalizeCommon("event_lunar_skin_name")
end

function UIEventLunarSkinBundleLayout:InitButtonListener()
    self.layoutConfig.buttonBuy.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonBuy()
    end)
end

function UIEventLunarSkinBundleLayout:OnShow()
    UIEventLunarNewYearLayout.OnShow(self)
    self:ShowSkinModel()
    self:ShowBuyState()
    self:ShowPriceState()
end

function UIEventLunarSkinBundleLayout:ShowPriceState()
    --- @type EventLunarNewYearModel
    self.eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LUNAR_NEW_YEAR)
    --- @type LunarSkinBundle
    local bundleConfig = ResourceMgr.GetPurchaseConfig():GetLunarSkinBundle()
    --- @type ProductConfig
    self.productConfig = bundleConfig:GetPack(self.eventModel.timeData.dataId).packList:Get(self.packId)
    self.listItems = self.productConfig:GetRewardList()

    self.packKey = ClientConfigUtils.GetPurchaseKey(self.productConfig.opCode, self.packId, self.eventModel.timeData.dataId)
    self.layoutConfig.textPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)

    self.scrollItems:Resize(self.listItems:Count())
end

function UIEventLunarSkinBundleLayout:ShowBuyState()
    local numberBuyData = self.eventModel:GetNumberBuy(EventActionType.LUNAR_NEW_YEAR_ELITE_SKIN_BUNDLE_PURCHASE, self.packId)
    self.isUnlocked = numberBuyData > 0
    self.layoutConfig.buttonBuy.gameObject:SetActive(self.isUnlocked == false)
end

function UIEventLunarSkinBundleLayout:ShowSkinModel()
    if self.worldSpaceHeroView == nil then
        ---@type UnityEngine_Transform
        local trans = SmartPool.Instance:SpawnTransform(AssetType.Battle, "world_space_hero_view")
        self.worldSpaceHeroView = WorldSpaceHeroView(trans)
        local renderTexture = U_RenderTexture(1000, 1000, 24, U_RenderTextureFormat.ARGB32)
        self.layoutConfig.heroView.texture = renderTexture
        self.worldSpaceHeroView:Init(renderTexture)
    end
    local heroResource = HeroResource()
    local heroItem = Dictionary()
    heroItem:Add(7, self.skinId)
    heroResource:SetData(-1, self.heroId, 7, 1, heroItem)
    self.worldSpaceHeroView:ShowHero(heroResource)
    self.worldSpaceHeroView.config.transform.position = U_Vector3(11000, 11000, 0)
    self.worldSpaceHeroView.config.bg:SetActive(false)
end

function UIEventLunarSkinBundleLayout:OnHide()
    UIEventLunarNewYearLayout.OnHide(self)
    if self.worldSpaceHeroView ~= nil then
        self.worldSpaceHeroView:OnHide()
        self.worldSpaceHeroView = nil
    end
    self.scrollItems:Hide()
end

function UIEventLunarSkinBundleLayout:OnClickButtonBuy()
    BuyUtils.InitListener(function()
        self.eventModel:AddNumberBuy(EventActionType.LUNAR_NEW_YEAR_ELITE_SKIN_BUNDLE_PURCHASE, self.packId, 1)
        self:ShowBuyState()
        self.scrollItems:Resize(self.listItems:Count())
        RxMgr.notificationPurchasePacks:Next()
    end, function(logicCode)
        print("Error logic code ", logicCode)
    end)
    RxMgr.purchaseProduct:Next(self.packKey)
end