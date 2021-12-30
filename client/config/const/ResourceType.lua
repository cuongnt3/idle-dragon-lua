--- @class ResourceType
ResourceType = {
    --- inventory
    Hero = 1,
    Money = 2,
    ItemEquip = 3,
    ItemArtifact = 4,
    ItemStone = 5,
    ItemFragment = 6,
    HeroFragment = 7,
    SummonerExp = 8,
    DungeonItemPassiveBuff = 10,
    DungeonItemActiveBuff = 9,
    Avatar = 11,
    AvatarFrame = 12,
    EvolveFoodMaterial = 13,
    Skin = 14,
    SkinFragment = 15,
    SubscriptionPack = 16,
    CampaignQuickBattleTicket = 17,
    GROWTH_PACK = 18,
    EVENT_LUNAR_NEW_YEAR_WISH = 19,
    Talent = 20,
}

--- @class MoneyType
MoneyType = {
    Random = -1,
    GOLD = 0,
    GEM = 1,
    VIP_POINT = 2,

    -- For leveling up, evolving hero
    MAGIC_POTION = 10,
    ANCIENT_POTION = 11,
    AWAKEN_BOOK = 12,

    -- Gain when disassembling hero in Altar
    HERO_SHARD = 20,

    REGRESSION_CURRENCY = 25,

    -- Casino
    CASINO_BASIC_CHIP = 30,
    CASINO_PREMIUM_CHIP = 31,
    CASINO_POINT = 32,

    -- Arena
    ARENA_TICKET = 40,
    ARENA_COIN = 41,
    ARENA_FREE_CHALLENGE_TURN = 42,

    ARENA_TEAM_TICKET = 45,
    ARENA_TEAM_COIN = 46,

    -- Summon
    SUMMON_BASIC_SCROLL = 50,
    SUMMON_HEROIC_SCROLL = 51,
    SUMMON_POINT = 52, -- accumulates when summon by scroll

    -- Prophet tree
    PROPHET_ORB = 60,
    PROPHET_WOOD = 61,

    -- Friend
    FRIEND_POINT = 70,
    FRIEND_STAMINA = 71,

    -- Raid
    RAID_GOLD_TURN = 75,
    RAID_MAGIC_POTION_TURN = 76,
    RAID_HERO_FRAGMENT_TURN = 77,

    -- Dust
    STONE_DUST = 80, -- for upgrading and converting stone

    -- Tower
    TOWER_STAMINA = 85,

    -- Tavern
    QUEST_BASIC_SCROLL = 90, -- for obtaining a low-level quest
    QUEST_PREMIUM_SCROLL = 91, -- for obtaining a high-level quest

    -- Mastery
    MASTERY_POINT = 100, -- for upgrading mastery

    -- Summoner
    SUMMONER_ANCIENT_BOOK = 110, -- for evolving summoner

    DOMAIN_CHALLENGE_STAMINA = 112,
    DOMAIN_MARKET_COIN = 113,

    DOMAIN_CHEST_LEVEL_1 = 115,
    DOMAIN_CHEST_LEVEL_2 = 116,
    DOMAIN_CHEST_LEVEL_3 = 117,
    DOMAIN_CHEST_LEVEL_4 = 118,
    DOMAIN_CHEST_LEVEL_5 = 119,

    -- Guild
    GUILD_BASIC_COIN = 120,
    GUILD_PREMIUM_COIN = 121,
    GUILD_BOSS_STAMINA = 122,
    GUILD_DUNGEON_STAMINA = 123,
    GUILD_WAR_STAMINA = 124,

    -- Event guild quest
    EVENT_GUILD_QUEST_APPLE = 130,
    EVENT_GUILD_QUEST_PEAR = 131,

    EVENT_SERVER_OPEN_POINT = 135,
    UNION_POINT = 136,

    -- Event shop
    TIER_1_SOUL = 140,
    TIER_2_SOUL = 141,
    TIER_3_SOUL = 142,

    ARENA_MARKET_UPGRADE_COIN = 150,
    GUILD_MARKET_UPGRADE_COIN = 151,
    BLACK_MARKET_UPGRADE_COIN = 152,
    ALTAR_MARKET_UPGRADE_COIN = 153,
    ARENA_TEAM_MARKET_UPGRADE_COIN = 154,

    EVENT_RATE_UP_SUMMON_POINT = 160,
    EVENT_NEW_HERO_ROSE = 165,
    EVENT_NEW_HERO_STAR = 166,
    EVENT_NEW_HERO_ELUNE_BLADE = 167,
    EVENT_NEW_HERO_TREASURE_COMPASS = 168,

    -- raise hero
    RAISED_HERO_UNLOCK_SLOT_CURRENCY = 170,


    -- event mid autumn
    EVENT_MID_AUTUMN_LANTERN = 180,
    EVENT_MID_AUTUMN_MOON_CAKE = 181,

    -- event pass
    EVENT_ARENA_PASS_POINT = 190,
    EVENT_DAILY_QUEST_PASS_POINT = 191,

    -- Defense mode
    DEFENSE_MODE_WATER_UPGRADE_POINT = 200,
    DEFENSE_MODE_FIRE_UPGRADE_POINT = 201,
    DEFENSE_MODE_ABYSS_UPGRADE_POINT = 202,
    DEFENSE_MODE_NATURE_UPGRADE_POINT = 203,
    DEFENSE_MODE_DARK_UPGRADE_POINT = 204,
    DEFENSE_MODE_LIGHT_UPGRADE_POINT = 205,
    DEFENSE_MODE_DREAM_UPGRADE_POINT = 206,
    DEFENSE_MODE_CHAOS_UPGRADE_POINT = 207,
    DEFENSE_MODE_UNBORN_UPGRADE_POINT = 208,
    DEFENSE_MODE_LIBRARY_UPGRADE_POINT = 209,


    -- Event Halloween
    EVENT_HALLOWEEN_DICE = 210,
    EVENT_HALLOWEEN_PUMPKIN = 211,

    EVENT_CHRISTMAS_CANDY_BAR = 220,
    EVENT_CHRISTMAS_BOX = 221,
    EVENT_CHRISTMAS_STAMINA = 222,

    EVENT_BIRTHDAY_WHEEL = 225,

    EVENT_NEW_YEAR_LOTTERY_TICKET = 230,

    EVENT_EASTER_SILVER_EGG = 235,
    EVENT_EASTER_YELLOW_EGG = 236,
    EVENT_EASTER_RAINBOW_EGG = 237,
    EVENT_EASTER_YELLOW_HAMMER = 238,
    EVENT_EASTER_RAINBOW_HAMMER = 239,

    EVENT_LUNAR_NEW_YEAR_DICE = 240,
    EVENT_LUNAR_NEW_FLAG = 241,
    EVENT_LUNAR_NEW_GUILD_POINT = 242,
    EVENT_LUNAR_NEW_YEAR_ENVELOPE = 243,
    EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET = 244,
    EVENT_LUNAR_NEW_YEAR_CHALLENGE_STAMINA = 245,
    EVENT_LUNAR_NEW_YEAR_SUMMON_POINT = 246,

    -- event valentine
    EVENT_VALENTINE_LUCKY_COIN = 250,
    EVENT_VALENTINE_CHALLENGE_STAMINA = 251,
}

