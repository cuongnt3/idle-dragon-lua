---@class EventTimeType
EventTimeType = {
    DUNGEON = 1,
    ARENA_TEAM = 2,
    ARENA = 3,
    GUILD_DUNGEON = 4,
    GUILD_WAR = 5,

    EVENT_SUMMON_QUEST = 6,
    EVENT_PROPHET_TREE_QUEST = 7,
    EVENT_ARENA_QUEST = 8,
    EVENT_CASINO_QUEST = 9,
    EVENT_TAVERN_QUEST = 10,
    EVENT_COLLECT_QUEST = 11,
    EVENT_EXCHANGE_QUEST = 12,

    EVENT_BUNDLE = 13,
    EVENT_HOT_DEAL = 14,

    EVENT_LOGIN = 15,

    EVENT_RELEASE_FESTIVAL = 16,

    EVENT_SALE_OFF = 17,

    EVENT_SPIN_QUEST = 18,
    EVENT_ARENA_RANKING = 19,
    EVENT_GUILD_QUEST = 20,

    EVENT_RATE_UP = 21,
    EVENT_MARKET = 22,
    EVENT_SERVER_OPEN = 23,

    EVENT_MID_AUTUMN = 24,
    EVENT_BLACK_FRIDAY = 25,
    EVENT_AUCTION = 26,

    EVENT_ARENA_PASS = 27,
    EVENT_DAILY_QUEST_PASS = 28,
    EVENT_HALLOWEEN = 29,
    EVENT_XMAS = 30,
    EVENT_NEW_YEAR = 31,
    EVENT_LUNAR_NEW_YEAR = 32,
    EVENT_VALENTINE = 33,
    EVENT_LUNAR_PATH = 34,

    EVENT_FACEBOOK_COMMUNITY = 50,
    EVENT_TWITTER_COMMUNITY = 51,
    EVENT_INSTAGRAM_COMMUNITY = 52,
    EVENT_REDDIT_COMMUNITY = 53,
    EVENT_DISCORD_COMMUNITY = 54,

    EVENT_NEW_HERO_QUEST = 35,
    EVENT_NEW_HERO_SPIN = 36,
    EVENT_NEW_HERO_LOGIN = 37,
    EVENT_NEW_HERO_SUMMON = 38,
    EVENT_NEW_HERO_BUNDLE = 39,
    EVENT_NEW_HERO_COLLECTION = 40,
    EVENT_MERGE_SERVER = 41,

    EVENT_EASTER_EGG = 42,
    EVENT_NEW_HERO_EXCHANGE = 43,
    EVENT_NEW_HERO_BOSS_CHALLENGE = 44,
    EVENT_NEW_HERO_BOSS_LEADER_BOARD = 45,
    EVENT_NEW_HERO_TREASURE = 46,
    EVENT_NEW_HERO_RATE_UP = 47,
    EVENT_NEW_HERO_SKIN_BUNDLE = 48,

    EVENT_BIRTHDAY = 55,
    EVENT_SKIN_BUNDLE = 56,
}

--- @class EventActionType
EventActionType = {
    MID_AUTUMN_SPECIAL_OFFER_PURCHASE = 0,
    MID_AUTUMN_EXCHANGE = 1,
    MID_AUTUMN_GEM_BOX_BUY = 2,

    HALLOWEEN_EXCHANGE = 10,
    HALLOWEEN_BUNDLE_PURCHASE = 11,

    BLACK_FRIDAY_CARD_PURCHASE = 20,
    BLACK_FRIDAY_GEM_PACK_BUY = 21,

    CHRISTMAS_EXCLUSIVE_OFFER_PURCHASE = 30,
    CHRISTMAS_RESOURCE_EXCHANGE = 31,

    NEW_YEAR_GEM_BOX_BUY = 40,
    NEW_YEAR_CARD_BUNDLE_PURCHASE = 41,

    LUNAR_PATH_SHOP_EXCHANGE = 50,
    LUNAR_PATH_BUNDLE_PURCHASE = 51,

    LUNAR_NEW_YEAR_ELITE_BUNDLE_PURCHASE = 52,
    LUNAR_NEW_YEAR_EXCHANGE = 53,
    LUNAR_NEW_YEAR_ELITE_SKIN_BUNDLE_PURCHASE = 54,

    VALENTINE_LOVE_CHALLENGE_BUNDLE_PURCHASE = 60,
    VALENTINE_ELITE_BUNDLE_PURCHASE = 61,
    VALENTINE_SKIN_BUNDLE_PURCHASE = 62,

    SERVER_MERGE_EXCHANGE = 70,
    SERVER_MERGE_LIMITED_BUNDLE = 71,

    EASTER_BUNNY_CARD_PURCHASE = 80,
    EASTER_LIMIT_OFFER_PURCHASE = 81,

    EASTER_QUEST_CLAIM = 84,

    BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE = 90,
    BIRTHDAY_EXCHANGE = 91,
}

EventTimeType.COMMUNITY_TYPE = 0

