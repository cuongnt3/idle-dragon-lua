require "lua.client.data.Purchase.ProductConfig"
require "lua.client.data.Purchase.SaleOffProductConfig"
require "lua.client.data.Purchase.GroupProductConfig"
require "lua.client.data.Purchase.MidAutumnProductConfig"
require "lua.client.data.Purchase.PackOfProducts"
require "lua.client.data.Purchase.PackOfSaleProducts"
require "lua.client.data.Purchase.PurchaseStore"
require "lua.client.data.Purchase.CashShop.CashShop"
require "lua.client.data.Purchase.Event.BundleStore"
require "lua.client.data.Purchase.Event.HotDealStore"
require "lua.client.data.Purchase.Event.SaleOffStore"
require "lua.client.data.Purchase.Event.EventArenaPassStore"
require "lua.client.data.Purchase.Event.EventDailyQuestPassStore"

require "lua.client.data.Purchase.MidAutumn.MidAutumnStore"
require "lua.client.data.Purchase.Halloween.HalloweenStore"
require "lua.client.data.Purchase.Halloween.HalloweenDailyStore"
require "lua.client.data.Purchase.BlackFriday.BlackFridayCardStore"
require "lua.client.data.Purchase.BlackFriday.BlackFridayGemPackStore"
require "lua.client.data.Purchase.Xmas.XmasExclusiveStore"
require "lua.client.data.Purchase.Xmas.XmasDailyStore"
require "lua.client.data.Purchase.NewYear.NewYearCardStore"
require "lua.client.data.Purchase.NewYear.NewYearDailyStore"

require "lua.client.data.Purchase.LunarNewYear.LunarPathStore"
require "lua.client.data.Purchase.LunarNewYear.EliteBundleStore"
require "lua.client.data.Purchase.LunarNewYear.LunarSkinBundle"

require "lua.client.data.Purchase.LoveBundleStore"
require "lua.client.data.Purchase.NewHeroBundle.NewHeroBundleStore"

require "lua.client.data.Purchase.MergeServer.MergeServerStore"

require "lua.client.data.Purchase.EasterEgg.EasterBunnyCardStore"
require "lua.client.data.Purchase.EasterEgg.EasterDailyBundleStore"
require "lua.client.data.Purchase.EasterEgg.EasterSkinBundleStore"

require "lua.client.data.Purchase.NewHeroSkinBundle.NewHeroSkinBundleStore"
require "lua.client.data.Purchase.EventSkinBundle.SkinBundleStore"
require "lua.client.data.Purchase.Birthday.BirthdayDailyBundleStore"
require "lua.client.data.Purchase.Birthday.BirthdayBundleStore"

local EVENT_PURCHASE_CONFIG_PATH = "csv/client/event_purchase.csv"
local CAMPAIGN_STAGE_OPEN_TRIAL_MONTHLY = "csv/client/open_trial_monthly_by_campaign_stage.csv"
local FIRST_TIME_REWARD_PATH = "csv/purchase/first_time_reward.csv"

--- @class PurchaseConfig
PurchaseConfig = Class(PurchaseConfig)

function PurchaseConfig:Ctor()
    --- @type CashShop
    self.cashShop = nil
    --- @type HotDealStore
    self.hotDeal = nil
    --- @type BundleStore
    self.bundle = nil
    --- @type SaleOffStore
    self.saleOff = nil
    --- @type EventArenaPassStore
    self.eventArenaPassStore = nil
    --- @type EventDailyQuestPassStore
    self.eventDailyQuestPassStore = nil
    --- @type MidAutumnStore
    self.eventMidAutumnStore = nil
    --- @type HalloweenStore
    self.eventHalloweenStore = nil
    --- @type LunarPathStore
    self.eventLunarPathStore = nil
    --- @type EasterBunnyCardStore
    self.eventEasterBunnyCardStore = nil
    --- @type EasterDailyBundleStore
    self.eventEasterDailyBundleStore = nil
    --- @type EasterSkinBundleStore
    self.eventEasterSkinBundleStore = nil
    --- @type NewHeroSkinBundleStore
    self.newHeroSkinBundleStore = nil
    --- @type SkinBundleStore
    self.skinBundleStore = nil
    --- @type BirthdayDailyBundleStore
    self.eventBirthdayDailyBundleStore = nil
    --- @type BirthdayBundleStore
    self.eventBirthdayBundleStore = nil

    --- @type Dictionary
    self.packBaseConfigDict = nil

    --- @type Dictionary
    self.sungameWebPackBaseDict = nil

    --- @type List
    self.listOpenDayTrialMonthly = nil
    --- @type List
    self._listFirstTimeReward = nil

    self:InitCashShop()
    self:InitEvent()
    self:InitPackBase()
