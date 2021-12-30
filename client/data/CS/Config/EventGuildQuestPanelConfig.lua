--- @class EventGuildQuestPanelConfig
EventGuildQuestPanelConfig = Class(EventGuildQuestPanelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventGuildQuestPanelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonDonateHelp = self.transform:Find("icon_button_donate_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDonateHistory = self.transform:Find("icon_button_donate_history"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_ScrollRect
	self.scrollView = self.transform:Find("Scroll View"):GetComponent(ComponentName.UnityEngine_UI_ScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTotalPearValue = self.transform:Find("pear_bar/total_pear_progress_header/text_total_pear_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTotalAppleValue = self.transform:Find("apple_bar/total_apple_progress_header/text_total_apple_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonDonateApple = self.transform:Find("donate_button/button_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDonatePear = self.transform:Find("donate_button/button_2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textDonate1 = self.transform:Find("donate_button/button_1/text_donate"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDonate2 = self.transform:Find("donate_button/button_2/text_donate"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.bgPearProgressBar2 = self.transform:Find("Scroll View/Viewport/Content/progress/pear_progress_bar/bg_pear_progress_bar_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgPearProgressBar1 = self.transform:Find("Scroll View/Viewport/Content/progress/pear_progress_bar/bg_pear_progress_bar_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgAppleProgressBar2 = self.transform:Find("Scroll View/Viewport/Content/progress/apple_progress_bar/bg_apple_progress_bar_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgAppleProgressBar1 = self.transform:Find("Scroll View/Viewport/Content/progress/apple_progress_bar/bg_apple_progress_bar_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBar = self.transform:Find("current_material"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.content = self.transform:Find("Scroll View/Viewport/Content"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
	--- @type UnityEngine_GameObject
	self.rewardInfo = self.transform:Find("item_reward").gameObject
	--- @type UnityEngine_UI_Button
	self.bgButtonReward = self.transform:Find("item_reward/bg_button_reward"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.contentReward = self.transform:Find("item_reward/bg_list_reward/bg"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
