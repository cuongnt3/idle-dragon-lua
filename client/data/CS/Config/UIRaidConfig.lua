--- @class UIRaidConfig
UIRaidConfig = Class(UIRaidConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRaidConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBuyTurn = self.transform:Find("content_container/banner/bg_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTurn = self.transform:Find("content_container/banner/bg_currency_value/text_remaining_attempts_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimeRefesh = self.transform:Find("content_container/banner/time_refresh_container/text_refesh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.raidType = self.transform:Find("select_mode/type"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("content_container/VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRemaining = self.transform:Find("content_container/banner/text_remaining_attempts"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("safe_area/anchor_top/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notifyRaid1 = self.transform:Find("select_mode/type/gold_tab/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyRaid2 = self.transform:Find("select_mode/type/potion_tag/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notifyRaid3 = self.transform:Find("select_mode/type/hero_fragment_tab/notify").gameObject
	--- @type UnityEngine_RectTransform
	self.goldTab = self.transform:Find("select_mode/type/gold_tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.magicPotionTab = self.transform:Find("select_mode/type/potion_tag"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.heroFragmentTab = self.transform:Find("select_mode/type/hero_fragment_tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.banner = self.transform:Find("content_container/banner"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
