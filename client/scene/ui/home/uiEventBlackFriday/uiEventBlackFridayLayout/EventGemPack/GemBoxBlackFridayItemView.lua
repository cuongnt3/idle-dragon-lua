--- @class GemBoxBlackFridayItemView : GemBoxMidAutumnItemView
GemBoxBlackFridayItemView = Class(GemBoxBlackFridayItemView, GemBoxMidAutumnItemView)

function GemBoxBlackFridayItemView:Ctor()
    GemBoxMidAutumnItemView.Ctor(self)
end

function GemBoxBlackFridayItemView:SetPrefabName()
    self.prefabName = 'item_gem_box_black_friday'
    self.uiPoolType = UIPoolType.GemBoxMidAutumnItemView
end

function GemBoxBlackFridayItemView:OnClickExchange()
    if self.exchangeData.limit < 0 or self.numberExchange < self.exchangeData.limit then
        local canExchange = InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, self.exchangeData.itemIconData.itemId, self.exchangeData.itemIconData.quantity))
        if canExchange then
            PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("are_you_sure"), nil, function()
                NetworkUtils.RequestAndCallback(OpCode.EVENT_BLACK_FRIDAY_GEM_PACK_BUY,
                        UnknownOutBound.CreateInstance(PutMethod.Int, self.exchangeData.id),
                        function ()
                            self.exchangeData.itemIconData:SubToInventory()
                            PopupUtils.ClaimAndShowItemList(self.exchangeData.listRewardItem)
                            self.numberExchange = self.numberExchange + 1
                            self:UpdateLimit()
                            if self.callbackExchange ~= nil then
                                self.callbackExchange(1)
                            end
                        end , SmartPoolUtils.LogicCodeNotification, nil, true, true)
            end)
        end
    else
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("out_of_turn"))
    end
end
return GemBoxBlackFridayItemView