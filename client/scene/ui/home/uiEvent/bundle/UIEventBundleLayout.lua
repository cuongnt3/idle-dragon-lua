--- @class UIEventBundleLayout : UIEventLayout
UIEventBundleLayout = Class(UIEventBundleLayout, UIEventLayout)

local cellSize = U_Vector2(494, 389)
local spacing = U_Vector2(0, 10)

--- @param eventPopupModel EventPopupQuestModel
function UIEventBundleLayout:OnShow(eventPopupModel)
    --- @type EventPopupQuestModel
    self.eventPopupPurchaseModel = eventPopupModel
    UIEventLayout.OnShow(self, eventPopupModel)
end

function UIEventBundleLayout:SetUpLayout()
    UIEventLayout.SetUpLayout(self)
    self.view:SetGridContentSize(cellSize, spacing, 3)
    self:InitScrollContentBundle()
    local count = self.eventPopupPurchaseModel:GetAllData():Count()
    self:ResizeLoopScrollContent(count)
    self.view.scrollLoopContent:ScrollToCell(count - 1)
end

function UIEventBundleLayout:InitScrollContentBundle()
    --- @param obj IapTilePackItem
    --- @param index number
    local onCreateItem = function(obj, index)
        local dataIndex = index + 1
        --- @type PurchasedPackInBound
        local purchasedPack = self.eventPopupPurchaseModel:GetDataByIndexOfList(dataIndex)
        obj:SetViewIconData(PackViewType.EVENT_BUNDLE, purchasedPack, function()
            RxMgr.notificationEventPopup:Next(self.eventTimeType)
        end)
    end
    self.view.scrollLoopContent = UILoopScroll(self.config.VerticalScrollContent, UIPoolType.IapTilePackItem, onCreateItem)
end

function UIEventBundleLayout:OnHide()
    UIEventLayout.OnHide(self)
    UIEventLayout.EnableLoopScrollContent(self, false)
end