--- @class UISubscriptionPackView
UISubscriptionPackView = Class(UISubscriptionPackView)

--- @param transform UnityEngine_Transform
--- @param packId number
function UISubscriptionPackView:Ctor(transform, packId)
    --- @type UISubscriptionPackConfig
    self.config = UIBaseConfig(transform)
    --- @type number
    self.packId = packId
    --- @type OpCode
    self.opCode = OpCode.PURCHASE_SUBSCRIPTION_PACK
    --- @type string
    self.packKey = ClientConfigUtils.GetPurchaseKey(self.opCode, self.packId)
    --- @type ItemsTableView
    self.itemsTable = nil
    --- @type IapDataInBound
    self.iapDataInBound = nil
    --- @type EventSaleOffModel
    self.eventSaleOffModel = nil

    self:InitButtonListener()
    self:InitItemTableView()
end

function UISubscriptionPackView:InitLocalization()
    self.config.textLogin.text = LanguageUtils.LocalizeCommon("when_you_login")
    self.config.textSaleOff.text = LanguageUtils.LocalizeCommon("sale_off")
    self.config.textTotal.text = LanguageUtils.LocalizeCommon("total")
    self.config.textUnlock.text = LanguageUtils.LocalizeCommon("unlock_super_monthly_card")
end

function UISubscriptionPackView:InitButtonListener()
    self.config.buttonBuy.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBuy()
    end)

    self.config.buttonTrial.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickTrial()
    end)
end

function UISubscriptionPackView:InitItemTableView()
    self.itemsTable = ItemsTableView(self.config.resAnchor)
end

function UISubscriptionPackView:ShowPack()
    LanguageUtils.CheckInitLocalize(self, UISubscriptionPackView.InitLocalization)
    --- @type IapDataInBound
    self.iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    self.eventSaleOffModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SALE_OFF)

    --- @type SubscriptionProduct
    self.data = ResourceMgr.GetPurchaseConfig():GetCashShop():GetSubscription(self.packId)
    self:SetTittle()

    local isTrialUiAvailable = self:IsTrialUiAvailable()
    self.config.buttonBuy.gameObject:SetActive(isTrialUiAvailable == false)
    self.config.buttonTrial.gameObject:SetActive(isTrialUiAvailable == true)
    self.config.coverInstantReward:SetActive(isTrialUiAvailable == true)

    if isTrialUiAvailable == true then
        self:SetTrial()
        self:SetDurationInDays(0)
    else
        self:SetPrice()
        local trialDuration = self.iapDataInBound:GetTrialDurationSubscription(self.packId)
        local duration = self.iapDataInBound:GetDurationInSubscriptionPack(self.packId)
        self:SetDurationInDays(math.max(trialDuration, 0) + math.max(duration, 0))
    end
    self:SetBannerReward()
    self:SetInstantReward()
    self:SetTextFreeVideo()
    self:CheckActiveSaleOff()
end

function UISubscriptionPackView:SetPrice()
    self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)
end

function UISubscriptionPackView:SetTrial()
    self.config.textBtnTrial.text = string.format(LanguageUtils.LocalizeCommon("start_free_trial"),
            string.format("<color=#%s>%s %s</color>", UIUtils.green_light, self.data.trialDurationInDay, LanguageUtils.LocalizeCommon("day")))
end

function UISubscriptionPackView:SetTittle()
    local key
    if self.data.id == 1 or self.data.id == 2 then
        key = "monthly"
    else
        key = "premium_monthly"
    end
    self.config.tittle.text = LanguageUtils.LocalizeCommon(key)
end

function UISubscriptionPackView:SetTextFreeVideo()
    self.config.textFree.enabled = self.data.allowSkipVideo
    if self.data.allowSkipVideo then
        self.config.textFree.text = LanguageUtils.LocalizeCommon("free_acquire_video_reward")
    end
end

