--- @class RemoteConfigData
RemoteConfigData = Class(RemoteConfigData)

--- @return void
function RemoteConfigData:Ctor()
    self.lastTimeShowEventLogin = nil
    self.lastSavedCreatedApplication = nil
    self.lastTimeUpdatedLog = nil
    --- @type number
    self.showedTrialMonthlyByStage = nil
    self.dungeonCheckInOpenSeason = nil
    self.dungeonCheckInShop = nil
    self.lastGuildWarSeasonCheckOut = nil
    self.arenaPreviousSeason = nil
    self.arenaTeamPreviousSeason = nil
    ---@type {time, listRecord}
    self.recordArena = nil
    ---@type {time, listRecord}
    self.recordArenaTeam = nil
    ---@type {season, listQuestId}
    self.serverOpen = nil
    ---@type {heroFragment, artifactFragment}
    self.fragment = nil
    self.rateTime = nil
    ---@type {battleId, seasonId}
    self.guildWarResult = nil
    --- @type number
    self.battleSpeedUpLevel = nil
    --- @type number
    self.showedFlashSaleLoginTime = nil
    --- @type number
    self.showedFirstPurchaseLoginTime = nil
    --- @type number
    self.showedStarterPackLoginTime = nil
    --- @type {}
    self.lastTimeReadChatChannel = nil
    --- @type boolean
    self.lastTimeOpenRateUp = nil
    --- @type {}
    self.lastTimeShowMasterBlackSmith = nil
    --- @type {}
    self.showedMasterBlackSmithLoginTime = nil

    --- @type number
    self.eventArenaPassEnd = nil
    --- @type number
    self.eventDailyQuestPassEnd = nil
    --- @type number
    self.eventMidAutumnEnd = nil
    ---@type number
    self.eventHalloweenEnd = nil
    ---@type number
    self.eventXmasEnd = nil
    ---@type number
    self.eventNewYearEnd = nil
    ---@type number
    self.eventBlackFridayEnd = nil
    ---@type number
    self.lastTimeDurationBlackFriday = nil
    --- @type boolean
    self.isTriggerX2 = nil
    --- @type boolean
    self.isTriggerX3 = nil
    ---@type number
    self.eventLunarNewYearEnd = nil
    ---@type number
    self.eventValentineEnd = nil
    ---@type number
    self.eventBirthdayEnd = nil

    --- @type boolean
    self.lastTimeCheckOutNewYearCard = nil
    --- @type number
    self.softTutCampaign = nil
    --- @type number
    self.softTutTower = nil
    --- @type number
    self.softTutFragment = nil
    --- @type number
    self.softTutRegression = nil

    self.checkCommunityFacebook = nil
    self.checkCommunityTwitter = nil
    self.checkCommunityInstagram = nil
    self.checkCommunityReddit = nil
    self.checkCommunityDiscord = nil

    self.eventMergeServerEnd = nil
    self.eventEasterEggEnd = nil

    --- @type number
    self.lastTimeChallengeDomain = nil
end