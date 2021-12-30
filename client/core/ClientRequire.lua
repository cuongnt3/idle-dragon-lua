function RequireBase()
    require "lua.libs.LogUtils"
    require "lua.libs.RandomHelper"
    require "lua.libs.StopWatch"
    require "lua.libs.TableUtils"
    require "lua.client.utils.ClientStopWatch"
    require "lua.client.utils.SHA2"
    require "lua.client.utils.gzip.GzipDepacker"
    require "lua.client.utils.BitUtils"
    require "lua.client.utils.UIUtils"
    require "lua.client.utils.BuyUtils"
    require "lua.client.utils.XDebug"
    require "lua.client.utils.ResourceLoadUtils"
    require "lua.client.utils.SortUtils"
    require "lua.client.utils.ClientConfigUtils"
    require "lua.client.utils.ClientMathUtils"
    require "lua.client.utils.DOTweenUtils"
    require "lua.client.utils.smartPool.SmartPool"
    require "lua.client.utils.jobSystem.Job"
    require "lua.client.utils.RxUtils"
    require "lua.client.config.const.DeviceOs"
    require "lua.client.config.BattleBackgroundUtils"
    require "lua.client.utils.TimeCountDown"
    require "lua.client.scene.ui.utils.PrefabView"
    require "lua.client.scene.ui.common.BgWorldView"
    require "lua.client.scene.ui.home.uiHeroMenu.PreviewHeroMenu"
end

