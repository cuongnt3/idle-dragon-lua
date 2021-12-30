require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyLimitedLayout"

--- @class IapTilePackEliteBundleLayout : IapTilePackDailyLimitedLayout
IapTilePackEliteBundleLayout = Class(IapTilePackEliteBundleLayout, IapTilePackDailyLimitedLayout)

--- @param data LimitedProduct
function IapTilePackEliteBundleLayout:InitData(data)
    --- @type LimitedProduct
    self.productConfig = data
    ---@type EventNewYearModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LUNAR_NEW_YEAR)
    --- @type LimitedPackStatisticsInBound
    self.iconData = eventModel:GetLimitedPackStatisticsInBound(self.productConfig.id)
end

function IapTilePackEliteBundleLayout:FireTrackingEvent()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "elite_bundle", self.packId)
end

function IapTilePackEliteBundleLayout:SetPackIcon()
    self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconLimitedPackEliteBundle, self.packId)
    self.config.packIcon:SetNativeSize()
end