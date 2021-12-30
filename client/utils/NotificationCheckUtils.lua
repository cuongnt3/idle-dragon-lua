--- @class NotificationCheckUtils
NotificationCheckUtils = Class(NotificationCheckUtils)

--- @return {}
function NotificationCheckUtils.CheckAvailableRequestMethod(...)
    local dataMethods = {}
    local args = { ... }
    for i = 1, #args do
        if args[i].IsAvailableToRequest() then
            local playerDataMethod = args[i].GetPlayerDataMethod()
            dataMethods[#dataMethods + 1] = playerDataMethod
        end
    end
    return dataMethods
end

function NotificationCheckUtils.CheckNotificationGuild(callback)
    if ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.GUILD, false) == false then
        return callback(false)
    end
    local needRequest = NotificationCheckUtils.CheckAvailableRequestMethod(
            GuildBasicInfoInBound, GuildWarTimeInBound, GuildWarInBound)
    local onGuildDataLoaded = function()
        local playerData = zg.playerData
        --- @type GuildBasicInfoInBound
        local guildBasicInfoInBound = playerData:GetMethod(PlayerDataMethod.GUILD_BASIC_INFO)
        if guildBasicInfoInBound.isHaveGuild == true then
            local isNotifyGuild = guildBasicInfoInBound:CheckNotifyGuild()
            if isNotifyGuild == true then
                return callback(true)
            end
        end
        if guildBasicInfoInBound.guildInfo ~= nil then
            --- @type GuildWarTimeInBound
            local guildWarTimeInBound = playerData:GetMethod(PlayerDataMethod.GUILD_WAR_TIME)
            --- @type GuildWarInBound
            local guildWarInBound = playerData:GetMethod(PlayerDataMethod.GUILD_WAR)
            local currentPhase = guildWarTimeInBound:CurrentPhase()
            if currentPhase == GuildWarPhase.REGISTRATION then
                if guildWarInBound.registered == false then
                    return callback(true)
                end
            elseif currentPhase == GuildWarPhase.SETUP_DEFENDER then
                local selfRole = guildBasicInfoInBound.guildInfo.selfRole
                local guildWarConfig = ResourceMgr.GetGuildDataConfig():GetGuildWarDataConfig():GetGuildWarConfig()
                if selfRole ~= GuildRole.MEMBERGuildAreaWorldConfig
                        and guildWarInBound:CountSelectedForGuildWar() == 0
                        and guildWarInBound:CountParticipants() >= guildWarConfig.numberMemberJoin then
                    return callback(true)
                end
            elseif currentPhase == GuildWarPhase.BATTLE then
                if guildWarInBound:CountSelectedForGuildWar() > 0
                        and guildWarInBound.registered
                        and InventoryUtils.GetMoney(MoneyType.GUILD_WAR_STAMINA) > 0 then
                    return callback(true)
                end
            end
        end

        local notify = NotificationCheckUtils.ShopCheckNotification(PlayerDataMethod.GUILD_MARKET)
        callback(notify)
    end
    if #needRequest > 0 then
        PlayerDataRequest.RequestAndCallback(needRequest, function()
            onGuildDataLoaded()
        end)
    else
        onGuildDataLoaded()
    end
end

function NotificationCheckUtils.CheckNotificationDomains(callback)
    if ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.DOMAINS, false) == false then
        return callback(false)
    end
    local needRequest = NotificationCheckUtils.CheckAvailableRequestMethod(DomainInBound)
    local onDomainDataLoaded = function()
        local playerData = zg.playerData
        local domainInBound = playerData:GetDomainInBound()
        if domainInBound.isInCrew then
            if domainInBound:IsClearAllStages() then
                return callback(false)
            end
            local chatData = zg.playerData:GetChatData()
            chatData:CheckNotificationDomains()
            if chatData.isNotifyDomainTeam then
                return callback(true)
            end

            local isLeader = domainInBound.domainCrewInBound.leaderId == PlayerSettingData.playerId
            if isLeader then
                domainInBound:ValidateDomainApplication(function()
                    return callback(zg.playerData.domainData.listVerifyDomain:Count() > 0)
                end)
            else
                if domainInBound:IsInBattle() == false and domainInBound:IsReady() == false then
                    return callback(true)
                else
                    domainInBound:ValidateListInvitation(function()
                        return callback(zg.playerData.domainData.listInvitation:Count() > 0)
                    end)
                end
            end
        else
            local ticket = InventoryUtils.GetMoney(MoneyType.DOMAIN_CHALLENGE_STAMINA)
            return callback(ticket > 0)
        end
    end
    if #needRequest > 0 then
        PlayerDataRequest.RequestAndCallback(needRequest, function()
            onDomainDataLoaded()
        end)
    else
        onDomainDataLoaded()
    end
end

