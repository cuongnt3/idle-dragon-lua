--- @class UIGuildQuestDonateConfig
UIGuildQuestDonateConfig = Class(UIGuildQuestDonateConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildQuestDonateConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.donateButton = self.transform:Find("popup/donate_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textDonate = self.transform:Find("popup/donate_button/text_donate"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.inputSliderView = self.transform:Find("popup/input_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBarInfo = self.transform:Find("popup/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.icon1 = self.transform:Find("popup/apple_owned_and_guild_owned/apple_owned/icon_appe_frame"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCurrencyName1 = self.transform:Find("popup/apple_owned_and_guild_owned/apple_owned/text_currency_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCurrencyOwned = self.transform:Find("popup/apple_owned_and_guild_owned/apple_owned/text_currency_owned"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.icon2 = self.transform:Find("popup/apple_owned_and_guild_owned/apple_guild_owned/icon_appe_frame copy"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCurrencyName2 = self.transform:Find("popup/apple_owned_and_guild_owned/apple_guild_owned/text_currency_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCurrencyGuildOwned = self.transform:Find("popup/apple_owned_and_guild_owned/apple_guild_owned/text_currency_guild_owned"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
