--- @class UIDomainMemberVerifyConfig
UIDomainMemberVerifyConfig = Class(UIDomainMemberVerifyConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainMemberVerifyConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.titleMember = self.transform:Find("popup/member_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tabChon = self.transform:Find("popup/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notiFriendRequest = self.transform:Find("popup/tab/request_tab/notify").gameObject
	--- @type UnityEngine_UI_Text
	self.titleFriend = self.transform:Find("popup/member_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.friendCount = self.transform:Find("popup/member_text/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.searchTab = self.transform:Find("popup/tab/search_tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.requestTab = self.transform:Find("popup/tab/request_tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.titleFriend = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.titleIcon = self.transform:Find("popup/text_title/icon_detail_dots"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/content/request/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/content/request/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTabName1 = self.transform:Find("popup/tab/request_tab/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTabName2 = self.transform:Find("popup/tab/search_tab/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
