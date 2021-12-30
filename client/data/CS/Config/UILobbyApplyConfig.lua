--- @class UILobbyApplyConfig
UILobbyApplyConfig = Class(UILobbyApplyConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILobbyApplyConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonRefresh = self.transform:Find("search/button_refresh"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSearch = self.transform:Find("search/button_search"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_InputField
	self.searchInput = self.transform:Find("search/search_input"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.listGuildScroll = self.transform:Find("list_guild_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Button
	self.toggleSearch = self.transform:Find("search/toggle_search"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.toggleLabel = self.transform:Find("search/toggle_search/text_search"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSearch = self.transform:Find("search/button_search/text_search"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEnterGuildName = self.transform:Find("search/search_input/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.searchOption = self.transform:Find("search/search_option").gameObject
	--- @type UnityEngine_UI_Button
	self.optName = self.transform:Find("search/search_option/opt_name"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.optId = self.transform:Find("search/search_option/opt_id"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeInvite = self.transform:Find("search/button_invite/text_invite"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeName = self.transform:Find("search/search_option/opt_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeId = self.transform:Find("search/search_option/opt_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
