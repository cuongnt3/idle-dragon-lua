require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackLayout"

--- @class IapTilePackItem : IconView
IapTilePackItem = Class(IapTilePackItem, IconView)

function IapTilePackItem:Ctor()
    --- @type IapTilePackItemConfig
    self.config = nil
    --- @type UIResItemRawPack
    self.rewardItem = nil
    --- @type UIResItemRawPack
    self.rewardVip = nil
    --- @type OpCode
    self.opCode = OpCode.PURCHASE_RAW_PACK
    --- @type number
    self.packId = nil
    --- @type number
    self.packKey = nil
    --- @type Dictionary
    self.layoutDict = Dictionary()
    --- @type IapTilePackLayout
    self.layout = nil
    IconView.Ctor(self)
end

function IapTilePackItem:SetPrefabName()
    self.prefabName = 'iap_tile_pack_item'
    self.uiPoolType = UIPoolType.IapTilePackItem
end

--- @param transform UnityEngine_Transform
function IapTilePackItem:SetConfig(transform)
    self.config = UIBaseConfig(transform)

    self:InitButtonListener()
end

function IapTilePackItem:InitLocalization()
    if self.config.textInstantReward ~= nil then
        self.config.textInstantReward.text = LanguageUtils.LocalizeCommon("instant_reward")
    end
end

--- @param packViewType PackViewType
function IapTilePackItem:SetViewIconData(packViewType, data, listener)
    self:GetLayout(packViewType)
    self.layout:SetData(data, listener)
end

--- @param packData RawProduct
function IapTilePackItem:SetIconData(packData)
    self.iconData = packData
    self:SetPackKey()

    self.config.textBuyValue.text = LanguageUtils.LocalizeCommon("buy")

    self.config.iconGemSet.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconRawPack, self.packId)
    self.config.iconGemSet:SetNativeSize()
    if self.config.textPackage ~= nil then
        self.config.textPackage.text = LanguageUtils.LocalizeCommon(string.format("raw_pack_%d", self.packId))
    end
    self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(ClientConfigUtils.GetPurchaseKey(self.opCode, self.packId))

    self:SetRewardList()
end

function IapTilePackItem:SetPackKey()
    self.packId = self.iconData.id
    self.packKey = ClientConfigUtils.GetPurchaseKey(self.opCode, self.packId)
end

function IapTilePackItem:SetRewardList()
    if self.iconData.rewardList:Count() == 2 then
        assert(self.rewardItem == nil)
        --- @type RewardInBound
        local rewardInBound = self.iconData.rewardList:Get(1)
        local content = ClientMathUtils.ConvertingCalculation(rewardInBound.number)
        --- @type UIResItemRawPack
        self.rewardItem = SmartPoolUtils.CreateResItemRawPack(rewardInBound.id, content, self.config.rewardAnchor)

        local vipReward = self.iconData.rewardList:Get(2)
        self.rewardVip = SmartPoolUtils.CreateResItemRawPack(MoneyType.VIP_POINT, vipReward.number, self.config.resVipAnchor)

        self:UpdateViewBonus()
    else
        XDebug.Error("multi rewards didn't support. Update code now. Use ItemTableView, reference PopupRewardView")
    end
end

function IapTilePackItem:UpdateViewBonus()
    if self.iconData.bonusReward and self.iconData:HasBought() == false then
        self.config.iconFirstPurchase:SetActive(true)
        self.config.textBonus.text = string.format("+%d", ClientMathUtils.ConvertingCalculation(self.iconData.bonusReward.number))
    else
        self.config.iconFirstPurchase:SetActive(false)
    end
end

function IapTilePackItem:InitButtonListener()
    self.config.button.onClick:RemoveAllListeners()
    self.config.button.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        if self.layout ~= nil then
            self.layout:OnClickBuy()
        end
    end)
end