--- @class EquipmentType
EquipmentType = {
    Weapon = 1,
    Armor = 2,
    Helm = 3,
    Accessory = 4,
}

--- @class SlotEquipmentType
SlotEquipmentType = {
    Weapon = 1,
    Armor = 2,
    Helm = 3,
    Accessory = 4,
    Artifact = 5,
    Stone = 6,
    Skin = 7,
    Talent = 10,
}

--- @class CasinoType
CasinoType = {
    Basic = 0,
    Premium = 1,
}

--- @class TavernQuestState
TavernQuestState = {
    WAITING = 0,
    DOING = 1,
    DONE = 2,
}

--- @class QuestState
QuestState = {
    INITIAL = 0,
    LOCKED = 1,
    LOCKED_NOT_CALCULATED = 2,
    DOING = 3,
    DONE_REWARD_NOT_CLAIM = 4,
    COMPLETED = 5,
    HIDDEN = 6,
}

--- @class SortTypeHero
SortTypeHero = {
    LEVEL = 1,
    STAR = 2,
    POWER = 3,
}

--- @class GraphicQualityType
GraphicQualityType = {
    LOW = 1,
    MEDIUM = 2,
    HIGH = 3,
}

---@class RaidModeType
RaidModeType = {
    GOLD = 1,
    MAGIC_POTION = 2,
    HERO_FRAGMENT = 3,
}

