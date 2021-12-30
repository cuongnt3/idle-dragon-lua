--- @class TabHeroInfoConfig
TabHeroInfoConfig = Class(TabHeroInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TabHeroInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.heroInfoTabOff = self.transform:Find("hero_info_tab_off").gameObject
	--- @type UnityEngine_GameObject
	self.heroInfoTabOn = self.transform:Find("hero_info_tab_on").gameObject
	--- @type UnityEngine_UI_Text
	self.textHeroInfoOff = self.transform:Find("hero_info_tab_off/text_hero_info_off"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textHeroInfoOn = self.transform:Find("hero_info_tab_on/text_hero_info_on"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconNotificationOff = self.transform:Find("hero_info_tab_off/icon_notification_off").gameObject
	--- @type UnityEngine_GameObject
	self.iconNotificationOn = self.transform:Find("hero_info_tab_on/icon_notification_on").gameObject
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTranform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
