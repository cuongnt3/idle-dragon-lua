require "lua.client.data.HeroIconData"
require "lua.client.data.ItemIconData"
require "lua.client.data.FragmentIconData"
require "lua.client.data.PopupBuyItemData"

--- @class ResourceMgr
ResourceMgr = Class(ResourceMgr)

--- @return void
function ResourceMgr:Ctor()
    --- @type Dictionary
    self.csvDict = Dictionary()
end

--- @return table
--- @param class
function ResourceMgr:GetCsv(class)
    local csv = self.csvDict:Get(class)
    if csv == nil then
        if type(class) == "boolean" then
            XDebug.Error("NEED RETURN CLASS ")
        end
        csv = class()
        self.csvDict:Add(class, csv)
    end
    return csv
end

local mgr = ResourceMgr()
--- @return HeroesConfig
function ResourceMgr.GetHeroesConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.HeroesConfig"))
end
--- @return HeroesConfig
function ResourceMgr.GetHeroesConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.HeroesConfig"))
end

--- @return BasicInfoConfig
function ResourceMgr.GetBasicInfo()
    return mgr:GetCsv(require("lua.client.data.BasicInfo.BasicInfoConfig"))
end

--- @return HandOfMidasDataConfig
function ResourceMgr.GetHandOfMidasConfig()
    return mgr:GetCsv(require("lua.client.data.HandOfMidas.HandOfMidasDataConfig"))
end

--- @return MajorFeatureLock
function ResourceMgr.GetMajorFeatureLock()
    return mgr:GetCsv(require("lua.client.data.FeatureLock.MajorFeatureLock"))
end

--- @return MinorFeatureLock
function ResourceMgr.GetMinorFeatureLock()
    return mgr:GetCsv(require("lua.client.data.FeatureLock.MinorFeatureLock"))
end

--- @return TutorialSummonConfig
function ResourceMgr.GetTutorialSummonConfig()
    return mgr:GetCsv(require("lua.client.config.TutorialSummonConfig"))
end

--- @return EquipmentConfig
function ResourceMgr.GetEquipmentConfig()
    return mgr:GetCsv(require("lua.client.data.Equipment.EquipmentConfig"))
end

--- @return HeroRefreshTalentConfig
function ResourceMgr.GetHeroRefreshTalentConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.HeroRefreshTalentConfig"))
end

--- @return HeroMenuConfig
function ResourceMgr.GetHeroMenuConfig()
    return mgr:GetCsv(require("lua.client.data.HeroMenu.HeroMenuConfig"))
end

--- @return IdleRewardConfig
function ResourceMgr.GetIdleRewardConfig()
    return mgr:GetCsv(require("lua.client.data.IdleReward.IdleRewardConfig"))
end

--- @return ArenaDataConfig
function ResourceMgr.GetArenaConfig()
    return mgr:GetCsv(require("lua.client.data.Arena.ArenaDataConfig"))
end

--- @return ArenaTeamDataConfig
function ResourceMgr.GetArenaTeamConfig()
    return mgr:GetCsv(require("lua.client.data.ArenaTeam.ArenaTeamDataConfig"))
end

--- @return DefenseModeConfig
function ResourceMgr.GetDefenseModeConfig()
    return mgr:GetCsv(require("lua.client.data.DefenseMode.DefenseModeConfig"))
end

--- @return DomainConfig
function ResourceMgr.GetDomainConfig()
    return mgr:GetCsv(require("lua.client.data.Domain.DomainConfig"))
end

--- @return ArenaBotConfig
function ResourceMgr.GetArenaBotConfig()
    return mgr:GetCsv(require("lua.client.data.Arena.ArenaBotConfig"))
end

--- @return ArenaTeamBotConfig
function ResourceMgr.GetArenaTeamBotConfig()
    return mgr:GetCsv(require("lua.client.data.ArenaTeam.ArenaTeamBotConfig"))
end

--- @return EventExchangeConfig
function ResourceMgr.GetEventExchangeConfig()
    return mgr:GetCsv(require("lua.client.data.Event.EventExchangeConfig"))
