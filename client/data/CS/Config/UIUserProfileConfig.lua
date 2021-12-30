--- @class UIUserProfileConfig
UIUserProfileConfig = Class(UIUserProfileConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIUserProfileConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonChangeFrameAvatar = self.transform:Find("popup/change_frame_avatar"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonVip = self.transform:Find("popup/vip_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.nameEditButton = self.transform:Find("popup/top_menu_user_profile/name_edit_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("popup/top_menu_user_profile/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUserLevel = self.transform:Find("popup/top_menu_user_profile/text_user_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textId = self.transform:Find("popup/top_menu_user_profile/text_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textExpValue = self.transform:Find("popup/user_exp/exp_bar/text_exp_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgQuestProgressBar1 = self.transform:Find("popup/user_exp/exp_bar/bg_quest_progress_bar_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.iconUser = self.transform:Find("popup/top_menu_user_profile/icon_user"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeExp = self.transform:Find("popup/user_exp/text_exp"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeVip = self.transform:Find("popup/vip_button/text_vip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeChangeAvatar = self.transform:Find("popup/change_frame_avatar/text_change_frame_avatar"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonCoppy = self.transform:Find("popup/top_menu_user_profile/text_id/coppy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
