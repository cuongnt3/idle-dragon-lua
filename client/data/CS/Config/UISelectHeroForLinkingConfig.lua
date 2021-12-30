--- @class UISelectHeroForLinkingConfig
UISelectHeroForLinkingConfig = Class(UISelectHeroForLinkingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectHeroForLinkingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.selectButton = self.transform:Find("popup/select_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tableSelfHero = self.transform:Find("popup/hero_scroll/content/table_self_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tableFriendHero = self.transform:Find("popup/hero_scroll/content/table_friend_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.friendSupport = self.transform:Find("popup/hero_scroll/content/friend_support").gameObject
	--- @type UnityEngine_UI_Text
	self.textFriendSupport = self.transform:Find("popup/hero_scroll/content/friend_support/text_friend_support"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSelect = self.transform:Find("popup/select_button/text_select"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.contentSize = self.transform:Find("popup/hero_scroll/content"):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
end