---@class RewardState
RewardState = {
    NOT_AVAILABLE_TO_CLAIM = 0,
    AVAILABLE_TO_CLAIM = 1,
    CLAIMED = 2,
}

---@class SenderType
SenderType = {
    PLAYER = 0,
    SYSTEM = 1,
    ADMIN = 2,
    MODERATOR = 3,
}

---@class MailState
MailState = {
    NEW = 0,
    OPENED = 1,
    REWARD_RECEIVED = 2,
}

---@class EmailState
EmailState = {
    NOT_EXISTED = 0,
    VERIFYING = 1,
    VERIFIED = 2,
}

---@class PasswordResetState
PasswordResetState = {
    INITIAL = 0,
    VERIFYING = 1,
}

---@class ServerNotificationType
ServerNotificationType = {
    MAIL = 0,
    FRIEND_ADD = 1,
    FRIEND_DELETE = 2,
    FRIEND_REQUEST = 3,
    FRIEND_SEND_POINT = 4,
    FRIEND_BOSS_CHANGED = 5,
    QUEST_UPDATED = 6,
    QUEST_COMPLETED = 7,
    IAP_UPDATED = 8,
    GUILD_MEMBER_ADDED = 9,
    GUILD_MEMBER_KICKED = 10,
    EVENT_UPDATED = 11,
    AVATAR_UPDATED = 12,
    ACHIEVEMENT_UPDATED = 13,
    ACHIEVEMENT_COMPLETED = 14,
    ARENA_BE_ATTACKED = 15,
    EVENT_COMPLETED = 16,
    EVENT_GUILD_QUEST_DONATE = 17,
    GUILD_WAR_REGISTERED = 18,
    RAISED_HERO_PENTAGRAM_UPDATE = 19,
    SUNGAME_PURCHASE = 20,
    LINKING_SUPPORT_HERO_CHANGE = 21,
    FEATURE_UPDATED = 22,
    ARENA_TEAM_BE_ATTACKED = 23,
    COMEBACK_DATA_UPDATED = 24,

    DOMAINS_CREW_UPDATED = 25,
    DOMAINS_CREW_DISBANDED = 26,
    DOMAINS_CREW_MEMBER_ADDED = 27,
    DOMAINS_CREW_MEMBER_KICKED = 28,

    DOMAINS_CREW_CHALLENGE_START = 29,
    DOMAINS_CREW_CHALLENGE_UPDATED = 30,
    DOMAINS_CREW_MEMBER_READY_UPDATED = 31,
    DOMAINS_CREW_APPLICATION_UPDATED = 32,
    DOMAINS_CREW_INVITATION_UPDATED = 33,

    EVENT_ADDED = 102,
}

---@class FeatureType
FeatureType = {
    CAMPAIGN = 1,
    SUMMON = 2,
    ALTAR = 3,
    BLACK_SMITH = 4,
    TOWER = 5,
    BLACK_MARKET = 6,
    TAVERN = 7,
    PROPHET_TREE = 8,
    DUNGEON = 9,
    GUILD = 10,
    CASINO = 11,
    ARENA = 12,
    HAND_OF_MIDAS = 13,
    INVENTORY = 14,
    SUMMONER = 15,
    MASTERY = 16,
    FRIENDS = 17,
    RAID = 18,
    HERO_LIST = 19,
    RAISE_LEVEL = 20,
    DEFENSE = 21,
    HERO_LINKING = 22,
    ARENA_TEAM = 23,
    REGRESSION = 24,
    EVOLVE_MAX_STAR = 25,
    DOMAINS = 26,

    MAIL = 100,
    GUILD_DUNGEON = 101,
    GUILD_BOSS = 102,
}

