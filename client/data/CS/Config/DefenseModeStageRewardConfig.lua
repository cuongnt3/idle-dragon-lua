--- @class DefenseModeStageRewardConfig
DefenseModeStageRewardConfig = Class(DefenseModeStageRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseModeStageRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScrollRect = self.transform:Find("popup/loop_scroll_rect"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/loop_scroll_rect/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/loop_scroll_rect/empty").gameObject
	--- @type UnityEngine_RectTransform
	self.userLeaderBoardItemAnchor = self.transform:Find("popup/user_leaderboard_item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.loading = self.transform:Find("popup/loop_scroll_rect/loading").gameObject
	--- @type UnityEngine_RectTransform
	self.scrollRect = self.transform:Find("popup/loop_scroll_rect"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.popupRect = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("popup/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonNext = self.transform:Find("popup/button_next"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPrev = self.transform:Find("popup/button_prev"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.page = self.transform:Find("popup/page"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