end

function PurchaseConfig:InitCashShop()
    self.cashShop = CashShop()
    self.cashShop:InitPack()
    self.cashShop:SetKey()
end

function PurchaseConfig:InitEvent()
    local eventConfig = self:GetEventPurchaseConfig()

    --self.hotDeal = HotDealStore()
    --self.hotDeal:InitPack(eventConfig:Get("hot_deal"))
    --self.hotDeal:SetKey()

    self.bundle = BundleStore()
    self.bundle:InitPack(eventConfig:Get("bundle"))
    self.bundle:SetKey()

    self.saleOff = SaleOffStore()
    self.saleOff:InitPack(eventConfig:Get("sale_off"))
    self.saleOff:SetKey()

    self.eventArenaPassStore = EventArenaPassStore()
    self.eventArenaPassStore:InitPack(eventConfig:Get("arena_pass"))
    self.eventArenaPassStore:SetKey()

    self.eventDailyQuestPassStore = EventDailyQuestPassStore()
    self.eventDailyQuestPassStore:InitPack(eventConfig:Get("daily_quest_pass"))
    self.eventDailyQuestPassStore:SetKey()

    self.eventMidAutumnStore = MidAutumnStore()
    self.eventMidAutumnStore:InitPack(eventConfig:Get("mid_autumn"))
    self.eventMidAutumnStore:SetKey()

    self.eventHalloweenStore = HalloweenStore()
    self.eventHalloweenStore:InitPack(eventConfig:Get("halloween"))
    self.eventHalloweenStore:SetKey()

    self.eventHalloweenDailyStore = HalloweenDailyStore()
    self.eventHalloweenDailyStore:InitPack(eventConfig:Get("halloween"))
    self.eventHalloweenDailyStore:SetKey()

    self.eventXmasDailyStore = XmasDailyStore()
    self.eventXmasDailyStore:InitPack(eventConfig:Get("christmas"))
    self.eventXmasDailyStore:SetKey()

    self.eventBlackFridayCardStore = BlackFridayCardStore()
    self.eventBlackFridayCardStore:InitPack(eventConfig:Get("black_friday"))
    self.eventBlackFridayCardStore:SetKey()

    self.eventXmasStore = XmasExclusiveStore()
    self.eventXmasStore:InitPack(eventConfig:Get("christmas"))
    self.eventXmasStore:SetKey()

    self.eventNewYearStore = NewYearCardStore()
    self.eventNewYearStore:InitPack(eventConfig:Get("new_year"))
    self.eventNewYearStore:SetKey()

    self.eventNewYearDailyStore = NewYearDailyStore()
    self.eventNewYearDailyStore:InitPack(eventConfig:Get("new_year"))
    self.eventNewYearDailyStore:SetKey()

    self.eventLunarPathStore = LunarPathStore()
    self.eventLunarPathStore:InitPack(eventConfig:Get("lunar_new_year"))
    self.eventLunarPathStore:SetKey()

    self.eventEliteBundleStore = EliteBundleStore()
    self.eventEliteBundleStore:InitPack(eventConfig:Get("lunar_new_year"))
    self.eventEliteBundleStore:SetKey()

    self.eventLoveBundleStore = LoveBundleStore()
    self.eventLoveBundleStore:InitPack(eventConfig:Get("valentine"))
    self.eventLoveBundleStore:SetKey()

    self.lunarSkinBundle = LunarSkinBundle()
    self.lunarSkinBundle:InitPack(eventConfig:Get("lunar_new_year"))
    self.lunarSkinBundle:SetKey()

    self.eventNewHeroBundle = NewHeroBundleStore()
    self.eventNewHeroBundle:InitPack(eventConfig:Get("new_hero_bundle"))
    self.eventNewHeroBundle:SetKey()

    self.eventMergeServerStore = MergeServerStore()
    self.eventMergeServerStore:InitPack(eventConfig:Get("server_merge"))
    self.eventMergeServerStore:SetKey()

    self.eventEasterBunnyCardStore = EasterBunnyCardStore()
    self.eventEasterBunnyCardStore:InitPack(eventConfig:Get("easter"))
    self.eventEasterBunnyCardStore:SetKey()

    self.eventEasterDailyBundleStore = EasterDailyBundleStore()
    self.eventEasterDailyBundleStore:InitPack(eventConfig:Get("easter"))
    self.eventEasterDailyBundleStore:SetKey()

    self.eventEasterSkinBundleStore = EasterSkinBundleStore()
    self.eventEasterSkinBundleStore:InitPack(eventConfig:Get("easter"))
    self.eventEasterSkinBundleStore:SetKey()

    self.newHeroSkinBundleStore = NewHeroSkinBundleStore()
    self.newHeroSkinBundleStore:InitPack(eventConfig:Get("new_hero_skin_bundle"))
    self.newHeroSkinBundleStore:SetKey()

    self.skinBundleStore = SkinBundleStore()
    self.skinBundleStore:InitPack(eventConfig:Get("skin_bundle"))
    self.skinBundleStore:SetKey()

    self.eventBirthdayDailyBundleStore = BirthdayDailyBundleStore()
    self.eventBirthdayDailyBundleStore:InitPack(eventConfig:Get("birthday"))
    self.eventBirthdayDailyBundleStore:SetKey()

    self.eventBirthdayBundleStore = BirthdayBundleStore()
    self.eventBirthdayBundleStore:InitPack(eventConfig:Get("birthday"))
    self.eventBirthdayBundleStore:SetKey()