---@class MinorFeatureType
MinorFeatureType = {
    CASINO_MULTIPLE_SPIN = 1,
    CASINO_PREMIUM_SPIN = 2,
    BATTLE_SPEED_UP = 3,
    BATTLE_SKIP = 4,
    SUMMON_ACCUMULATE = 5,
    CAMPAIGN_AUTO_TRAIN = 6,
    CAMPAIGN_QUICK_BATTLE = 7,
    BATTLE_SKIP_PRE = 8,
    BATTLE_SKIP_MIDDLE = 9,
    BATTLE_SPEED_UP_2 = 10,
}

---@class HeroFoodType
HeroFoodType = {
    MOON = 0,
    SUN = 1,
    WATER = 11,
    FIRE = 12,
    ABYSS = 13,
    NATURE = 14,
    LIGHT = 15,
    DARK = 16,
}

---@class TutorialFocus
TutorialFocus = {
    DRAG = 1,
    FOCUS = 2,
    FOCUS_CLICK = 3,
    AUTO_NEXT = 4,
    TAP_TO_CLICK = 5,
}

---@class TutorialStep
TutorialStep = {
    SUMMON_CLICK = 1,
    BASIC_SUMMON_INFO = 2,
    HEROIC_SUMMON_INFO = 3,
    FRIEND_SUMMON_INFO = 4,
    FREE_BASIC_SUMMON_CLICK = 5,
    FREE_HEROIC_SUMMON_CLICK = 6,
    BACK_SUMMON_CLICK = 7,
    CAMPAIGN_CLICK = 8,
    CAMPAIGN_BATTLE_CLICK = 9,
    CAMPAIGN_IDLE_REWARD_CLICK = 10,
    BACK_SUMMON_RESULT_CLICK = 11,
    FORMATION_SELECT_HERO_1 = 12,
    FORMATION_SELECT_HERO_2 = 13,
    FORMATION_BATTLE_CLICK = 14,
    NEXT_STAGE = 15,
    POSITION_2 = 16,
    POSITION_3 = 17,
    FORGE_EQUIPMENT = 18,
    BLACK_SMITH_WEAPON = 19,
    BLACK_SMITH_ARMOR = 20,
    BLACK_SMITH_HELMET = 21,
    BLACK_SMITH_RING = 22,
    FORGE_CLICK = 23,
    BACK_BLACK_SMITH = 24,
    CLOSE_POPUP_REWARD = 25,
    BLACK_MARKET_CLICK = 26,
    BUY_HEROIC_SCROLL = 27,
    CLICK_NOTIFICATION_OPTION_1 = 28,
    CLICK_NOTIFICATION_OPTION_2 = 29,
    BACK_BLACK_MARKET = 30,
    CONTINUE_SUMMON = 31,
    CLICK_HERO_COLLECTION = 32,
    SELECT_HERO_IN_COLLECTION = 33,
    SELECT_TAB_EQUIP = 34,
    CLICK_AUTO_EQUIP = 35,
    BACK_HERO_INFO = 36,
    BACK_HERO_COLLECTION = 37,
    BATTLE_CLOSE = 38,
    STAGE10_INFO = 39,
    CLICK_TRAINING = 40,
    SELECT_HERO_TRAINING_1 = 41,
    SELECT_HERO_TRAINING_2 = 42,
    SAVE_TRAINING = 43,
    CLICK_LEVEL_UP_HERO = 44,
    BACK_CAMPAIGN = 45,
    FORMATION_DRAG_HERO = 46,
    CLOSE_AUTO_TEAM = 47,
    CLICK_RENAME = 48,
    OK_RENAME = 49,
    CLICK_LEVEL_UP_HERO_BACK = 50,
    TRAINING_INFO = 51,
    CLICK_QUEST = 52,
    CLICK_QUEST_TREE = 53,
    CLICK_MAIN_ACTION = 54,
    CLICK_QUEST_1 = 55,
    CLICK_GO = 56,
    CLICK_QUEST_COMPLETE = 57,
    CLICK_INVENTORY = 58,
    CLICK_TAB_FRAGMENT = 59,
    CLICK_HERO_FRAGMENT = 60,
    CLICK_SUMMON_HERO_FRAGMENT = 61,
    CLICK_SUMMONER = 62,
    CLICK_TAB_EVOLVE = 63,
    CLICK_EVOLVE = 64,
    SUMMONER_CLASS_1 = 65,
    SUMMONER_CLASS_2 = 66,
    SUMMONER_CLASS_3 = 67,
    SUMMONER_CLASS_4 = 68,
    SUMMONER_CLASS_5 = 69,
    CLICK_SWITCH_SUMMONER = 70,
    SWITCH_SUMMONER = 71,
    CLICK_SUMMON_ITEM = 72,
    CLICK_BACK_MAP = 73,
    SUMMONER_POWER = 74,
    SUMMONER_SKILL = 75,
    RESUME_BATTLE = 76,
    CLICK_BLACK_SMITH = 77,
    SUMMONER_BATTLE_INFO = 78,
    SUMMONER_ADD_POWER = 79,
    FORMATION_BUFF = 80,
    ALL_SUMMONER = 81,
    CLICK_SUMMON_BASIC = 82,
    CLICK_SUMMON_HEROIC = 83,
}

