require "lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackDailyLimitedLayout"

--- @class IapTilePackValentineBundleLayout : IapTilePackDailyLimitedLayout
IapTilePackValentineBundleLayout = Class(IapTilePackValentineBundleLayout, IapTilePackDailyLimitedLayout)

--- @param data LimitedProduct
function IapTilePackValentineBundleLayout:InitData(data)
    --- @type LimitedProduct
    self.productConfig = data
    ---@type EventNewYearModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_VALENTINE)
    --- @type LimitedPackStatisticsInBound
    self.iconData = eventModel:GetLimitedPackStatisticsInBound(self.productConfig.id)
end

function IapTilePackValentineBundleLayout:FireTrackingEvent()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "valentine_bundle", self.packId)
end

function IapTilePackValentineBundleLayout:SetPackIcon()
    self.config.packIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconLimitedPackValentineBundle, self.packId)
    self.config.packIcon:SetNativeSize()
end