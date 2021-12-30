--- @class UIInventoryMoneyView
UIInventoryMoneyView = Class(UIInventoryMoneyView)

--- @return void
--- @param transform UnityEngine_Transform
--- @param view UIInventoryView
function UIInventoryMoneyView:Ctor(view, transform, model)
    --- @type UIInventoryView
    self.view = view
    ---@type UIInventoryModel
    self.model = model
    ---@type List --<id>
    self.itemDic = List()

    ---@type List --<id>
    self.quickBattleTicket = List()

    -- UI
    ---@type UIInventoryMoneyConfig
    ---@type UIInventoryMoneyConfig
    self.config = UIBaseConfig(transform)

    --- @param obj RootIconView
    --- @param index number
    local onCreateItem = function(obj, index)
        if index < self.itemDic:Count() then
            local type = ResourceType.Money
            local id = self.itemDic:Get(index + 1)
            local number = InventoryUtils.Get(type, id)
            obj:SetIconData(ItemIconData.CreateInstance(type, id, number))
            if id == MoneyType.EVENT_CHRISTMAS_BOX then
                obj:RemoveAllListeners()
                obj:ActiveNotification(true)
                obj:AddListener(function()
                    self:UseBoxXmas(number)
                end)
            elseif ClientConfigUtils.IsDomainChestMoney(id) then
                obj:RemoveAllListeners()
                obj:ActiveNotification(true)
                obj:AddListener(function()
                    self:UseDomainChest(id, number)
                end)
            else
                obj:RegisterShowInfo()
            end
        else
            ---@type HeroFood
            local heroFood = zg.playerData:GetMethod(PlayerDataMethod.HERO_EVOLVE_FOOD).listHeroFood
                               :Get(index - self.itemDic:Count() + 1)
            obj:SetIconData(ItemIconData.CreateBuyHeroFood(heroFood.heroFoodType, heroFood.star, heroFood.number))
            obj:RegisterShowInfo()
        end
    end
    ---@type UILoopScroll
    self.uiScroll = UILoopScroll(self.config.scroll, UIPoolType.RootIconView, onCreateItem, onCreateItem)
end

--- @return void
function UIInventoryMoneyView:Show()
    local currencyCollectionConfig = ResourceMgr.GetCurrencyCollectionConfig()
    local listIgnorBuyEvent = ResourceMgr.GetCurrencyEventConfig():GetListCurrencyIgnor()
    self.itemDic:Clear()
    ---@type List
    local moneyList = InventoryUtils.GetListResource(ResourceType.Money)
    for _, v in ipairs(moneyList:GetItems()) do
        if currencyCollectionConfig:IsContainMoneyType(v) and not listIgnorBuyEvent:IsContainValue(v) then
            self.itemDic:Add(v)
        end
    end

    local itemCount = self.itemDic:Count() + zg.playerData:GetMethod(PlayerDataMethod.HERO_EVOLVE_FOOD).listHeroFood:Count()
    self.uiScroll:Resize(itemCount)
    self.view:EnableEmpty(itemCount == 0)
end

--- @return void
function UIInventoryMoneyView:UseQuickBattle(id, number)
    local localizeUse = LanguageUtils.LocalizeCommon("use")
    local buttonUse = { ["name"] = localizeUse, ["callback"] = function()
        ---@type PopupUseItemData
        local data = {}
        data.textButton = localizeUse
        data.minInput = 1
        data.maxInput = number
        data.createItem = function(transform)
            ---@type IconView
            local itemView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.QuickBattleTicketView, transform)
            itemView:SetIconData(ItemIconData.CreateInstance(ResourceType.CampaignQuickBattleTicket, id, nil))
            return itemView
        end
        data.callbackUse = function(number)
            self:RequestQuickBattleTicket(id, number)
        end
        PopupMgr.HidePopup(UIPopupName.UIItemPreview)
        PopupMgr.ShowPopup(UIPopupName.UIPopupUseItem, data)
    end }
    PopupMgr.ShowPopup(UIPopupName.UIItemPreview, { ["data1"] = { ["type"] = ResourceType.CampaignQuickBattleTicket, ["id"] = id, ["button2"] = buttonUse } })
end

--- @return void
function UIInventoryMoneyView:RequestQuickBattleTicket(id, number)
    ---@type List --<RewardInBound>
    local listReward = nil
    --- @param buffer UnifiedNetwork_ByteBuf
    local onBufferReading = function(buffer)
        listReward = NetworkUtils.GetRewardInBoundList(buffer)
    end

    local onSuccess = function()
        PopupMgr.HidePopup(UIPopupName.UIPopupUseItem)
        InventoryUtils.Sub(ResourceType.CampaignQuickBattleTicket, id, number)
        ---@param v RewardInBound
        for _, v in pairs(listReward:GetItems()) do
            v:AddToInventory()
        end
        self:Show()
        PopupUtils.ShowRewardList(RewardInBound.GetItemIconDataList(listReward))
        ClientConfigUtils.CheckLevelUpAndUnlockFeature()
    end
    NetworkUtils.RequestAndCallback(OpCode.CAMPAIGN_QUICK_BATTLE_TICKET_USE,
            UnknownOutBound.CreateInstance(PutMethod.Int, id, PutMethod.Short, number),
            onSuccess, SmartPoolUtils.LogicCodeNotification, onBufferReading)
