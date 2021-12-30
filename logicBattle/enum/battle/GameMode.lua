--- @class GameMode
GameMode = {
    TEST = 0,
    CAMPAIGN = 1,
    TOWER = 2,
    RAID = 3,
    DUNGEON = 4,
    FRIEND_BATTLE = 5,
    ARENA = 6,
    GUILD_SIEGE = 7,
    GUILD_WAR = 8,
    UNUSED_1 = 9, -- should be replaced by real value
    GUILD_BOSS = 10,
    GUILD_DUNGEON = 11,
    DEFENSE_MODE = 12,
    ARENA_TEAM = 13,
    DOMAINS = 14,

    DEFENSE_MODE_RECORD = 112,
    ARENA_TEAM_RECORD = 113,
    DOMAINS_RECORD = 114,

    -- event
    EVENT_CHRISTMAS = 20,
    EVENT_LUNAR_NEW_YEAR_GUILD_BOSS = 21,
    EVENT_VALENTINE = 22,
    EVENT_NEW_HERO_BOSS = 23,

    EVENT_NEW_HERO = 996,
    MAIN_AREA = 997,
    OUT_GAME_LONG_TIME = 998,
    DOWNLOAD = 999,
    CHECK_DATA = 1000,
}

return GameMode