end

--- @param dict Dictionary
function PurchaseConfig:ImportProduct(dict)
    --- @param productConfig ProductConfig
    for _, productConfig in pairs(dict:GetItems()) do
        if self.packBaseConfigDict:IsContainKey(productConfig.productID) then
            XDebug.Error("Content is exist!!! " .. productConfig.productID)
        else
            self.packBaseConfigDict:Add(productConfig.productID, productConfig)
        end

        if IS_VIET_NAM_VERSION and productConfig.isFree == false then
            self.sungameWebPackBaseDict:Add(productConfig:GetSungameWebPackId(), productConfig)
        end
    end
end

function PurchaseConfig:InitPackBase()
    self.packBaseConfigDict = Dictionary()
    if IS_VIET_NAM_VERSION then
        self.sungameWebPackBaseDict = Dictionary()
    end

    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.cashShop:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    --for _, purchasePackConfig in pairs(self.hotDeal:GetAllPacks():GetItems()) do
    --    self:ImportProduct(purchasePackConfig.packDict)
    --end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.bundle:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.saleOff:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventArenaPassStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventDailyQuestPassStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventMidAutumnStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventHalloweenStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventHalloweenDailyStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventBlackFridayCardStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventXmasStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventXmasDailyStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventNewYearStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventNewYearDailyStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventLunarPathStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventEliteBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventLoveBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.lunarSkinBundle:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventNewHeroBundle:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventMergeServerStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventEasterBunnyCardStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventEasterDailyBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventEasterSkinBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.newHeroSkinBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.skinBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventBirthdayDailyBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
    --- @param purchasePackConfig PackOfProducts
    for _, purchasePackConfig in pairs(self.eventBirthdayBundleStore:GetAllPacks():GetItems()) do
        self:ImportProduct(purchasePackConfig.packDict)
    end
end

