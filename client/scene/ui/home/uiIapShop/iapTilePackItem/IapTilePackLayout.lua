--- @class IapTilePackLayout
IapTilePackLayout = Class(IapTilePackLayout)

--- @param iapTilePackItem IapTilePackItem
--- @param opCode OpCode
function IapTilePackLayout:Ctor(iapTilePackItem, packViewType, opCode)
    --- @type IapTilePackItem
    self.item = iapTilePackItem
    --- @type IapTilePackItemConfig
    self.config = iapTilePackItem.config
    --- @type PackViewType
    self.packViewType = packViewType
    --- @type OpCode
    self.opCode = opCode
    --- @type ProductConfig
    self.productConfig = nil
    --- @type ItemsTableView
    self.itemsTableView = ItemsTableView(self.config.rewardAnchor)
    --- @type function
    self.buySuccessListener = nil
end

--- @param data ProductConfig
function IapTilePackLayout:SetData(data, listener)
    self.buySuccessListener = listener
    self:InitData(data)
    self:SetPackKey()
    self:SetUpLayout()
end

function IapTilePackLayout:InitData(data)

end

function IapTilePackLayout:SetPackKey()
    self.packId = self.productConfig.id
    self.packKey = self.productConfig.productID -- ClientConfigUtils.GetPurchaseKey(self.opCode, self.packId, self.productConfig.dataId)
end

function IapTilePackLayout:SetUpLayout()
    self:SetBgTile()
    self:SetPackIcon()
    self:InitLocalization()
    self:SetReward()
    self:SetTextPrice()
    self:SetTextBuy()
end

function IapTilePackLayout:InitLocalization()

end

function IapTilePackLayout:GetBgTile()
    local bgType = 1
    if self.packViewType == PackViewType.WEEKLY_LIMITED_PACK then
        bgType = 2
    elseif self.packViewType == PackViewType.RAW_PACK then
        bgType = 0
    elseif self.packViewType == PackViewType.DAILY_LIMITED_HALLOWEEN_PACK then
        bgType = 3
    elseif self.packViewType == PackViewType.DAILY_LIMITED_XMAS_PACK then
        bgType = 4
    elseif self.packViewType == PackViewType.DAILY_LIMITED_NEW_YEAR then
        bgType = 5
    elseif self.packViewType == PackViewType.ELITE_BUNDLE then
        bgType = 6
    elseif self.packViewType == PackViewType.VALENTINE_BUNDLE then
        bgType = 7
    elseif self.packViewType == PackViewType.NEW_HERO_BUNDLE then
        bgType = 8
    elseif self.packViewType == PackViewType.DAILY_LIMITED_EASTER_PACK then
        bgType = 9
    elseif self.packViewType == PackViewType.WELCOME_BACK_BUNDLE then
        bgType = 10
    elseif self.packViewType == PackViewType.DAILY_LIMITED_BIRTHDAY then
        bgType = 11
    else
        bgType = 0
    end
    return bgType
end

function IapTilePackLayout:SetBgTile()
    local bgType = self:GetBgTile()
    self.config.bg.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconBgIapShop, tostring(bgType))
    self.config.bgButton.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconBgIapShop, string.format("button_%s", bgType))
end

function IapTilePackLayout:SetPackIcon()

end

function IapTilePackLayout:SetReward()
    self.itemsTableView:SetData(RewardInBound.GetItemIconDataList(self.productConfig.rewardList))
end

function IapTilePackLayout:SetTextPrice()
    if self.productConfig.isFree ~= true then
        self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)
    else
        self.config.textPrice.text = LanguageUtils.LocalizeCommon("free")
    end
end

function IapTilePackLayout:SetTextBuy()

end

function IapTilePackLayout:OnClickBuy()
    self:RequestBuy()
end

function IapTilePackLayout:RequestBuy()
    BuyUtils.InitListener(function()
        self:OnBuySuccess()
    end)
    self:FireTrackingEvent()
    RxMgr.purchaseProduct:Next(self.packKey)
end

function IapTilePackLayout:OnBuySuccess()
    self:SetTextBuy()
    if self.buySuccessListener then
        self.buySuccessListener()
    end
end

function IapTilePackLayout:FireTrackingEvent()

end

function IapTilePackLayout:OnHide()
    self.item:SetActiveColor(true)
    self.itemsTableView:Hide()
end

function IapTilePackLayout:DisableCommon()

end