end

--- @return GuildQuestExchangeConfig
function ResourceMgr.GetGuildQuestExchangeConfig()
    return mgr:GetCsv(require("lua.client.data.Event.GuildQuest.GuildQuestExchangeConfig"))
end

--- @return GuildQuestMinDonateConfig
function ResourceMgr.GetGuildQuestMinDonateConfig()
    return mgr:GetCsv(require("lua.client.data.Event.GuildQuest.GuildQuestMinDonateConfig"))
end

--- @return GuildQuestRewardActivityConfig
function ResourceMgr.GetGuildQuestRewardActivityConfig()
    return mgr:GetCsv(require("lua.client.data.Event.GuildQuest.GuildQuestRewardActivityConfig"))
end

--- @return HeroResetConfig
function ResourceMgr.GetHeroResetConfig()
    return mgr:GetCsv(require("lua.client.data.Altar.HeroResetConfig"))
end

--- @return HeroClassConfig
function ResourceMgr.GetHeroClassConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.HeroClassConfig"))
end

--- @return ArenaResetConfig
function ResourceMgr.GetArenaResetConfig()
    return mgr:GetCsv(require("lua.client.data.Arena.ArenaResetConfig"))
end

--- @return MasteryConfig
function ResourceMgr.GetMasteryConfig()
    return mgr:GetCsv(require("lua.client.data.Mastery.MasteryConfig"))
end

--- @return MainCharacterConfig
function ResourceMgr.GetMainCharacterConfig()
    return mgr:GetCsv(require("lua.client.data.MainCharacter.MainCharacterConfig"))
end

--- @return FragmentConfig
function ResourceMgr.GetFragmentConfig()
    return mgr:GetCsv(require("lua.client.data.Fragment.FragmentConfig"))
end

--- @return CasinoDataConfig
function ResourceMgr.GetCasinoConfig()
    return mgr:GetCsv(require("lua.client.data.Casino.CasinoDataConfig"))
end

--- @return HeroAltarConfig
function ResourceMgr.GetHeroAltarConfig()
    return mgr:GetCsv(require("lua.client.data.Altar.HeroAltarConfig"))
end

--- @return TavernQuestConfig
function ResourceMgr.GetTavernQuestConfig()
    return mgr:GetCsv(require("lua.client.data.Tavern.TavernQuestConfig"))
end

--- @return TavernConfig
function ResourceMgr.GetTavernConfig()
    return mgr:GetCsv(require("lua.client.data.Tavern.TavernConfig"))
end

--- @return VipLevelData
function ResourceMgr.GetVipConfig()
    return mgr:GetCsv(require("lua.client.data.Vip.VipLevelData"))
end

--- @return FriendRankingConfig
function ResourceMgr.GetListFriendRankingRewardConfig()
    return mgr:GetCsv(require("lua.client.data.Friend.FriendRankingConfig"))
end

--- @return FriendConfig
function ResourceMgr.GetFriendConfig()
    return mgr:GetCsv(require("lua.client.data.Friend.FriendConfig"))
end

--- @return HeroSummonData
function ResourceMgr.GetHeroSummonConfig()
    return mgr:GetCsv(require("lua.client.data.Summon.HeroSummonData"))
end

--- @return TempleSummonData
function ResourceMgr.GetTempleSummonConfig()
    return mgr:GetCsv(require("lua.client.data.Summon.TempleSummonData"))
end

--- @return GuildDataConfig
function ResourceMgr.GetGuildDataConfig()
    return mgr:GetCsv(require("lua.client.data.Guild.GuildDataConfig"))
end
--- @return TowerData
function ResourceMgr.GetTowerConfig()
    return mgr:GetCsv(require("lua.client.data.Tower.TowerData"))
end

--- @return CampaignDataConfig
function ResourceMgr.GetCampaignDataConfig()
    return mgr:GetCsv(require("lua.client.data.CampaignData.CampaignDataConfig"))
end

