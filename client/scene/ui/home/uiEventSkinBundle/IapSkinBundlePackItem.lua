--- @class IapSkinBundlePackItem : IconView
IapSkinBundlePackItem = Class(IapSkinBundlePackItem, IconView)

function IapSkinBundlePackItem:Ctor(transform)
    --- @type IapSkinBundlePackItemConfig
    self.config = nil
    --- @type OpCode
    self.opCode = nil
    --- @type number
    self.packId = nil
    --- @type number
    self.packKey = nil
    --- @type ItemsTableView
    self.itemsTableView = nil

    if transform then
        self:SetConfig(transform)
    else
        IconView.Ctor(self)
    end
end

function IapSkinBundlePackItem:SetPrefabName()
    self.prefabName = 'iap_skin_bundle_pack_item'
    self.uiPoolType = UIPoolType.IapSkinBundlePackItem
end

--- @param transform UnityEngine_Transform
function IapSkinBundlePackItem:SetConfig(transform)
    self.config = UIBaseConfig(transform)

    self.itemsTableView = ItemsTableView(self.config.rewardAnchor)

    self:InitButtonListener()
end

function IapSkinBundlePackItem:InitButtonListener()
    self.config.button.onClick:RemoveAllListeners()
    self.config.button.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBuy()
    end)
end

function IapSkinBundlePackItem:InitLocalization()

end

--- @param productConfig ProductConfig
function IapSkinBundlePackItem:SetIconData(productConfig)
    self.productConfig = productConfig
    --- @type EventPopupModel
    self.eventPopupModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SKIN_BUNDLE)

    self:SetPackKey()

    self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)

    self:SetRewardList()


    self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas("IconSkinBundlePack", self.packId)
    self.config.packIcon:SetNativeSize()
end

function IapSkinBundlePackItem:SetPackKey()
    self.packId = self.productConfig.id
    self.opCode = self.productConfig.opCode
    self.packKey = ClientConfigUtils.GetPurchaseKey(self.opCode, self.packId, self.eventPopupModel.timeData.dataId)
end

function IapSkinBundlePackItem:SetRewardList(rewardList)
    local vipValue, productRewards = self.productConfig:GetReward()
    rewardList = rewardList or productRewards

    self:SetActiveColorObject(self.itemsTableView.uiTransform.gameObject, true)
    self.itemsTableView:SetData(RewardInBound.GetItemIconDataList(rewardList))

    if vipValue ~= nil and vipValue > 0 then
        self.config.vip:SetActive(true)
        self.config.textVip.text = "+" .. vipValue
    else
        self.config.vip:SetActive(false)
    end

    self:SetTextBuy()
end

function IapSkinBundlePackItem:ReturnPool()
    self:OnHide()

    IconView.ReturnPool(self)
end

function IapSkinBundlePackItem:OnHide()
    self:SetActiveColorObject(self.itemsTableView.uiTransform.gameObject, true)
    self.itemsTableView:Hide()
end

function IapSkinBundlePackItem:OnClickBuy()
    local numberBuy = self.eventPopupModel:GetNumberBuyOpCode(self.productConfig.opCode, self.productConfig.id)
    if numberBuy < self.productConfig.stock then
        self:RequestBuy()
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("reach_limited_pack"))
    end
end

function IapSkinBundlePackItem:RequestBuy()
    BuyUtils.InitListener(function()
        self:OnBuySuccess()
    end)
    self:FireTrackingEvent()
    RxMgr.purchaseProduct:Next(self.packKey)
end

function IapSkinBundlePackItem:OnBuySuccess()
    self:SetTextBuy()
end

function IapSkinBundlePackItem:SetTextBuy()
    local numberBuy = self.eventPopupModel:GetNumberBuyOpCode(self.productConfig.opCode, self.productConfig.id)

    self.config.textPurchaseLimit.text = string.format("%s %s",
            LanguageUtils.LocalizeCommon("limited_packs"),
            UIUtils.SetColorString(UIUtils.white, string.format("%s/%s", self.productConfig.stock - numberBuy, self.productConfig.stock)))

    self:SetActiveColor(numberBuy < self.productConfig.stock)
end

function IapSkinBundlePackItem:FireTrackingEvent()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "skin_bundle", self.packId)
end

return IapSkinBundlePackItem