--- @class IapTilePackEventBundleLayout : IapTilePackLayout
IapTilePackEventBundleLayout = Class(IapTilePackEventBundleLayout, IapTilePackLayout)

--- @param data PurchasedPackInBound
function IapTilePackEventBundleLayout:InitData(data)
    --- @type PurchasedPackInBound
    self.iconData = data
    self.productConfig = data.config
end

function IapTilePackEventBundleLayout:FireTrackingEvent()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "event_bundle", self.packId)
end

function IapTilePackEventBundleLayout:SetPackIcon()
    if IS_APPLE_REVIEW_IAP == true then
        self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconEventBundlePack, math.min(5, self.packId))
    else
        self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconEventBundlePack, self.packId)
    end
    self.config.packIcon:SetNativeSize()
end

function IapTilePackEventBundleLayout:OnClickBuy()
    if self.iconData.numberOfBought < self.productConfig.stock then
        self:RequestBuy()
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("reach_limited_pack"))
    end
end

function IapTilePackEventBundleLayout:SetTextPrice()
    if self.productConfig.isFree ~= true then
        self.config.textPrice.text = zg.iapMgr:GetLocalPrizeString(self.packKey)
    else
        self.config.textPrice.text = LanguageUtils.LocalizeCommon("free")
    end
end

function IapTilePackEventBundleLayout:SetTextBuy()
    --local color = UIUtils.green_dark
    --if self.productConfig.stock - self.iconData.numberOfBought == 0 then
    --    color = UIUtils.white
    --end
    self.config.textPurchaseLimit.text = string.format("%s %s",
            LanguageUtils.LocalizeCommon("limited_packs"),
            UIUtils.SetColorString(UIUtils.white, string.format("%s/%s", self.productConfig.stock - self.iconData.numberOfBought, self.productConfig.stock)))

    self.item:EnableNotification(self.productConfig.isFree == true and (self.productConfig.stock - self.iconData.numberOfBought > 0))
    self.item:SetActiveColor(self.iconData.numberOfBought < self.productConfig.stock)
end