--- @return boolean
--- @param method PlayerDataMethod
function NotificationCheckUtils.ShopCheckNotification(method)
    --- @type ModeShopDataInBound
    local modeShopInbound = zg.playerData:GetMethod(method)

    if modeShopInbound == nil then
        --XDebug.Log("Mode Shop nil: " .. tostring(method))
        return false
    end
    --- @type MarketConfig
    local marketConfig
    if (method == PlayerDataMethod.MARKET) then
        marketConfig = ResourceMgr.GetBlackMarket()
    elseif method == PlayerDataMethod.ARENA_MARKET then
        marketConfig = ResourceMgr.GetArenaMarket()
    elseif method == PlayerDataMethod.ARENA_TEAM_MARKET then
        marketConfig = ResourceMgr.GetArenaTeamMarket()
    elseif method == PlayerDataMethod.GUILD_MARKET then
        marketConfig = ResourceMgr.GetGuildMarketConfig()
    end
    if marketConfig ~= nil then
        if modeShopInbound.level == marketConfig.maxLevel then
            --XDebug.Log("Max level: " .. tostring(marketConfig.maxLevel))
            return false
        end
        return modeShopInbound:GetNotification(marketConfig)
    else
        --XDebug.Log("Market Config is nil")
        return false
    end
    return true
end

function NotificationCheckUtils.DefenseModeNotificationCheck(callback)
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    local featureItemInBound = featureConfigInBound:GetFeatureConfigInBound(FeatureType.DEFENSE)
    if featureItemInBound.featureState ~= FeatureState.UNLOCK then
        callback(false)
        return
    end
    --- @type DefenseModeInbound
    local defenseModeInbound = zg.playerData:GetMethod(PlayerDataMethod.DEFENSE_MODE)
    if defenseModeInbound ~= nil then
        callback(defenseModeInbound:HasNotification())
    end
end

---@param object UnityEngine_GameObject
function NotificationCheckUtils.BoxNotificationCheck(object)
    local noti = false
    if EventInBound.IsEventOpening(EventTimeType.EVENT_XMAS) and InventoryUtils.GetMoney(MoneyType.EVENT_CHRISTMAS_BOX) then
        noti = true
    end
    if InventoryUtils.GetMoney(MoneyType.DOMAIN_CHEST_LEVEL_1) > 0
            or InventoryUtils.GetMoney(MoneyType.DOMAIN_CHEST_LEVEL_2) > 0
            or InventoryUtils.GetMoney(MoneyType.DOMAIN_CHEST_LEVEL_3) > 0
            or InventoryUtils.GetMoney(MoneyType.DOMAIN_CHEST_LEVEL_4) > 0
            or InventoryUtils.GetMoney(MoneyType.DOMAIN_CHEST_LEVEL_5) > 0 then
        noti = true
    end
    if object ~= nil then
        object:SetActive(noti)
    end
    return noti
end

---@param object UnityEngine_GameObject
function NotificationCheckUtils.CheckNotiTalent(object)
    local noti = false
    --- @type List
    local heroList = InventoryUtils.Get(ResourceType.Hero)
    ---@param v HeroResource
    for i, v in ipairs(heroList:GetItems()) do
        if v:IsUnlockTalent() then
            noti = true
            break
        end
    end
    if object ~= nil then
        object:SetActive(noti)
    end
    return noti
end

---@param object UnityEngine_GameObject
function NotificationCheckUtils.CheckNotiHeroLinking(object)
    local noti = false
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    local linkingItem = featureConfigInBound:GetFeatureConfigInBound(FeatureType.HERO_LINKING)
    if linkingItem.featureState == FeatureState.UNLOCK then
        --- @type HeroLinkingTierConfig
        local heroLinkingTierConfig = ResourceMgr.GetHeroLinkingTierConfig()
        ---@type HeroLinkingInBound
        local heroLinkingInBound = zg.playerData:GetMethod(PlayerDataMethod.HERO_LINKING)
        if heroLinkingInBound ~= nil then
            ---@param itemLinkingTierConfig ItemLinkingTierConfig
            for _, itemLinkingTierConfig in ipairs(heroLinkingTierConfig.listItemLinking:GetItems()) do
                ---@type BonusLinkingTierConfig
                local _, _, nextBonus = heroLinkingInBound:GetActiveLinking(itemLinkingTierConfig.id)
                for i = 1, itemLinkingTierConfig.listHero:Count() do
                    noti = heroLinkingInBound:IsNotificationLinkingSlot(itemLinkingTierConfig.id, i, nextBonus)
                    if noti == true then
                        break
                    end
                end
                if noti == true then
                    break
                end
            end
        end
        if object ~= nil then
            object:SetActive(noti)
        end
    end
    return noti
end

function NotificationCheckUtils.IsCanShowSoftTutCampaign()
    return (UIBaseView.IsActiveTutorial() == false) and (zg.playerData.remoteConfig.softTutCampaign == nil)
end

function NotificationCheckUtils.IsCanShowSoftTutTower()
    return (UIBaseView.IsActiveTutorial() == false) and (zg.playerData.remoteConfig.softTutTower == nil)
            and (ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.TOWER, false) == true)
end

function NotificationCheckUtils.IsCanShowSoftTutRegression()
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    local data = featureConfigInBound:GetFeatureConfigInBound(FeatureType.REGRESSION)
    return (UIBaseView.IsActiveTutorial() == false)
            and data.featureState == FeatureState.UNLOCK
            and (zg.playerData.remoteConfig.softTutRegression == nil)
            and (ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.REGRESSION, false) == true)
end