--- @param packViewType PackViewType
function IapTilePackItem:GetLayout(packViewType)
    self:DisableCommon()
    self.layout = self.layoutDict:Get(packViewType)
    if self.layout == nil then
        if packViewType == PackViewType.EVENT_BUNDLE then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackEventBundleLayout"
            self.layout = IapTilePackEventBundleLayout(self, packViewType, OpCode.EVENT_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.DAILY_LIMITED_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyLimitedLayout"
            self.layout = IapTilePackDailyLimitedLayout(self, packViewType, OpCode.PURCHASE_LIMITED_PACK)
        elseif packViewType == PackViewType.DAILY_LIMITED_HALLOWEEN_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackHalloweenLayout"
            self.layout = IapTilePackHalloweenLayout(self, packViewType, OpCode.EVENT_HALLOWEEN_DAILY_PURCHASE)
        elseif packViewType == PackViewType.DAILY_LIMITED_XMAS_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackXmasLayout"
            self.layout = IapTilePackXmasLayout(self, packViewType, OpCode.EVENT_CHRISTMAS_DAILY_PURCHASE)
        elseif packViewType == PackViewType.DAILY_LIMITED_NEW_YEAR then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackNewYearLayout"
            self.layout = IapTilePackNewYearLayout(self, packViewType, OpCode.EVENT_NEW_YEAR_DAILY_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.DAILY_LIMITED_BIRTHDAY then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyBirthdayLayout"
            self.layout = IapTilePackDailyBirthdayLayout(self, packViewType, OpCode.EVENT_BIRTHDAY_DAILY_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.WEEKLY_LIMITED_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyLimitedLayout"
            self.layout = IapTilePackDailyLimitedLayout(self, packViewType, OpCode.PURCHASE_LIMITED_PACK)
        elseif packViewType == PackViewType.MONTHLY_LIMITED_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyLimitedLayout"
            self.layout = IapTilePackDailyLimitedLayout(self, packViewType, OpCode.PURCHASE_LIMITED_PACK)
        elseif packViewType == PackViewType.RAW_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTileRawPackLayout"
            self.layout = IapTileRawPackLayout(self, packViewType, OpCode.PURCHASE_RAW_PACK)
        elseif packViewType == PackViewType.ELITE_BUNDLE then
            require "lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.eliteBundle.IapTilePackEliteBundleLayout"
            self.layout = IapTilePackEliteBundleLayout(self, packViewType, OpCode.EVENT_LUNAR_NEW_YEAR_ELITE_STORE_PURCHASE)
        elseif packViewType == PackViewType.VALENTINE_BUNDLE then
            require "lua.client.scene.ui.home.uiEventValentine.eventLayout.bundle.IapTilePackValentineBundleLayout"
            self.layout = IapTilePackValentineBundleLayout(self, packViewType, OpCode.EVENT_VALENTINE_LOVE_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.NEW_HERO_BUNDLE then
            require "lua.client.scene.ui.home.uiEventNewHero.eventHeroNewLayout.bundle.IapTilePackNewHeroBundleLayout"
            self.layout = IapTilePackNewHeroBundleLayout(self, packViewType, OpCode.EVENT_NEW_HERO_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.DAILY_LIMITED_EASTER_PACK then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyEasterLayout"
            self.layout = IapTilePackDailyEasterLayout(self, packViewType, OpCode.EVENT_EASTER_DAILY_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.WELCOME_BACK_BUNDLE then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackWelcomeBackLayout"
            self.layout = IapTilePackWelcomeBackLayout(self, packViewType, OpCode.COMEBACK_BUNDLE_PURCHASE)
        elseif packViewType == PackViewType.EVENT_SKIN_BUNDLE_1
                or packViewType == PackViewType.EVENT_SKIN_BUNDLE_2 then
            require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackSkinBundleLayout"
            self.layout = IapTilePackSkinBundleLayout(self, packViewType)
        end
        self.layoutDict:Add(packViewType, self.layout)
    end
end

function IapTilePackItem:DisableCommon()
    self:EnableNotification(false)
    self.config.bonus1stPurchase:SetActive(false)
end

function IapTilePackItem:ReturnPool()
    self:HideLayout()
    IconView.ReturnPool(self)
end

function IapTilePackItem:HideLayout()
    if self.layout ~= nil then
        self.layout:OnHide()
        self.layout = nil
    end
end

function IapTilePackItem:EnableNotification(isEnable)
    self.config.notification:SetActive(isEnable)
end

--- @return void
function IapTilePackItem:SetActiveColorObject(gameObject, isActive)
    UIUtils.SetActiveColor(gameObject, isActive)
end

return IapTilePackItem