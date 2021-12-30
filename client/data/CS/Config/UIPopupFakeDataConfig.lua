--- @class UIPopupFakeDataConfig
UIPopupFakeDataConfig = Class(UIPopupFakeDataConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupFakeDataConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.hero = self.transform:Find("main_pannel/Scroll View/Viewport/Content/hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.heroFragment = self.transform:Find("main_pannel/Scroll View/Viewport/Content/heroFragment"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemEquip = self.transform:Find("main_pannel/Scroll View/Viewport/Content/itemEquip"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.artifact = self.transform:Find("main_pannel/Scroll View/Viewport/Content/artifact"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.artifactFragment = self.transform:Find("main_pannel/Scroll View/Viewport/Content/artifactFragment"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("main_pannel/Scroll View/Viewport/Content/money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.quickBattleTicket = self.transform:Find("main_pannel/Scroll View/Viewport/Content/quick_battle_ticket"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.vip = self.transform:Find("main_pannel/Scroll View/Viewport/Content/vip"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.summoner = self.transform:Find("main_pannel/Scroll View/Viewport/Content/summoner"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.summon = self.transform:Find("main_pannel/Scroll View/Viewport/Content/summon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonResetBlackMarket = self.transform:Find("main_pannel/Scroll View Button/Viewport/Content/buttonResetBlackMarket"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClearHeroes = self.transform:Find("main_pannel/Scroll View Button/Viewport/Content/buttonClearHeroes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClearItems = self.transform:Find("main_pannel/Scroll View Button/Viewport/Content/buttonClearItems"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonResetSummoner = self.transform:Find("main_pannel/Scroll View Button/Viewport/Content/buttonResetSummoner"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonScoutBoss = self.transform:Find("main_pannel/Scroll View Button/Viewport/Content/buttonScoutBoss"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.setDungeonTime = self.transform:Find("main_pannel/Scroll View/Viewport/Content/setDungeonTime"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.resetDungeon = self.transform:Find("main_pannel/Scroll View/Viewport/Content/resetDungeon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.resetTower = self.transform:Find("main_pannel/Scroll View/Viewport/Content/resetTower"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.newDayTime = self.transform:Find("main_pannel/Scroll View/Viewport/Content/newDayTime"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.logRateSummon = self.transform:Find("main_pannel/Scroll View/Viewport/Content/logRateSummon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type TMPro_TextMeshProUGUI
	self.textPlayerId = self.transform:Find("main_pannel/playerId"):GetComponent(ComponentName.TMPro_TextMeshProUGUI)
	--- @type TMPro_TextMeshProUGUI
	self.textToken = self.transform:Find("main_pannel/token"):GetComponent(ComponentName.TMPro_TextMeshProUGUI)
	--- @type UnityEngine_RectTransform
	self.campaign = self.transform:Find("main_pannel/Scroll View/Viewport/Content/campaign"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.heroFood = self.transform:Find("main_pannel/Scroll View/Viewport/Content/heroFood"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.reconnect = self.transform:Find("main_pannel/Scroll View/Viewport/Content/reconnect"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorial = self.transform:Find("main_pannel/Scroll View/Viewport/Content/tutorial"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.speedUpTime = self.transform:Find("main_pannel/Scroll View/Viewport/Content/speedUpTime"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textMode = self.transform:Find("main_pannel/inventory_title/text_hero_list"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonFakeAll = self.transform:Find("main_pannel/Scroll View/Viewport/Content/fake_all/Button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.progressPack = self.transform:Find("main_pannel/Scroll View/Viewport/Content/progress_pack"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.trialMonthlyStage = self.transform:Find("main_pannel/Scroll View/Viewport/Content/trial_monthly_stage"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.clearSubscription = self.transform:Find("main_pannel/Scroll View/Viewport/Content/clear_subscription"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.growthPack = self.transform:Find("main_pannel/Scroll View/Viewport/Content/growth_pack"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildWar = self.transform:Find("main_pannel/Scroll View/Viewport/Content/guildWar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.clearProgressGroup = self.transform:Find("main_pannel/Scroll View/Viewport/Content/clear_progress_group"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.skin = self.transform:Find("main_pannel/Scroll View/Viewport/Content/skin"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.skinFragment = self.transform:Find("main_pannel/Scroll View/Viewport/Content/skinFragment"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.clearArenaPass = self.transform:Find("main_pannel/Scroll View/Viewport/Content/clear_arena_pass"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.clearDailyQuestPass = self.transform:Find("main_pannel/Scroll View/Viewport/Content/clear_daily_quest_pass"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.idleDefenseMode = self.transform:Find("main_pannel/Scroll View/Viewport/Content/idleDefenseMode"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arena = self.transform:Find("main_pannel/Scroll View/Viewport/Content/arena"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arenaTeam = self.transform:Find("main_pannel/Scroll View/Viewport/Content/arenaTeam"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildLevel = self.transform:Find("main_pannel/Scroll View/Viewport/Content/GuildLevel"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.registerAcc = self.transform:Find("main_pannel/Scroll View/Viewport/Content/registerAcc"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildJoin = self.transform:Find("main_pannel/Scroll View/Viewport/Content/guildJoin"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.offlineTime = self.transform:Find("main_pannel/Scroll View/Viewport/Content/offline_time"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.domainDay = self.transform:Find("main_pannel/Scroll View/Viewport/Content/domain_day"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
