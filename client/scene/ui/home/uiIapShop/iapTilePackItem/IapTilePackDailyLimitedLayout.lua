--- @class IapTilePackDailyLimitedLayout : IapTilePackLayout
IapTilePackDailyLimitedLayout = Class(IapTilePackDailyLimitedLayout, IapTilePackLayout)

--- @param data LimitedProduct
function IapTilePackDailyLimitedLayout:InitData(data)
    --- @type LimitedProduct
    self.productConfig = data
    --- @type LimitedPackStatisticsInBound
    self.iconData = zg.playerData:GetIAP():GetLimitedPackStatisticsInBound(data.id)
end

function IapTilePackDailyLimitedLayout:FireTrackingEvent()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "daily_limited", self.packId)
end

function IapTilePackDailyLimitedLayout:SetPackIcon()
    self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconLimitedPack, self.packId)
    self.config.packIcon:SetNativeSize()
end

function IapTilePackDailyLimitedLayout:OnClickBuy()
    if self.iconData:GetNumberOfBought() < self.productConfig.stock then
        self:RequestBuy()
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("reach_limited_pack"))
    end
end

function IapTilePackDailyLimitedLayout:SetTextBuy()
    self.config.textPurchaseLimit.text = string.format("%s %s",
            LanguageUtils.LocalizeCommon("limited_packs"),
            UIUtils.SetColorString(UIUtils.white, string.format("%s/%s", self.productConfig.stock - self.iconData:GetNumberOfBought(), self.productConfig.stock)))

    self.item:EnableNotification(self.productConfig.isFree == true and (self.productConfig.stock - self.iconData:GetNumberOfBought() > 0))
    self.item:SetActiveColor(self.iconData:GetNumberOfBought() < self.productConfig.stock)
end