---@class TutorialPivot
TutorialPivot = {
    TOP_LEFT = 1,
    TOP_RIGHT = 2,
    BOTTOM_LEFT = 3,
    BOTTOM_RIGHT = 4,
    CENTER = 5,
    CENTER_TOP = 6,
}

---@class TutorialHandType
TutorialHandType = {
    CLICK = 1,
    MOVE_CLICK = 2,
    MULTIPLE_CLICK = 3,
    CLICK_BOTTOM = 4,
}

---@class LimitedPackResetType
LimitedPackResetType = {
    RESET_BY_WEEK = 0,
    RESET_BY_MONTH = 1,
}

--- @class NotificationType
NotificationType = {
    Close = 1,
    Ok = 2,
    YesNo = 3,
}

--- @class DOTweenEase
DOTweenEase = {
    Linear = 1,
    OutSine = 3,
}

--- @class ClientActionType
ClientActionType = {
    BASIC_ATTACK = 1,
    USE_SKILL = 2,
    NOTHING = 3,
    REBORN = 4,
    COUNTER_ATTACK = 5,
    BONUS_ATTACK = 6,
    BOUNCING_DAMAGE = 7,
}

--- @class CampaignDifficultLevel
CampaignDifficultLevel = {
    Normal = 1,
    Nightmare = 2,
    Hell = 3,
    Death = 4,
    Crazy = 5,
    Chaos = 6,
    Universe = 7,
    Godz = 8,
}

--- @class DisconnectReason
DisconnectReason = {
    EXCEED_CONNECTION = 0,
    INCOMPATIBLE_VERSION = 1,
    AUTHORIZATION_REQUIRED = 2,
    ANOTHER_DEVICE_LOGIN = 3,
    IDLE_TIMEOUT = 4,
    ADMINISTRATOR_KICK = 5,
    BLOCKED_USER = 6,
    INTERNAL_SERVER_ERROR = 7,
    MAINTENANCE = 8,

    OUT_GAME_LONG_TIME = 50,
    NO_NETWORK_CONNECTION = 91,
    CANT_PING_ANY_SERVER = 92,
    CANT_DOWNLOAD_GOOGLE_SCRIPT = 93,
    CANT_DOWNLOAD_LUA_ZIP = 94,
    CANT_DOWNLOAD_CSV_ZIP = 95,
    CANT_DOWNLOAD_MANIFEST_ASSET = 96,
    CANT_DOWNLOAD_BUNDLE_ASSET = 97,
    CANT_DOWNLOAD_BALANCER = 98,
}

--- @class SummonType
SummonType = {
    Basic = 0,
    Heroic = 1,
    Friendship = 2,
    Cumulative = 3,
    RateUp = 6,
    NewHero = 7,
    NewHero2 = 8,
}

--- @class ChatMessageType
ChatMessageType = {
    PLAIN_TEXT = 0,
    GUILD_WAR_INVITE = 1,
    GUILD_RECRUIT = 2,
    ADMIN_MESSAGE = 3,
    MAINTENANCE_MESSAGE = 4,
    DOMAIN_CREW_RECRUIT = 5,
}