--- @return CampaignQuickBattleConfig
function ResourceMgr.GetCampaignQuickBattleConfig()
    return mgr:GetCsv(require("lua.client.data.CampaignData.CampaignQuickBattleConfig"))
end

--- @return CampaignQuickBattleTicketConfig
function ResourceMgr.GetCampaignQuickBattleTicketConfig()
    return mgr:GetCsv(require("lua.client.data.CampaignData.CampaignQuickBattleTicketConfig"))
end

--- @return RaidDataConfig
function ResourceMgr.GetRaidConfig()
    return mgr:GetCsv(require("lua.client.data.Raid.RaidDataConfig"))
end

--- @return GuildBossConfig
function ResourceMgr.GetGuildBossConfig()
    return mgr:GetCsv(require("lua.client.data.Guild.Boss.GuildBossConfig"))
end

--- @return GuildDungeonConfig
function ResourceMgr.GetGuildDungeonConfig()
    return mgr:GetCsv(require("lua.client.data.Guild.Dungeon.GuildDungeonConfig"))
end

--- @return DungeonConfig
function ResourceMgr.GetDungeonConfig()
    return mgr:GetCsv(require("lua.client.data.Dungeon.DungeonConfig"))
end

--- @return VideoRewardedConfig
function ResourceMgr.GetVideoRewardedConfig()
    return mgr:GetCsv(require("lua.client.data.VideoRewarded.VideoRewardedConfig"))
end

--- @return AltarMarketConfig
function ResourceMgr.GetAltarMarketConfig()
    return mgr:GetCsv(require("lua.client.data.Shop.AltarMarketConfig"))
end

--- @return GuildMarketConfig
function ResourceMgr.GetGuildMarketConfig()
    return mgr:GetCsv(require("lua.client.data.Shop.GuildMarketConfig"))
end

--- @return ArenaRewardConfig
function ResourceMgr.GetArenaRewardRankingConfig()
    return mgr:GetCsv(require("lua.client.data.Arena.ArenaRewardConfig"))
end

--- @return FormationLockConfig
function ResourceMgr.GetFormationLockConfig()
    return mgr:GetCsv(require("lua.client.data.Player.FormationLockConfig"))
end

--- @return VipRewardInstant
function ResourceMgr.GetVipRewardInstant()
    return mgr:GetCsv(require("lua.client.data.Vip.VipRewardInstant"))
end

--- @return VipRewardDaily
function ResourceMgr.GetVipRewardDaily()
    return mgr:GetCsv(require("lua.client.data.Vip.VipRewardDaily"))
end

--- @return EventConfig
function ResourceMgr.GetEventConfig()
    return mgr:GetCsv(require("lua.client.data.Event.EventConfig"))
end

--- @return LanguageConfig
function ResourceMgr.GetLanguageConfig()
    return mgr:GetCsv(require("lua.client.data.Language.LanguageConfig"))
end

--- @return MainAreaConfig
function ResourceMgr.GetMainArenaConfig()
    return mgr:GetCsv(require("lua.client.data.MainArea.MainAreaConfig"))
end

--- @return ChatConfig
function ResourceMgr.GetChat()
    return mgr:GetCsv(require("lua.client.data.Chat.ChatConfig"))
end

--- @return PurchaseConfig
function ResourceMgr.GetPurchaseConfig()
    return mgr:GetCsv(require("lua.client.data.Purchase.PurchaseConfig"))
end

--- @return ClientHeroConfig
function ResourceMgr.GetClientHeroConfig()
    return mgr:GetCsv(require("lua.client.data.ClientHero.ClientHeroConfig"))
end

--- @return QuestConfig
function ResourceMgr.GetQuestConfig()
    return mgr:GetCsv(require("lua.client.data.Quest.QuestConfig"))
end

--- @return LevelPassConfig
function ResourceMgr.GetLevelPassConfig()
    return mgr:GetCsv(require("lua.client.data.Purchase.LevelPass.LevelPassConfig"))
end