function UISubscriptionPackView:SetBannerReward()
    local listBonusReward = self.data.listBonusReward
    print("listBonusReward ", listBonusReward:Count())
    self.config.plusEachDay:SetActive(listBonusReward:Count() > 1)
    for i = 1, self.config.eachDay.childCount do
        local rewardAnchor = self.config.eachDay:GetChild(i - 1)
        print(rewardAnchor)
        if i <= listBonusReward:Count() then
            rewardAnchor.gameObject:SetActive(true)
            --- @type RewardInBound
            local bonus = listBonusReward:Get(i)
            print(LogUtils.ToDetail(bonus))
            --- @type UnityEngine_UI_Text
            local textValue = rewardAnchor:Find("icon/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
            textValue.text = tostring(bonus:GetNumber())
        else
            rewardAnchor.gameObject:SetActive(false)
        end
    end

    local listTotalBonusReward = self.data:GetTotalListBonusReward()
    print("listTotalBonusReward ", listTotalBonusReward:Count())
    self.config.plusTotal:SetActive(listTotalBonusReward:Count() > 1)
    for i = 1, self.config.total.childCount do
        local rewardAnchor = self.config.total:GetChild(i - 1)
        if i <= listTotalBonusReward:Count() then
            rewardAnchor.gameObject:SetActive(true)
            --- @type RewardInBound
            local bonus = listTotalBonusReward:Get(i)
            --- @type UnityEngine_UI_Text
            local textValue = rewardAnchor:Find("icon/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
            textValue.text = tostring(bonus:GetNumber())
        else
            rewardAnchor.gameObject:SetActive(false)
        end
    end

    self.config.textEachDay.text = string.format(LanguageUtils.LocalizeCommon("claim_each_day"), self.data.durationInDays)

    --for i = 1, listBonusReward:Count() do
    --    local bonus = listBonusReward:Get(i)
    --    local rewardAnchor = self.config.eachDay:GetChild(i - 1)
    --    local anchor = rewardAnchor:FindChild("icon/text_value")
    --    --- @type UnityEngine_UI_Text
    --    local textValue = anchor:GetComponent(ComponentName.UnityEngine_UI_Text)
    --    textValue.text = bonus:GetNumber()
    --end
    --self.config.textLeftCoin.text = tostring(self.data.bonusReward:GetNumber())
    --self.config.textRightCoin.text = tostring(self.data:TotalBonusReward())
end

function UISubscriptionPackView:SetDurationInDays(durationIndays)
    self.config.textNumberDays.text = string.format("%d\n%s", durationIndays, LanguageUtils.LocalizeCommon("day"))
end

function UISubscriptionPackView:SetInstantReward()
    self.itemsTable:SetData(RewardInBound.GetItemIconDataList(self.data:GetRewardList()), UIPoolType.ItemInfoView)
end

function UISubscriptionPackView:Hide()
    self.itemsTable:Hide()
end

function UISubscriptionPackView:IsTrialUiAvailable()
    if self.data.trialDurationInDay > 0
            and self.iapDataInBound:IsSubscriptionTrialPackAvailable(self.packId) == true
            and self.iapDataInBound:IsEverPurchaseSubscriptionByPackId(self.packId) == false
            and self.iapDataInBound.isValidToShowButtonTrialMonthly == true then
        return true
    end
    return false
end

function UISubscriptionPackView:OnClickBuy()
    local saleOffProductConfig = self:GetSalePackConfig()
    local packKey = self.packKey
    if saleOffProductConfig ~= nil then
        packKey = ClientConfigUtils.GetPurchaseKey(saleOffProductConfig.opCode, saleOffProductConfig.id, saleOffProductConfig.dataId)
    end
    BuyUtils.InitListener(function()
        self:ShowPack()
    end)
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "monthly_pack", self.packId)
    RxMgr.purchaseProduct:Next(packKey)
end

function UISubscriptionPackView:OnClickTrial()
    local callback = function()
        self:ShowPack()
        PopupUtils.ShowPopupNotificationOK(LanguageUtils.LocalizeCommon("trial_available"))
        TrackingUtils.SetTrialSubscription()
    end
    PurchaseRequest.RequestTrialSubscription(self.packId, callback, SmartPoolUtils.LogicCodeNotification)
end

function UISubscriptionPackView:CheckActiveSaleOff()
    self.config.saleTag:SetActive(false)
    self.config.oldPrice.gameObject:SetActive(false)

    --- @type SaleOffProductConfig
    local saleOffProductConfig = self:GetSalePackConfig()
    if saleOffProductConfig ~= nil then
        self.config.saleTag:SetActive(true)
        self.config.oldPrice.gameObject:SetActive(true)
        self.config.textSaleOffValue.text = saleOffProductConfig.saleOff .. "%"

        self.config.oldPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)
        self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(ClientConfigUtils.GetPurchaseKey(saleOffProductConfig.opCode, saleOffProductConfig.id, saleOffProductConfig.dataId))

        local purchasedPackInBound = self.eventSaleOffModel:FindPurchasePackById(saleOffProductConfig.id)
        local left = saleOffProductConfig.stock
        if purchasedPackInBound ~= nil then
            left = saleOffProductConfig.stock - purchasedPackInBound.numberOfBought
        end
        self:ShowTextBuy(left, saleOffProductConfig.stock)
    else
        self:ShowTextBuy()
    end
end

--- @return SaleOffProductConfig
function UISubscriptionPackView:GetSalePackConfig()
    if self.eventSaleOffModel == nil then
        return nil
    end
    local isOpening = self.eventSaleOffModel:IsOpening()
    if isOpening then
        --- @type SaleOffStore
        local saleOffStore = ResourceMgr.GetPurchaseConfig():GetSaleOff()
        local dataId = self.eventSaleOffModel.timeData.dataId
        --- @type PackOfSaleProducts
        local packOfSaleProducts = saleOffStore:GetPack(dataId)
        local saleOffProductConfig = packOfSaleProducts:FindSaleProduct(self.packId, self.opCode)
        if saleOffProductConfig ~= nil then
            local purchasedPackInBound = self.eventSaleOffModel:FindPurchasePackById(saleOffProductConfig.id)
            if purchasedPackInBound == nil or purchasedPackInBound.numberOfBought < saleOffProductConfig.stock then
                return saleOffProductConfig
            end
        end
    end
    return nil
end

--- @param left number
--- @param max number
function UISubscriptionPackView:ShowTextBuy(left, max)
    if left == nil or max == nil then
        self.config.localizeBuy.text = LanguageUtils.LocalizeCommon("buy")
    else
        local color = UIUtils.green_light
        if left == 0 then
            color = UIUtils.red_light
        end
        self.config.localizeBuy.text = string.format("%s %s",
                LanguageUtils.LocalizeCommon("buy"),
                UIUtils.SetColorString(color, string.format("(%s/%s)", left, max)))
    end
end