--- @class UIIapShopConfig
UIIapShopConfig = Class(UIIapShopConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIapShopConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.contentShopTab = self.transform:Find("scroll_tab/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollVertical = self.transform:Find("scroll_vertical"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.monthlyCardView = self.transform:Find("monthly_card_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.levelPassView = self.transform:Find("level_pass_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.dailyDealView = self.transform:Find("banner_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconVip = self.transform:Find("button_vip/icon_vip"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonVip = self.transform:Find("button_vip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.bannerView = self.transform:Find("banner_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arenaPassView = self.transform:Find("arena_pass_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.dailyQuestPassView = self.transform:Find("daily_quest_pass_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