end

--- @return void
function UIInventoryMoneyView:UseBoxXmas(number)
    local localizeUse = LanguageUtils.LocalizeCommon("use")
    local buttonUse = { ["name"] = localizeUse, ["callback"] = function()
        ---@type PopupUseItemData
        local data = {}
        data.title = LanguageUtils.LocalizeMoneyType(MoneyType.EVENT_CHRISTMAS_BOX)
        data.textButton = localizeUse
        data.minInput = 1
        data.maxInput = number
        data.createItem = function(transform)
            ---@type IconView
            local itemView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyIconView, transform)
            itemView:SetIconData(ItemIconData.CreateInstance(ResourceType.Money, MoneyType.EVENT_CHRISTMAS_BOX, nil))
            return itemView
        end
        data.callbackUse = function(number)
            self:RequestBoxXmas(number)
        end
        PopupMgr.HidePopup(UIPopupName.UIItemPreview)
        PopupMgr.ShowPopup(UIPopupName.UIPopupUseItem, data)
    end }
    PopupMgr.ShowPopup(UIPopupName.UIItemPreview, { ["data1"] = { ["type"] = ResourceType.Money, ["id"] = MoneyType.EVENT_CHRISTMAS_BOX, ["button2"] = buttonUse } })
end

--- @return void
function UIInventoryMoneyView:RequestBoxXmas(number)
    ---@type List --<RewardInBound>
    local listReward = nil
    --- @param buffer UnifiedNetwork_ByteBuf
    local onBufferReading = function(buffer)
        listReward = NetworkUtils.GetRewardInBoundList(buffer)
    end

    local onSuccess = function()
        PopupMgr.HidePopup(UIPopupName.UIPopupUseItem)
        InventoryUtils.Sub(ResourceType.Money, MoneyType.EVENT_CHRISTMAS_BOX, number)
        ---@param v RewardInBound
        for _, v in pairs(listReward:GetItems()) do
            v:AddToInventory()
        end
        self:Show()
        PopupUtils.ShowRewardList(RewardInBound.GetItemIconDataList(listReward))
    end
    NetworkUtils.RequestAndCallback(OpCode.EVENT_CHRISTMAS_BOX_OPEN,
            UnknownOutBound.CreateInstance(PutMethod.Int, number),
            onSuccess, SmartPoolUtils.LogicCodeNotification, onBufferReading)
end

--- @return void
function UIInventoryMoneyView:Hide()
    self.uiScroll:Hide()
end

--- @return void
function UIInventoryMoneyView:UseDomainChest(moneyType, number)
    local localizeUse = LanguageUtils.LocalizeCommon("use")
    local buttonUse = { ["name"] = localizeUse, ["callback"] = function()
        ---@type PopupUseItemData
        local data = {}
        data.title = LanguageUtils.LocalizeMoneyType(moneyType)
        data.textButton = localizeUse
        data.minInput = 1
        data.maxInput = number
        data.createItem = function(transform)
            ---@type IconView
            local itemView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyIconView, transform)
            itemView:SetIconData(ItemIconData.CreateInstance(ResourceType.Money, moneyType, nil))
            return itemView
        end
        data.callbackUse = function(number)
            self:RequestBoxDomainChest(moneyType, number)
        end
        PopupMgr.HidePopup(UIPopupName.UIItemPreview)
        PopupMgr.ShowPopup(UIPopupName.UIPopupUseItem, data)
    end }
    PopupMgr.ShowPopup(UIPopupName.UIItemPreview, { ["data1"] = { ["type"] = ResourceType.Money, ["id"] = moneyType, ["button2"] = buttonUse } })
end

--- @return void
function UIInventoryMoneyView:RequestBoxDomainChest(moneyType, number)
    ---@type List --<RewardInBound>
    local listReward = nil
    --- @param buffer UnifiedNetwork_ByteBuf
    local onBufferReading = function(buffer)
        listReward = NetworkUtils.GetRewardInBoundList(buffer)
    end

    local onSuccess = function()
        PopupMgr.HidePopup(UIPopupName.UIPopupUseItem)
        InventoryUtils.Sub(ResourceType.Money, moneyType, number)
        ---@param v RewardInBound
        for _, v in pairs(listReward:GetItems()) do
            v:AddToInventory()
        end
        self:Show()
        PopupUtils.ShowRewardList(RewardInBound.GetItemIconDataList(listReward))
    end
    NetworkUtils.RequestAndCallback(OpCode.DOMAINS_OPEN_CHEST,
            UnknownOutBound.CreateInstance(PutMethod.Int, moneyType, PutMethod.Int, number),
            onSuccess, SmartPoolUtils.LogicCodeNotification, onBufferReading)
end