--- @return EventArenaPassConfig
function ResourceMgr.GetEventArenaPassConfig()
    return mgr:GetCsv(require("lua.client.data.Event.EventArenaPassConfig"))
end

--- @return EventDailyQuestPassConfig
function ResourceMgr.EventDailyQuestPassConfig()
    return mgr:GetCsv(require("lua.client.data.Event.EventDailyQuestPassConfig"))
end

--- @return ServiceConfig
function ResourceMgr.GetServiceConfig()
    return mgr:GetCsv(require("lua.client.data.Service.ServiceConfig"))
end

--- @return RateSummonConfig
function ResourceMgr.GetRateSummonConfig()
    return mgr:GetCsv(require("lua.client.data.Summon.RateSummonConfig"))
end

--- @return CurrencyCollectionConfig
function ResourceMgr.GetCurrencyCollectionConfig()
    return mgr:GetCsv(require("lua.client.data.Currency.CurrencyCollectionConfig"))
end

--- @return CurrencyEventConfig
function ResourceMgr.GetCurrencyEventConfig()
    return mgr:GetCsv(require("lua.client.data.Currency.CurrencyEventConfig"))
end

--- @return CurrencyRarityConfig
function ResourceMgr.GetCurrencyRarityConfig()
    return mgr:GetCsv(require("lua.client.data.Currency.CurrencyRarityConfig"))
end

--- @return TrackingConfig
function ResourceMgr.GetTrackingConfig()
    return mgr:GetCsv(require("lua.client.data.Tracking.TrackingConfig"))
end

--- @return SkipBattleConfig
function ResourceMgr.GetSkipBattleConfig()
    return mgr:GetCsv(require("lua.client.config.battle.SkipBattleConfig"))
end

--- @param name string
function ResourceMgr.GetEffectLuaConfig(name)
    return mgr.GetHeroesConfig():GetEffectLua():Get(name)
end

--- @return SkinRarityConfig
function ResourceMgr.GetSkinRarityConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.SkinRarityConfig"))
end

--- @return AvatarSkinConfig
function ResourceMgr.AvatarSkinConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.AvatarSkinConfig"))
end

--- @return ArenaRewardConfig
function ResourceMgr.GetArenaRewardRankingConfig()
    return mgr:GetCsv(require("lua.client.data.Arena.ArenaRewardConfig"))
end

--- @return DailyRewardTestConfig
function ResourceMgr.GetDailyReward()
    return mgr:GetCsv(require("lua.client.data.DailyRewardTest.DailyRewardTestConfig"))
end

--- @return DailyRewardTestConfig
function ResourceMgr.GetDailyReward()
    return mgr:GetCsv(require("lua.client.data.DailyRewardTest.DailyRewardTestConfig"))
end

--- @return BlackMarketConfig
function ResourceMgr.GetBlackMarket()
    return mgr:GetCsv(require("lua.client.data.Shop.BlackMarketConfig"))
end

--- @return ArenaMarketConfig
function ResourceMgr.GetArenaMarket()
    return mgr:GetCsv(require("lua.client.data.Shop.ArenaMarketConfig"))
end

--- @return ArenaTeamMarketConfig
function ResourceMgr.GetArenaTeamMarket()
    return mgr:GetCsv(require("lua.client.data.Shop.ArenaTeamMarketConfig"))
end

--- @return RaiseLevelConfig
function ResourceMgr.GetRaiseHeroConfig()
    return mgr:GetCsv(require("lua.client.data.RaiseHero.RaiseLevelConfig"))
end

--- @return HeroLinkingTierConfig
function ResourceMgr.GetHeroLinkingTierConfig()
    return mgr:GetCsv(require("lua.client.data.Hero.Linking.HeroLinkingTierConfig"))
end

--- @return RegressionConfig
function ResourceMgr.GetRegressionConfig()
    return mgr:GetCsv(require("lua.client.data.Regression.RegressionConfig"))
end

--- @return WelcomeBackData
function ResourceMgr.GetWelcomeBackData()
    return mgr:GetCsv(require("lua.client.data.WelcomeBackData.WelcomeBackData"))
end