--- @return string
--- @param eventTimeType EventTimeType
function EventTimeType.GetKeyLocalize(eventTimeType, id)
    local key
    if eventTimeType == EventTimeType.EVENT_SUMMON_QUEST then
        key = "event_summon"
    elseif eventTimeType == EventTimeType.EVENT_PROPHET_TREE_QUEST then
        key = "event_prophet_tree"
    elseif eventTimeType == EventTimeType.EVENT_ARENA_QUEST then
        key = "event_arena"
    elseif eventTimeType == EventTimeType.EVENT_CASINO_QUEST then
        key = "event_wheel_of_fate"
    elseif eventTimeType == EventTimeType.EVENT_TAVERN_QUEST then
        key = "event_tavern"
    elseif eventTimeType == EventTimeType.EVENT_COLLECT_QUEST then
        key = "event_collection"
    elseif eventTimeType == EventTimeType.EVENT_EXCHANGE_QUEST then
        key = "event_exchange"
    elseif eventTimeType == EventTimeType.EVENT_BUNDLE then
        key = "event_bundle"
    elseif eventTimeType == EventTimeType.EVENT_HOT_DEAL then
        key = "event_hot_deal"
    elseif eventTimeType == EventTimeType.EVENT_LOGIN then
        key = "event_login"
    elseif eventTimeType == EventTimeType.EVENT_ARENA_RANKING then
        key = "event_arena_ranking"
    elseif eventTimeType == EventTimeType.EVENT_RELEASE_FESTIVAL then
        key = "event_release_festival"
    elseif eventTimeType == EventTimeType.EVENT_ARENA_PASS then
        key = "event_arena_pass"
    elseif eventTimeType == EventTimeType.EVENT_DAILY_QUEST_PASS then
        key = "event_daily_quest_pass"
    elseif eventTimeType == EventTimeType.EVENT_HALLOWEEN then
        key = "event_hallo_ween"
    elseif eventTimeType == EventTimeType.EVENT_XMAS then
        key = "event_xmas"
    elseif eventTimeType == EventTimeType.EVENT_NEW_YEAR then
        key = "event_new_year"
    else
        key = string.format("event_type_%s", eventTimeType)
    end
    if id ~= nil then
        key = string.format("%s_%s", key, id)
    end
    return key
end

function EventTimeType.GetLocalize(eventTimeType, id)
    return LanguageUtils.LocalizeCommon(EventTimeType.GetKeyLocalize(eventTimeType, id))
end

--- @return string
--- @param eventTimeType EventTimeType
function EventTimeType.GetInfoLocalize(eventTimeType, id)
    local key = string.format("%s_info", EventTimeType.GetKeyLocalize(eventTimeType, id))
    return LanguageUtils.LocalizeCommon(key)
end

--- @return boolean
--- @param eventTimeType EventTimeType
function EventTimeType.IsEventPopupQuest(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_SUMMON_QUEST
            or eventTimeType == EventTimeType.EVENT_PROPHET_TREE_QUEST
            or eventTimeType == EventTimeType.EVENT_ARENA_QUEST
            or eventTimeType == EventTimeType.EVENT_CASINO_QUEST
            or eventTimeType == EventTimeType.EVENT_TAVERN_QUEST
            or eventTimeType == EventTimeType.EVENT_COLLECT_QUEST
end

--- @return boolean
--- @param eventTimeType EventTimeType
function EventTimeType.IsEventPopupPurchase(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_BUNDLE
            or eventTimeType == EventTimeType.EVENT_HOT_DEAL
end

--- @return boolean
--- @param eventTimeType EventTimeType
function EventTimeType.IsEventPurchase(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_BUNDLE
            or eventTimeType == EventTimeType.EVENT_HOT_DEAL
            or eventTimeType == EventTimeType.EVENT_SALE_OFF
end

--- @return boolean
--- @param eventTimeType EventTimeType
function EventTimeType.IsEventPopup(eventTimeType)
    return EventTimeType.IsEventPopupQuest(eventTimeType)
            or EventTimeType.IsEventPopupPurchase(eventTimeType)
            or eventTimeType == EventTimeType.EVENT_LOGIN
            or eventTimeType == EventTimeType.EVENT_ARENA_RANKING
            or eventTimeType == EventTimeType.EVENT_RELEASE_FESTIVAL
            or eventTimeType == EventTimeType.EVENT_EXCHANGE_QUEST
            or eventTimeType == EventTimeType.EVENT_GUILD_QUEST
end

function EventTimeType.IsEventCommunity(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_FACEBOOK_COMMUNITY
            or eventTimeType == EventTimeType.EVENT_DISCORD_COMMUNITY
            or eventTimeType == EventTimeType.EVENT_INSTAGRAM_COMMUNITY
            or eventTimeType == EventTimeType.EVENT_REDDIT_COMMUNITY
            or eventTimeType == EventTimeType.EVENT_TWITTER_COMMUNITY
end

--- @return boolean
--- @param eventTimeType EventTimeType
function EventTimeType.IsEventIapShop(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_ARENA_PASS
            or eventTimeType == EventTimeType.EVENT_DAILY_QUEST_PASS
end

function EventTimeType.IsActiveInGame(eventTimeType)
    return eventTimeType ~= EventTimeType.EVENT_SPIN_QUEST
            and eventTimeType ~= EventTimeType.EVENT_HOT_DEAL
            and eventTimeType ~= EventTimeType.EVENT_RELEASE_FESTIVAL
end

function EventTimeType.IsEventNewHero(eventTimeType)
    return eventTimeType == EventTimeType.EVENT_NEW_HERO_QUEST
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_LOGIN
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_BUNDLE
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_COLLECTION
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_SPIN
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_EXCHANGE
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_BOSS_CHALLENGE
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_BOSS_LEADER_BOARD
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_TREASURE
            or eventTimeType == EventTimeType.EVENT_NEW_HERO_SKIN_BUNDLE
end

function EventTimeType.HasDataModel(eventTimeType)
    return eventTimeType ~= EventTimeType.DUNGEON
            and eventTimeType ~= EventTimeType.ARENA_TEAM
            and eventTimeType ~= EventTimeType.ARENA
            and eventTimeType ~= EventTimeType.GUILD_DUNGEON
            and eventTimeType ~= EventTimeType.GUILD_WAR
            and EventTimeType.IsEventCommunity(eventTimeType) == false
end