--- @class UIBlackSmithConfig
UIBlackSmithConfig = Class(UIBlackSmithConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBlackSmithConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.tabParent = self.transform:Find("bg_main_pannel_1/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type Spine_Unity_SkeletonGraphic
	self.skeleton = self.transform:Find("SkeletonGraphic (Black_Smith)"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_Text
	self.textSkillName = self.transform:Find("Image/text_ten_skill (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textType = self.transform:Find("Image/text_active_skill (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.progressBar = self.transform:Find("Image/bg_quest_progress_bar_slot/bg_quest_progress_bar_slot (1)"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNumber = self.transform:Find("Image/bg_quest_progress_bar_slot/text_number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("bg_main_pannel_1/VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.item1 = self.transform:Find("Image/item1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.item2 = self.transform:Find("icon_black_smith_crafting/item2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonForge = self.transform:Find("forge_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTutorial = self.transform:Find("safe_area/anchor_top/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.inputView = self.transform:Find("input_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPriceForge = self.transform:Find("forge_button/coin_currency/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCoin = self.transform:Find("forge_button/coin_currency/icon_coin"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.goldBar = self.transform:Find("safe_area/anchor_top/goldBar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.fxUiBlacksmith = self.transform:Find("fx_ui_blacksmith"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeForge = self.transform:Find("forge_button/text_forge"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeWeapon = self.transform:Find("bg_main_pannel_1/tab/tab1/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeArmor = self.transform:Find("bg_main_pannel_1/tab/tab1 (1)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeHelmet = self.transform:Find("bg_main_pannel_1/tab/tab1 (2)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRing = self.transform:Find("bg_main_pannel_1/tab/tab1 (3)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.fx_start = self.transform:Find("SkeletonGraphic (Black_Smith)/fx_ui_black_smith_start40").gameObject
	--- @type UnityEngine_GameObject
	self.fx_forge = self.transform:Find("SkeletonGraphic (Black_Smith)/effect_forge").gameObject
	--- @type UnityEngine_GameObject
	self.notification1 = self.transform:Find("bg_main_pannel_1/tab/tab1/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notification2 = self.transform:Find("bg_main_pannel_1/tab/tab1 (1)/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notification3 = self.transform:Find("bg_main_pannel_1/tab/tab1 (2)/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notification4 = self.transform:Find("bg_main_pannel_1/tab/tab1 (3)/icon_dots").gameObject
end