--- @return Dictionary
function PurchaseConfig:GetAllPackBase()
    return self.packBaseConfigDict
end

--- @return ProductConfig
--- @param package string
function PurchaseConfig:GetProductByPackage(package)
    --- @param productConfig ProductConfig
    for key, productConfig in pairs(self:GetAllPackBase():GetItems()) do
        if IS_ANDROID_PLATFORM then
            if package == productConfig.androidPackageName then
                return productConfig
            end
        elseif IS_IOS_PLATFORM then
            if package == productConfig.iosPackageName then
                return productConfig
            end
        elseif package == productConfig.androidPackageName then
            return productConfig
        end
    end
    XDebug.Error("Can't find package: " .. package)
end

--- @return ProductConfig
--- @param key string
function PurchaseConfig:GetPackBase(key)
    local pack = self.packBaseConfigDict:Get(key)
    if pack == nil then
        XDebug.Error(string.format("pack is nil: %s", key))
    end
    return pack
end

--- @return ProductConfig
--- @param key string
function PurchaseConfig:GetSungameWebPackBase(key)
    local pack = self.sungameWebPackBaseDict:Get(key)
    if pack == nil then
        XDebug.Error(string.format("pack is nil: %s", key))
    end
    return pack
end

--- @return ProductConfig
function PurchaseConfig:FindProductConfigFromPackageName(packageName)
    --- @param v ProductConfig
    for k, v in pairs(self.packBaseConfigDict:GetItems()) do
        if v:GetPackageNameByDeviceOs() == packageName then
            return v
        end
    end
    return nil
end

--- @return Dictionary
function PurchaseConfig:GetEventPurchaseConfig()
    local packIdDict = Dictionary()
    local content = CsvReaderUtils.ReadLocalFile(EVENT_PURCHASE_CONFIG_PATH)
    local lines = content:Split('\n')
    for i = 1, #lines do
        local chars = lines[i]:Split(',')
        local name = chars[1]
        chars[1] = nil
        packIdDict:Add(name, chars)
    end
    return packIdDict
end

--- @return CashShop
function PurchaseConfig:GetCashShop()
    return self.cashShop
end

--- @return HotDealStore
function PurchaseConfig:GetHotDeal()
    return self.hotDeal
end

--- @return BundleStore
function PurchaseConfig:GetBundle()
    return self.bundle
end

--- @return SaleOffStore
function PurchaseConfig:GetSaleOff()
    return self.saleOff
end

--- @return EventArenaPassStore
function PurchaseConfig:GetArenaPass()
    return self.eventArenaPassStore
end

--- @return EventDailyQuestPassStore
function PurchaseConfig:GetDailyQuestPass()
    return self.eventDailyQuestPassStore
end

--- @return MidAutumnStore
function PurchaseConfig:GetMidAutumn()
    return self.eventMidAutumnStore
end

--- @return HalloweenStore
function PurchaseConfig:GetHalloween()
    return self.eventHalloweenStore
end

--- @return XmasExclusiveStore
function PurchaseConfig:GetXmasExclusive()
    return self.eventXmasStore
end

--- @return HalloweenStore
function PurchaseConfig:GetHalloweenDaily()
    return self.eventHalloweenDailyStore
end

--- @return HalloweenStore
function PurchaseConfig:GetXmasDaily()
    return self.eventXmasDailyStore
end

--- @return NewYearDailyStore
function PurchaseConfig:GetNewYearDaily()
    return self.eventNewYearDailyStore
end

--- @return BlackFridayCardStore
function PurchaseConfig:GetBlackFridayCard()
    return self.eventBlackFridayCardStore
end

--- @return BlackFridayGemPackStore
function PurchaseConfig:GetBlackFridayGemPack()
    return self.eventBlackFridayGemPackStore
end

--- @return NewYearCardStore
function PurchaseConfig:GetNewYearCard()
    return self.eventNewYearStore
end

--- @return LunarPathStore
function PurchaseConfig:GetLunarPathStore()
    return self.eventLunarPathStore
end

--- @return LunarPathStore
function PurchaseConfig:GetEliteBundleStore()
    return self.eventEliteBundleStore
