--- @class UIMainAreaConfig
UIMainAreaConfig = Class(UIMainAreaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMainAreaConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.dailyCheckin = self.transform:Find("safe_area/left_border/icon_1/daily_reward"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.mail = self.transform:Find("safe_area/left_border/icon_1/mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.friend = self.transform:Find("safe_area/left_border/icon_1/friend"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconSetting = self.transform:Find("safe_area/left_border/top_menu_user_profile/icon_main_menu_setting"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.inventory = self.transform:Find("safe_area/bottom_border/icon_2/inventory"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.softTutInventory = self.transform:Find("safe_area/bottom_border/icon_2/inventory/soft_tut").gameObject
	--- @type UnityEngine_UI_Button
	self.heroList = self.transform:Find("safe_area/bottom_border/icon_2/hero_menu"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.softTutHero = self.transform:Find("safe_area/bottom_border/icon_2/hero_menu/soft_tut (1)").gameObject
	--- @type UnityEngine_GameObject
	self.notiHeroCollection = self.transform:Find("safe_area/bottom_border/icon_2/hero_menu/noti_hero_collection").gameObject
	--- @type UnityEngine_UI_Button
	self.mastery = self.transform:Find("safe_area/bottom_border/icon_2/mastery"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.cashShop = self.transform:Find("safe_area/bottom_border/icon_shop"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.summoner = self.transform:Find("safe_area/bottom_border/icon_2/summoner"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.raiseLevel = self.transform:Find("safe_area/bottom_border/icon_2/raise_level"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.gemRoot = self.transform:Find("safe_area/right_border/gem_top_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.goldRoot = self.transform:Find("safe_area/right_border/coin_top_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.iconChat = self.transform:Find("safe_area/left_border/top_menu_user_profile/icon_main_menu_chat"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconChatNew = self.transform:Find("safe_area/left_border/top_menu_user_profile/icon_main_menu_chat/Image").gameObject
	--- @type UnityEngine_GameObject
	self.notiDaily = self.transform:Find("safe_area/left_border/icon_1/daily_reward/noti").gameObject
	--- @type UnityEngine_GameObject
	self.notiMail = self.transform:Find("safe_area/left_border/icon_1/mail/noti").gameObject
	--- @type UnityEngine_GameObject
	self.nofiFriend = self.transform:Find("safe_area/left_border/icon_1/friend/noti").gameObject
	--- @type UnityEngine_RectTransform
	self.vipIconView = self.transform:Find("safe_area/left_border/top_menu_user_profile/icon_user"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("safe_area/left_border/top_menu_user_profile/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDailyCheckin = self.transform:Find("safe_area/left_border/icon_1/daily_reward/GameObject/bg/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMail = self.transform:Find("safe_area/left_border/icon_1/mail/GameObject/bg/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFriend = self.transform:Find("safe_area/left_border/icon_1/friend/GameObject/bg/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeShop = self.transform:Find("safe_area/bottom_border/icon_shop/text_shop"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMainCharacter = self.transform:Find("safe_area/bottom_border/icon_2/summoner/text_summoner"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMastery = self.transform:Find("safe_area/bottom_border/icon_2/mastery/text_mastery"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeInventory = self.transform:Find("safe_area/bottom_border/icon_2/inventory/text_inventory"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeHeroList = self.transform:Find("safe_area/bottom_border/icon_2/hero_menu/text_hero_collection"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeQuest = self.transform:Find("safe_area/bottom_border/icon_main_menu_quest/text_quest"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFreeGem = self.transform:Find("safe_area/bottom_border/bottom_left/video_rewarded/text_video_rewarded"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFirstPurchase = self.transform:Find("safe_area/right_border/anchor_event/first_purchase/text_first_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFirstPurchase1 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake1/text_first_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFirstPurchase2 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake2/text_first_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFirstPurchase3 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake3/text_first_purchase"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.quest = self.transform:Find("safe_area/bottom_border/icon_main_menu_quest"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notiQuest = self.transform:Find("safe_area/bottom_border/icon_main_menu_quest/noti_quest").gameObject
	--- @type UnityEngine_UI_Button
	self.iconCheat = self.transform:Find("safe_area/icon_cheat"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.firstPurchase = self.transform:Find("safe_area/right_border/anchor_event/first_purchase"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.firstPurchaseFake1 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.firstPurchaseFake2 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.firstPurchaseFake3 = self.transform:Find("safe_area/right_border/anchor_event/first_purchase_fake3"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.videoRewarded = self.transform:Find("safe_area/bottom_border/bottom_left/video_rewarded"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.eventServerOpen = self.transform:Find("safe_area/right_border/anchor_event/event_server_open"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Animation
	self.anim = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Animation)
	--- @type UnityEngine_UI_Button
	self.handOfMidas = self.transform:Find("safe_area/bottom_border/bottom_left/hand_of_midas"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notiHandOfMidas = self.transform:Find("safe_area/bottom_border/bottom_left/hand_of_midas/noti_hand_of_midas").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeHandOfMidas = self.transform:Find("safe_area/bottom_border/bottom_left/hand_of_midas/text_hand_of_midas"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.popupMiniQuestTree = self.transform:Find("safe_area/bottom_border/popup_mini_quest_tree"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notiRaiseHero = self.transform:Find("safe_area/bottom_border/icon_2/raise_level/noti_raise_level").gameObject
	--- @type UnityEngine_GameObject
	self.notiSummoner = self.transform:Find("safe_area/bottom_border/icon_2/summoner/noti_summoner").gameObject
	--- @type UnityEngine_GameObject
	self.notiInventory = self.transform:Find("safe_area/bottom_border/icon_2/inventory/noti_inventory").gameObject
	--- @type UnityEngine_GameObject
	self.notiEventServerOpen = self.transform:Find("safe_area/right_border/anchor_event/event_server_open/notification").gameObject
	--- @type UnityEngine_GameObject
	self.notiVideoRewarded = self.transform:Find("safe_area/bottom_border/bottom_left/video_rewarded/noti_video_rewarded").gameObject
	--- @type UnityEngine_UI_Button
	self.trialMonthlyCard = self.transform:Find("safe_area/right_border/anchor_event/trial_monthly_card"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.flashSale = self.transform:Find("safe_area/right_border/anchor_event/flash_sale"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeHiddenDeal = self.transform:Find("safe_area/right_border/anchor_event/flash_sale/text_hidden_deal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.firstTimeReward = self.transform:Find("safe_area/right_border/anchor_event/first_time_reward"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.text1stReward = self.transform:Find("safe_area/right_border/anchor_event/first_time_reward/text_1st_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonStarterPack = self.transform:Find("safe_area/right_border/anchor_event/starter_pack"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeStarterPack = self.transform:Find("safe_area/right_border/anchor_event/starter_pack/text_starter_pack"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEventServerOpen = self.transform:Find("safe_area/right_border/anchor_event/event_server_open/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.mainAreaWorld = self.transform:Find("main_area_world")
	--- @type UnityEngine_UI_Text
	self.textSaleOff = self.transform:Find("safe_area/bottom_border/icon_shop/tag_sale/text_sale_off"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSaleOffTimer = self.transform:Find("safe_area/bottom_border/icon_shop/tag_sale/text_sale_off_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.tagSale = self.transform:Find("safe_area/bottom_border/icon_shop/tag_sale").gameObject
	--- @type UnityEngine_GameObject
	self.notifyShop = self.transform:Find("safe_area/bottom_border/icon_shop/notify_shop").gameObject
	--- @type UnityEngine_GameObject
	self.iconDownloadAssetBundle = self.transform:Find("safe_area/icon_download_asset_bundle").gameObject
	--- @type UnityEngine_UI_Text
	self.textDownloadPercent = self.transform:Find("safe_area/icon_download_asset_bundle/text_download_percent"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonLeft = self.transform:Find("safe_area/icon_cheat/Button_L"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRight = self.transform:Find("safe_area/icon_cheat/Button_R"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.timeServerOpen = self.transform:Find("safe_area/right_border/anchor_event/event_server_open/time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSpecialOffer = self.transform:Find("safe_area/right_border/anchor_event/button_special_offer"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSpecialOffer = self.transform:Find("safe_area/right_border/anchor_event/button_special_offer/text_special_offer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonMidAutumn = self.transform:Find("safe_area/right_border/anchor_event/button_mid_autumn"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textMidAutumn = self.transform:Find("safe_area/right_border/anchor_event/button_mid_autumn/text_mid_autumn"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyMidAutumn = self.transform:Find("safe_area/right_border/anchor_event/button_mid_autumn/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonHalloween = self.transform:Find("safe_area/right_border/anchor_event/button_halloween"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textHalloween = self.transform:Find("safe_area/right_border/anchor_event/button_halloween/text_halloween"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyHalloween = self.transform:Find("safe_area/right_border/anchor_event/button_halloween/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonBlackFriday = self.transform:Find("safe_area/right_border/anchor_event/button_black_friday"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBlackFriday = self.transform:Find("safe_area/right_border/anchor_event/button_black_friday/text_black_friday"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyBlackFriday = self.transform:Find("safe_area/right_border/anchor_event/button_black_friday/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonXmas = self.transform:Find("safe_area/right_border/anchor_event/button_xmas"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textXmas = self.transform:Find("safe_area/right_border/anchor_event/button_xmas/text_xmas"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyXmas = self.transform:Find("safe_area/right_border/anchor_event/button_xmas/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_new_year"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_new_year/text_new_year"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_new_year/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonLunarNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_new_year"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.notifyLunarNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_new_year/notification"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLunarNewYear = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_new_year/text_new_year"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonLunarPath = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_path"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textLunarPath = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_path/text_lunar_path"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyLunarPath = self.transform:Find("safe_area/right_border/anchor_event/button_lunar_path/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonValentine = self.transform:Find("safe_area/right_border/anchor_event/button_valentine"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textValentine = self.transform:Find("safe_area/right_border/anchor_event/button_valentine/text_valentine"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyValentine = self.transform:Find("safe_area/right_border/anchor_event/button_valentine/notification").gameObject
	--- @type UnityEngine_UI_Text
	self.textRaiseLevel = self.transform:Find("safe_area/bottom_border/icon_2/raise_level/text_raise_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonEventNewHero = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEventNewHero = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero/text_event_new_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyNewHero = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonEventMergeServer = self.transform:Find("safe_area/right_border/anchor_event/button_event_merge_server"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEventMergeServer = self.transform:Find("safe_area/right_border/anchor_event/button_event_merge_server/text_event_merge_server"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyMergeServer = self.transform:Find("safe_area/right_border/anchor_event/button_event_merge_server/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonEventNewHeroSummon = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero_summon"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEventNewHeroSummon = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero_summon/text_event_new_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyEventNewHeroSummon = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero_summon/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonEventEasterEgg = self.transform:Find("safe_area/right_border/anchor_event/button_event_easter_egg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEventEasterEgg = self.transform:Find("safe_area/right_border/anchor_event/button_event_easter_egg/text_event_easter_egg"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyEventEasterEgg = self.transform:Find("safe_area/right_border/anchor_event/button_event_easter_egg/notification").gameObject
	--- @type UnityEngine_UI_Image
	self.iconEventNewHero = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero/icon_main_menu_event"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconNewHeroSummon = self.transform:Find("safe_area/right_border/anchor_event/button_event_new_hero_summon/icon_main_menu_event"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonWelcomeBack = self.transform:Find("safe_area/right_border/anchor_event/button_welcome_back"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textWelcomeBack = self.transform:Find("safe_area/right_border/anchor_event/button_welcome_back/text_welcome_back"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyWelcomeBack = self.transform:Find("safe_area/right_border/anchor_event/button_welcome_back/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonBirthday = self.transform:Find("safe_area/right_border/anchor_event/button_birthday"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBirthday = self.transform:Find("safe_area/right_border/anchor_event/button_birthday/text_birthday"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifyBirthday = self.transform:Find("safe_area/right_border/anchor_event/button_birthday/notification").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSkinBundle = self.transform:Find("safe_area/right_border/anchor_event/button_skin_bundle"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSkinBundle = self.transform:Find("safe_area/right_border/anchor_event/button_skin_bundle/text_skin_bundle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notifySkinBundle = self.transform:Find("safe_area/right_border/anchor_event/button_skin_bundle/notification").gameObject
end
