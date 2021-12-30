--- @class UIArenaLeaderboardConfig
UIArenaLeaderboardConfig = Class(UIArenaLeaderboardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIArenaLeaderboardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("popup/VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("popup/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLeaderboardTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.arenaRankingItemView = self.transform:Find("popup/arena_ranking_item_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