--- @class ChatChanel
ChatChanel = {
    WORLD = 0,
    GUILD = 1,
    RECRUIT = 2,
    SYSTEM = 3,

    DOMAINS_TEAM = 4,
    DOMAINS_RECRUIT = 5,
}

--- @class MarketType
MarketType = {
    BLACK_MARKET = 1,
    ALTAR_MARKET = 2,
    ARENA_MARKET = 3,
    ARENA_TEAM_MARKET = 4,
    EVENT_MARKET = 5,
    DOMAINS_MARKET = 6,
    GUILD_MARKET = 7,
}

--- @class GuildWarPhase
GuildWarPhase = {
    SPACE = 0,
    REGISTRATION = 1,
    SETUP_DEFENDER = 2,
    BATTLE = 3,
}

--- @class SkinRarity
SkinRarity = {
    DEFAULT = 0,
    COMMON = 1,
    UNCOMMON = 2,
    RARE = 3,
    LEGEND = 4,
}

--- @class ReloadDataType
ReloadDataType = {
    NONE = 1,
    OUT_GAME_LONG_TIME = 2,
    NEXT_DAY = 3,
}

--- @class AssetType
AssetType = {
    UI = "UI",
    Hero = "Hero",
    UIEffect = "UIEffect",
    HeroBattleEffect = "HeroBattleEffect",
    GeneralBattleEffect = "GeneralBattleEffect",
    Effect = "Effect",
    UIPool = "UIPool",
    Audio = "Audio",
    Texture = "Texture",
    Background = "Background",
    Battle = "Battle",
    GeneralBattleSound = "GeneralBattleSound",
    Config = "Config",
    Video = "Video",
    Material = "UIMaterials",
    Prefab = "Prefabs",
    DefenseBattleEffect = "DefenseBattleEffect",
    DefenseBattleSound = "DefenseBattleSound",
}

--- @class SceneConfig
SceneConfig = {
    HomeScene = "HomeScene",
    BattleScene = "BattleScene",
    BattleTestScene = "BattleTestScene",
    MatchWidthOrHeight = {
        min = 1.333,
        max = 2.005
    }
}

--- @class ClientConfigKey
ClientConfigKey = {
    TIME_LIFE = "time_life",
    DELAY_DESPAWN_ON_RELEASE = "delay_despawn",
    ANCHOR = "anchor",
    IS_SYNC_TARGET_LAYER = "is_sync_target_layer",
    IS_TARGET_CHILD = "is_target_child",
    MAIN_VISUAL = "main_visual",
    MAIN_VISUAL = "main_visual",
    BATTLE_EFFECT_TYPE = "battle_effect_type",

    DEFAULE_BATTLE_EFFECT = 1,
    SPINE_BATTLE_EFFECT = 2,
    DEFAULT_SPINE_ANIM = "default"
}

--- @class PackViewType
PackViewType = {
    RAW_PACK = 0,
    SUBSCRIPTION_PACK = 1,
    FIRST_TIME_PACK = 2,
    LIMITED_PACK = 3,
    EVENT_BUNDLE = 4,
    EVENT_HOT_DEAL = 5,
    FLASH_SALE_PACK = 6,
    STARTER_PACK = 7,
    GROWTH_PACK = 8,
    MASTER_BLACKSMITH = 9,
    ARENA_PASS = 10,
    DAILY_QUEST_PASS = 11,

    DAILY_LIMITED_PACK = 31,
    WEEKLY_LIMITED_PACK = 32,
    MONTHLY_LIMITED_PACK = 33,
    DAILY_LIMITED_HALLOWEEN_PACK = 34,
    DAILY_LIMITED_XMAS_PACK = 35,
    DAILY_LIMITED_NEW_YEAR = 36,
    ELITE_BUNDLE = 37,
    VALENTINE_BUNDLE = 38,
    NEW_HERO_BUNDLE = 39,
    DAILY_LIMITED_EASTER_PACK = 40,
    WELCOME_BACK_BUNDLE = 41,
    DAILY_LIMITED_BIRTHDAY = 42,

    EVENT_SKIN_BUNDLE_1 = 43,
    EVENT_SKIN_BUNDLE_2 = 44,
}

