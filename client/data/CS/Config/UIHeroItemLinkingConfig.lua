--- @class UIHeroItemLinkingConfig
UIHeroItemLinkingConfig = Class(UIHeroItemLinkingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroItemLinkingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.bgHeroLinkingActiveEffect = self.transform:Find("bg_hero_linking_active_effect").gameObject
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("icon_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.add = self.transform:Find("add").gameObject
	--- @type UnityEngine_GameObject
	self.noti = self.transform:Find("noti").gameObject
end