function RequireSmartPool()
    local function RequireUIPoolType()
        require "lua.client.scene.ui.common.UIPrefabView"
        require "lua.client.scene.ui.common.IconView"
        require "lua.client.scene.ui.common.MotionIconView"
        require "lua.client.scene.ui.common.UITabItem"

        UIPoolType = {
            --- Lua GameObject
            RootIconView = require("lua.client.scene.ui.common.RootIconView"),
            HeroIconView = require("lua.client.scene.ui.common.HeroIconView"),
            RaiseHeroIconView = require("lua.client.scene.ui.common.RaiseHeroIconView"),
            RaiseHeroPickIconView = require("lua.client.scene.ui.home.uiRaisePickHero.HeroRaisePickIconView"),
            DungeonHeroIconView = require("lua.client.scene.ui.common.DungeonHeroIconView"),
            HeroCardItemView = require("lua.client.scene.ui.common.HeroCardItemView"),
            DailyRewardItemView = require("lua.client.scene.ui.common.DailyRewardItemView"),
            DailyRewardMultiItemView = require("lua.client.scene.ui.common.DailyRewardMultiItemView"),
            DailyRewardXmasView = require ("lua.client.scene.ui.home.uiEventXmas.uiEventXmasLayout.checkIn.DailyRewardXmasView"),
            DailyRewardLunarNewYearView = require ("lua.client.scene.ui.home.uiEventLunarNewYear.eventLayout.dailyCheckin.DailyRewardLunarNewYearView"),
            DailyRewardHalloweenView = require("lua.client.scene.ui.home.uiEventHalloween.uiEventHalloweenLayout.EventDailyCheckin.DailyRewardHalloweenView"),
            AvatarIconView = require("lua.client.scene.ui.common.AvatarIconView"),
            BorderIconView = require("lua.client.scene.ui.common.BorderIconView"),
            ItemIconView = require("lua.client.scene.ui.common.ItemIconView"),
            ValentineOpenCardItemView = require("lua.client.scene.ui.home.uiEventValentine.eventLayout.openCard.ValentineOpenCardItemView"),
            RoundCardWishItemView = require("lua.client.scene.ui.home.uiEventValentine.eventLayout.openCard.RoundCardWishItemView"),
            ItemIconEffectView = require("lua.client.scene.ui.common.ItemIconEffectView"),
            ItemInfoView = require("lua.client.scene.ui.common.ItemInfoView"),
            SkillHeroIconView = require("lua.client.scene.ui.common.SkillHeroView"),
            SkillSummonerIconView = require("lua.client.scene.ui.common.SkillSummonerView"),
            MoneyIconView = require("lua.client.scene.ui.common.MoneyIconView"),
            QuickBattleTicketView = require("lua.client.scene.ui.common.QuickBattleTicketView"),
            HeroIconSelectView = require("lua.client.scene.ui.common.HeroIconSelectView"),
            UIButtonStageView = require("lua.client.scene.ui.home.uiSelectMapPVE.stage.UIButtonStageView"),
            DungeonShopItemView = require("lua.client.scene.ui.common.DungeonShopItemView"),
            SwitchCharacterIconView = require("lua.client.scene.ui.home.uiSwitchCharacter.SwitchCharacterIconView"),
            StatInformationView = require("lua.client.scene.ui.common.prefabHeroInfo.StatInformationView"),
            ButtonBuyView = require("lua.client.scene.ui.common.ButtonBuyView"),
            ButtonHelpRandomView = require("lua.client.scene.ui.common.ButtonHelpRandomView"),
            FragmentIconView = require("lua.client.scene.ui.common.FragmentIconView"),
            HeroMaterialIconView = require("lua.client.scene.ui.common.HeroMaterialIconView"),
            ModeShopIconView = require("lua.client.scene.ui.common.ModeShopIconView"),
            HeroSummonBaseIconView = require("lua.client.scene.ui.common.HeroSummonBaseIconView"),
            MoneyBarView = require("lua.client.scene.ui.common.MoneyBarView"),
            SlotHeroIconView = require("lua.client.scene.ui.common.SlotHeroIconView"),
            RequirementHeroIconView = require("lua.client.scene.ui.common.RequirementHeroIconView"),
            RequirementHeroInfoView = require("lua.client.scene.ui.common.RequirementHeroInfoView"),
            UITavernQuestView = require("lua.client.scene.ui.common.UITavernQuestView"),
            UITopNewHeroItemView = require("lua.client.scene.ui.common.UITopNewHeroItemView"),
            UITreasureItemView = require("lua.client.scene.ui.common.UITreasureItemView"),
            UIPrefabHeroList2View = require("lua.client.scene.ui.common.prefabHeroList.UIPrefabHeroList2View"),
            UIPrefabTeamView = require("lua.client.scene.ui.common.prefabTeam.UIPrefabTeamView"),
            LinkingHeroItemView = require("lua.client.scene.ui.common.LinkingHeroItemView"),
            VipDescriptionView = require("lua.client.scene.ui.common.VipDescriptionView"),
            InputNumberView = require("lua.client.scene.ui.common.InputNumberView"),
            StatUpgradeView = require("lua.client.scene.ui.common.StatUpgradeView"),
            UIStatItemUpgradeView = require("lua.client.scene.ui.common.UIStatItemUpgradeView"),
            SelectServerView = require("lua.client.scene.ui.common.SelectServerView"),
            LeaderBoardItemView = require("lua.client.scene.ui.common.LeaderBoardItemView"),
            LeaderBoardNewHeroItemView = require("lua.client.scene.ui.common.LeaderBoardNewHeroItemView"),
            StageRewardItemVew = require("lua.client.scene.ui.common.DefenseModeStageRewardItemView"),
            RaidStageView = require("lua.client.scene.ui.common.RaidStageView"),
            UIFriendItemView = require("lua.client.scene.ui.common.UIFriendItemView"),
            UIBlockPlayerItemView = require("lua.client.scene.ui.common.UIBlockPlayerItemView"),
            UIDomainInvitationItemView = require("lua.client.scene.ui.common.UIDomainInvitationItemView"),
            UIDomainTeamItemView = require("lua.client.scene.ui.common.UIDomainTeamItemView"),
            UIDomainMemberVerifyItemView = require("lua.client.scene.ui.common.UIDomainMemberVerifyItemView"),
            UIDomainMemberSearchItemView = require("lua.client.scene.ui.common.UIDomainMemberSearchItemView"),
            SelectLanguageItemView = require("lua.client.scene.ui.common.SelectLanguageItemView"),
            FriendRankingPointItemView = require("lua.client.scene.ui.common.FriendRankingPointItemView"),
            FriendRankingRewardItemView = require("lua.client.scene.ui.common.FriendRankingRewardItemView"),
            ChatBoxView = require("lua.client.scene.ui.common.ChatBoxView"),
            UserChatBoxView = require("lua.client.scene.ui.common.UserChatBoxView"),
            GuestChatBoxView = require("lua.client.scene.ui.common.GuestChatBoxView"),
            DamageStatItemView = require("lua.client.scene.ui.common.DamageStatItemView"),
            ArenaBattleItemView = require("lua.client.scene.ui.common.ArenaBattleItemView"),
            ArenaRewardItemView = require("lua.client.scene.ui.common.ArenaRewardItemView"),
            ArenaRecordItemView = require("lua.client.scene.ui.common.ArenaRecordItemView"),
            ArenaTeamOpponentItemView = require("lua.client.scene.ui.home.uiArenaTeamSearch.ArenaTeamOpponentItemView"),
            GuildWarRecordItemView = require("lua.client.scene.ui.home.uiGuildWarPhase3TeamInfo.uiGuildWarRecord.GuildWarRecordItemView"),
            BattleLogItemView = require("lua.client.scene.ui.common.BattleLogItemView"),
            UITapToCloseView = require("lua.client.scene.ui.common.UITapToCloseView"),
            VipIconView = require("lua.client.scene.ui.common.VipIconView"),
            ArenaRankingItemView = require("lua.client.scene.ui.common.ArenaRankingItemView"),
            UIMailItemView = require("lua.client.scene.ui.common.UIMailItemView"),
            QuestItemView = require("lua.client.scene.ui.home.uiQuest.questItem.QuestItemView"),
            ApplyGuildSlotItemView = require("lua.client.scene.ui.home.uiGuildApply.UIApplyGuildSlotItemView"),
            MemberSlotItemView = require("lua.client.scene.ui.home.uiGuildMain.UIGuildMemberSlotItemView"),
            GuildApplicationItem = require("lua.client.scene.ui.home.uiGuildApplication.UIGuildApplicationItem"),
            GuildLogItem = require("lua.client.scene.ui.home.uiGuildLog.UIGuildLogItemView"),
            QuestTreeNodeItem = require("lua.client.scene.ui.home.uiPopupQuestTree.UIQuestTreeNodeItem"),
            EventPackageItem = require("lua.client.scene.ui.home.uiEvent.purchase.UIEventPackageItemView"),
            EventPackageTabItem = require("lua.client.scene.ui.home.uiEvent.UIEventPackageTabItem"),
            EventQuestItem = require("lua.client.scene.ui.home.uiEvent.quest.UIEventQuestItem"),
            UIResItemRawPack = require("lua.client.scene.ui.home.uiIapShop.UIResItemRawPack"),
            UIPrefabHeroSlotView = require("lua.client.scene.ui.common.prefabHeroSlot.UIPrefabHeroSlotView"),
            FactionCompanionView = require("lua.client.scene.ui.common.FactionCompanionView"),
            StatCompanionView = require("lua.client.scene.ui.common.StatCompanionView"),
            GuildLogoSelectItem = require("lua.client.scene.ui.home.uiSelectGuildLogo.GuildLogoSelectItem"),
            AvatarGameOverView = require("lua.client.scene.ui.common.AvatarGameOverView"),
            WorldMapGateItem = require("lua.client.scene.ui.home.uiWorldMap.UIWorldMapGateItem"),
            UITowerRecordItem = require("lua.client.scene.ui.home.uiTowerBattleRecord.UITowerRecordItem"),
            Reward1ItemView = require("lua.client.scene.ui.common.UIPopupReward1ItemView"),
            EventArenaRankingItem = require("lua.client.scene.ui.home.uiEvent.arenaRanking.UIEventArenaRankingItem"),
            GuildWarRegistrationItem = require("lua.client.scene.ui.home.uiGuildWarRegistration.uiGuildWarRegistrationItem.UIGuildWarRegistrationItem"),
            HeroSlotWorldFormation = require("lua.client.scene.ui.home.uiFormation2.heroSlotWorldFormation.HeroSlotWorldFormation"),
            GuildWarAreaWorld = require("lua.client.scene.ui.home.uiGuildWarArea.guildWarArea.GuildWarArea"),
            GuildWarDefenseWorldBase = require("lua.client.scene.ui.home.uiGuildWarArea.guildWarDefenseWorldBase.GuildWarDefenseWorldBase"),
            GuildDungeonBossStand = require("lua.client.scene.ui.home.uiGuildDungeon.guildDungeonWorldView.GuildDungeonBossStand"),
            GuildDailyBossMilestoneReward = require("lua.client.scene.ui.home.uiGuildDailyBoss.guildDailyBossMilestoneReward.GuildDailyBossMilestoneReward"),
            UIEventReleaseFestivalItem = require("lua.client.scene.ui.home.uiEvent.releaseFestival.UIEventReleaseFestivalItem"),
            ExchangeItemView = require("lua.client.scene.ui.common.ExchangeItemView"),
            ExchangeHeroView = require("lua.client.scene.ui.common.ExchangeHeroView"),
            EventExchangePanel = require("lua.client.scene.ui.home.uiEvent.exchange.EventExchangePanel"),
            MaterialItemView = require("lua.client.scene.ui.common.MaterialItemView"),
            LobbyTeamItemView = require("lua.client.scene.ui.common.LobbyTeamItemView"),
            GuildDonateItemView = require("lua.client.scene.ui.common.GuildDonateItemView"),
            EventGuildQuestPanel = require("lua.client.scene.ui.home.uiEvent.guildQuest.EventGuildQuestPanel"),
            InputSliderView = require("lua.client.scene.ui.common.InputSliderView"),
            GuildDonateHistoryItemView = require("lua.client.scene.ui.common.GuildDonateHistoryItemView"),
            DonateHelpItemView = require("lua.client.scene.ui.common.DonateHelpItemView"),
            QuickBattleItemView = require("lua.client.scene.ui.common.QuickBattleItemView"),
            RewardPointItemView = require("lua.client.scene.ui.common.RewardPointItemView"),
            EventServerOpenItemView = require("lua.client.scene.ui.common.EventServerOpenItemView"),
            UIGrowthMilestoneItem = require("lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopLevelPassLayout.UIGrowthMilestoneItem"),
            UIIapArenaPassMilestone = require("lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapPassLayout.UIIapArenaPassMilestoneItem"),
            MultiEvolveItemView = require("lua.client.scene.ui.home.uiMultiEvolve.MultiEvolveItemView"),
            DungeonBuffCardView = require("lua.client.scene.ui.common.DungeonBuffCardView"),
            TalentSelectItemView = require("lua.client.scene.ui.common.TalentSelectItemView"),
            GuildWarBattleResultView = require("lua.client.scene.ui.common.GuildWarBattleResultView"),
            IapTilePackItem = require("lua.client.scene.ui.home.uiIapShop.iapTilePackItem.IapTilePackItem"),
            SkinIconView = require("lua.client.scene.ui.common.SkinIconView"),
            SkinCardView = require("lua.client.scene.ui.common.SkinCardView"),
            GuildIconView = require("lua.client.scene.ui.common.GuildIconView"),
            FeedBeastLevelRewardItem = require("lua.client.scene.ui.home.uiEventMidAutumn.uiEventMidAutumnLayout.feedTheBeast.FeedBeastLevelRewardItem"),
            ExchangeMidAutumnItemView = require("lua.client.scene.ui.home.uiEventMidAutumn.uiEventMidAutumnLayout.exchange.ExchangeMidAutumnItemView"),
            GemBoxMidAutumnItemView = require("lua.client.scene.ui.home.uiEventMidAutumn.uiEventMidAutumnLayout.gemBox.GemBoxMidAutumnItemView"),
            GemBoxBlackFridayItemView = require("lua.client.scene.ui.home.uiEventBlackFriday.uiEventBlackFridayLayout.EventGemPack.GemBoxBlackFridayItemView"),
            GemBoxNewYearItemView =  require("lua.client.scene.ui.home.uiEventNewYear.uiEventLayout.exchange.GemBoxNewYearItemView"),
            StageIdleRewardItemView = require("lua.client.scene.ui.home.uiDefenseMap.StageIdleRewardItemView"),
            BubbleView = require("lua.client.scene.ui.home.uiDefenseMode.LandSelect.BubbleView"),
            TowerResultItemView = require("lua.client.scene.ui.common.TowerResultItemView"),
            WorldFormation = require("lua.client.scene.ui.home.uiFormation2.dungeonWorldFormation.DungeonWorldFormation"),
            ChestIgnatiusItemView = require("lua.client.scene.ui.common.ChestIgnatiusItemView"),
            HeroForHireItem = require("lua.client.scene.ui.home.uiHeroForHire.UIHeroForHireItem"),
            UIHeroLinkingItemView = require("lua.client.scene.ui.common.UIHeroLinkingItemView"),
            UIHeroLinkingCardRequireItemView = require("lua.client.scene.ui.common.UIHeroLinkingCardRequireItemView"),
            UIHeroLinkingItemSelectView = require("lua.client.scene.ui.common.UIHeroLinkingItemSelectView"),
            PlayerHeroIconView = require("lua.client.scene.ui.common.PlayerHeroIconView"),
            UILunarBossChapterItemView = require("lua.client.scene.ui.home.uiEventLunarPath.uiEventLunarPathLayout.uiEventLunarBossLayout.UILunarBossChapterItemView"),
            DailyRewardValentineView = require ("lua.client.scene.ui.home.uiEventValentine.eventLayout.dailyCheckin.DailyRewardValentineView"),
            ItemWithNameInfoView = require ("lua.client.scene.ui.common.ItemWithNameInfoView"),
            UIDefensePlayerRecordItem = require("lua.client.scene.ui.home.uiDefenseStageRecordList.UIDefensePlayerRecordItem"),
            ArenaTeamLogItem = require("lua.client.scene.ui.home.uiArenaTeamLog.ArenaTeamLogItem"),
            UIArenaTeamFormationItemView = require("lua.client.scene.ui.home.uiFormationArenaTeam.UIArenaTeamFormationItemView"),
            RoundRewardItem = require("lua.client.scene.ui.home.uiEventNewHero.RoundRewardItem"),
            UIPointSummonNewHeroItemView = require("lua.client.scene.ui.common.UIPointSummonNewHeroItemView"),
            DailyRewardMergeServerView = require ("lua.client.scene.ui.home.uiEventMergeServer.UIEventMergeServerLayout.dailyCheckin.DailyRewardMergeServerView"),
            LimitedBundleItemView = require("lua.client.scene.ui.common.LimitedBundleItemView"),
            DailyRewardEasterEggView = require("lua.client.scene.ui.home.uiEventEasterEgg.UIEventEasterEggLayout.dailyCheckin.DailyRewardEasterEggView"),
            UIEggCombineItemView = require("lua.client.scene.ui.common.UIEggCombineItemView"),
            UITreasureItemInfoView = require("lua.client.scene.ui.common.UITreasureItemInfoView"),
            DailyRewardWelcomeBackView = require("lua.client.scene.ui.home.uiWelcomeBack.WelcomeBackLoginLayout.DailyRewardWelcomeBackView"),
            DailyRewardEventBirthdayView = require("lua.client.scene.ui.home.uiEventBirthday.layout.dailyCheckin.DailyRewardEventBirthdayView"),
            ExchangeMultiItemView = require("lua.client.scene.ui.home.uiEventBirthday.layout.exchange.ExchangeMultiItemView"),
            IapSkinBundlePackItem = require("lua.client.scene.ui.home.uiEventSkinBundle.IapSkinBundlePackItem"),
            SimpleButtonView = require("lua.client.scene.ui.common.SimpleButtonView"),

            --- GameObject
            NullObject = 'root_info',
            Mask = 'mask',
            MaskSelected = 'mask_selected',
            SkillSelected = 'skill_selected',
            MaskClose = 'mask_close',
            MaskLock = 'mask_lock',
            MaskLockMini = 'mask_lock_mini',
            Add = 'add',
            FrameEffect = 'frame_effect',
            EffectSelected = 'effect_selected',
            NotificationItem = 'notification_item',
            TimeCountDown = 'time_count_down',
            FrameBoss = 'frame_boss',
            SoftTut = 'soft_tut',
            HpBar = 'hp_bar',
            BorderTalent = 'border_talent',
        }
    end

    local function RequireGeneralEffectPoolType()
        local type = {
            BattleTextLog = require("lua.client.scene.ui.battle.uiBattleTextLog.UIBattleTextLog"),
            ClientEffect = require("lua.client.battleShow.ClientEffect.ClientEffect"),
            BattleEffectIcon = require("lua.client.scene.ui.battle.uiHeroStatusBar.UIBattleEffectIcon"),
            BattleMarkIcon = require("lua.client.scene.ui.battle.uiHeroStatusBar.UIBattleMarkIcon"),
            SpineClientEffect = require("lua.client.battleShow.ClientEffect.SpineClientEffect"),
        }
        GeneralEffectPoolType = type
    end

    local function RequireHeroEffectPoolType()
        local type = {
            ClientEffect = GeneralEffectPoolType.ClientEffect,
            SpineClientEffect = GeneralEffectPoolType.SpineClientEffect
        }
        HeroEffectPoolType = type
    end

    RequireUIPoolType()
    RequireGeneralEffectPoolType()
    RequireHeroEffectPoolType()
end

function RequireUIView()
    require "lua.client.scene.ui.utils.UIObjectList"
    require "lua.client.scene.ui.utils.uiSelect.UISelect"
    --require "lua.client.scene.ui.common.UITabConfig"
    --require "lua.client.scene.ui.common.UITabPopupConfig"
    require "lua.client.scene.ui.utils.UILoopScroll"
    require "lua.client.scene.ui.utils.UILoopScrollAsync"
    require "lua.client.scene.ui.common.heroList.HeroListView"
    require "lua.client.scene.ui.common.ItemsTableView"
    require "lua.client.scene.ui.common.UIInputView"
    require "lua.client.scene.ui.common.ListSkillView"
    require "lua.client.scene.ui.common.MoneyBarLocalView"
    require "lua.client.scene.ui.common.PreviewHero"
    require "lua.client.scene.ui.common.UIEventBigBundleItem"
end

RequireBase()
RequireSmartPool()
RequireUIView()