--- @class LeaderBoardType
LeaderBoardType = {
    CAMPAIGN = 1,
    TOWER = 2,
    DUNGEON = 3,
    FRIEND_RANKING = 4,
    GUILD_DUNGEON_RANKING = 5,
    GUILD_BOSS_RANKING = 6,
    GUILD_DUNGEON_SEASON_RANKING = 7,
    GUILD_WAR_SEASON_RANKING = 8,
    IGNATIUS_SEASON_RANKING = 9,
    LUNAR_BOSS_RANKING = 10,
    NEW_HERO_BOSS_RANKING = 11,
}

--- @class DefenseRestrictType
DefenseRestrictType = {
    WATER = 1,
    FIRE = 2,
    ABYSS = 3,
    NATURE = 4,
    DARK = 5,
    LIGHT = 6,
    DREAM = 7,
    CHAOS = 8,
    UNBORN = 9,
    LIBRARY = 10,
}

--- @class PurchaseResponseCode
PurchaseResponseCode = {
    Success = -1,
    PurchasingUnavailable = 0,
    ExistingPurchasePending = 1,
    ProductUnavailable = 2,
    SignatureInvalid = 3,
    UserCancelled = 4,
    PaymentDeclined = 5,
    DuplicateTransaction = 6,
    Unknown = 7
}

--- @class SungameIapResponseCode
SungameIapResponseCode = {
    SUCCESS = 1,
    NOT_SELECTED = 11,
    FAILED = 111,
    OTHER = 13,
    FROM_PENDING = 222,
}

--- @class CalculationReward
CalculationReward = {
    MultiVip = 1,
    MultiLevel = 2,
    AddVip = 3,
    AddLevel = 4,
}

--- @class CALCULATOR_TYPE
CALCULATOR_TYPE = {
    ADD = 1,
    MULTIPLY = 2,
}

--- @class FACTOR_TYPE
FACTOR_TYPE = {
    VIP_LEVEL = 1,
    LEVEL_SUMMON = 2,
}

--- @class IapShopTab
IapShopTab = {
    MONTHLY_CARD = 1,
    DAILY_DEAL = 2,
    DAILY_DEAL_HALLOWEEN = 3,
    DAILY_DEAL_XMAS = 4,
    DAILY_DEAL_NEW_YEAR = 5,
    DAILY_DEAL_EASTER_EGG = 6,
    DAILY_DEAL_BIRTHDAY = 7,
    WEEKLY_DEAL = 8,
    MONTHLY_DEAL = 9,
    LEVEL_PASS_1 = 10,
    LEVEL_PASS_2 = 11,
    ARENA_PASS = 12,
    DAILY_QUEST_PASS = 13,
    RAW_PACK = 14,
}

--- @class InjectorType
InjectorType = {
    RAISED_HERO = 20,

    -- event injector type
    -- value = 1000 * event type
    EVENT_MID_AUTUMN = 1024,
    EVENT_ARENA_PASS = 1027,
    EVENT_DAILY_QUEST_PASS = 1028,
    EVENT_HALLOWEEN = 1029,
    EVENT_CHRISTMAS = 1030,
    EVENT_NEW_YEAR = 1031,
    EVENT_LUNAR_NEW_YEAR = 1032,
    EVENT_EASTER_EGG = 1042,
}

--- @class FeatureState
FeatureState = {
    LOCK = 1,
    COMING_SOON = 2,
    UNLOCK = 3,
    MAINTAIN = 4,
}

--- @class HeroFoodRefundType
HeroFoodRefundType = {
    RANDOM_HERO = 0,
    SAME_FACTION = 1,
    SAME_HERO = 2,
    SPECIFIC_HERO = 3,
}

--- @class DomainMemberSearchType
DomainMemberSearchType = {
    FRIEND_ID = 1,
    FRIEND_LIST = 2,
    GUILD_MEMBER_LIST = 3;
}

--- @class StageStatus
StageStatus = {
    PASSED = -1,
    CURRENT = 0,
    LOCKED = 1,

    VALUE = function(stage, currentStage)
        if stage < currentStage then
            return StageStatus.PASSED
        elseif stage == currentStage then
            return StageStatus.CURRENT
        else
            return StageStatus.LOCKED
        end
    end,
}
