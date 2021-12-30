--- @class UIGuildWarSeasonRewardConfig
UIGuildWarSeasonRewardConfig = Class(UIGuildWarSeasonRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarSeasonRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("popup_reward/icon_reward_animation/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.rank = self.transform:Find("popup_reward/icon_reward_animation/icon/rank"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("text_congratulation"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.season = self.transform:Find("popup_reward/season"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("popup_reward/reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGoToMail = self.transform:Find("popup_reward/button_go_to_mail/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("tap_to_close/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonGoToMail = self.transform:Find("popup_reward/button_go_to_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTapToClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.pointTitle = self.transform:Find("popup_reward/point_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.point = self.transform:Find("popup_reward/point"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