end

--- @return LunarPathStore
function PurchaseConfig:GetLoveBundleStore()
    return self.eventLoveBundleStore
end

--- @return LunarSkinBundle
function PurchaseConfig:GetLunarSkinBundle()
    return self.lunarSkinBundle
end

--- @return NewHeroBundleStore
function PurchaseConfig:GetNewHeroBundle()
    return self.eventNewHeroBundle
end

--- @return MergeServerStore
function PurchaseConfig:GetMergeServerBundle()
    return self.eventMergeServerStore
end

--- @return EasterBunnyCardStore
function PurchaseConfig:GetEventEasterBunnyCardStore()
    return self.eventEasterBunnyCardStore
end

--- @return EasterDailyBundleStore
function PurchaseConfig:GetEasterDailyBundleStore()
    return self.eventEasterDailyBundleStore
end

--- @return BirthdayDailyBundleStore
function PurchaseConfig:GetBirthdayDailyBundleStore()
    return self.eventBirthdayDailyBundleStore
end

--- @return BirthdayBundleStore
function PurchaseConfig:GetBirthdayBundleStore()
    return self.eventBirthdayBundleStore
end

--- @return EasterSkinBundleStore
function PurchaseConfig:GetEasterLimitedOfferStore()
    return self.eventEasterSkinBundleStore
end

--- @return NewHeroSkinBundleStore
function PurchaseConfig:GetNewHeroSkinBundleStore()
    return self.newHeroSkinBundleStore
end

--- @return SkinBundleStore
function PurchaseConfig:GetSkinBundleStore()
    return self.skinBundleStore
end

function PurchaseConfig:GetStore(opCode)
    if opCode == OpCode.EVENT_HOT_DEAL_PURCHASE then
        return self:GetHotDeal()
    elseif opCode == OpCode.EVENT_BUNDLE_PURCHASE then
        return self:GetBundle()
    else
        return self:GetCashShop()
    end
end

--- @return PackOfProducts
function PurchaseConfig:GetPack(opCode, dataId)
    local store = self:GetStore(opCode)
    if opCode == OpCode.EVENT_HOT_DEAL_PURCHASE then
        return store:GetPack(dataId)
    elseif opCode == OpCode.EVENT_BUNDLE_PURCHASE then
        return store:GetPack(dataId)
    else
        return store:GetPack(opCode)
    end
end

--- @return PackOfProducts
function PurchaseConfig:GetCurrentPack(opCode)
    if opCode == OpCode.EVENT_HOT_DEAL_PURCHASE then
        return self:GetHotDeal():GetCurrentPack()
    elseif opCode == OpCode.EVENT_BUNDLE_PURCHASE then
        return self:GetBundle():GetCurrentPack()
    else
        return self:GetCashShop():GetPack(opCode)
    end
end

--- @return ProductConfig
function PurchaseConfig:GetProduct(opCode, dataId, productId)
    return self:GetPack(opCode, dataId):GetPackBase(productId)
end

--- @return List
function PurchaseConfig:GetListCampaignStageOpenTrialMonthly()
    if self.listOpenDayTrialMonthly == nil then
        self.listOpenDayTrialMonthly = List()
        local parseCsv = CsvReaderUtils.ReadAndParseLocalFile(CAMPAIGN_STAGE_OPEN_TRIAL_MONTHLY)
        for i = 1, #parseCsv do
            self.listOpenDayTrialMonthly:Add(tonumber(parseCsv[i]['stage']))
        end
    end
    return self.listOpenDayTrialMonthly
end

--- @return List
function PurchaseConfig:GetListFirstTimeReward()
    if self._listFirstTimeReward == nil then
        self._listFirstTimeReward = List()
        local parseCsv = CsvReaderUtils.ReadAndParseLocalFile(FIRST_TIME_REWARD_PATH)
        for i = 1, #parseCsv do
            self._listFirstTimeReward:Add(RewardInBound.CreateByParams(parseCsv[i]))
        end
    end
    return self._listFirstTimeReward
end

return PurchaseConfig

