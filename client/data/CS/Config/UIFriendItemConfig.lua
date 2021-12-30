--- @class UIFriendItemConfig
UIFriendItemConfig = Class(UIFriendItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFriendItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("visual/iconHero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("visual/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventTimeJoin = self.transform:Find("visual/text_event_time_join"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonPvp = self.transform:Find("visual/button_friend_list/button_pvp"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHeart1 = self.transform:Find("visual/button_friend_list/button_heart_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHeart2 = self.transform:Find("visual/button_friend_list/button_heart_2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonConfirm = self.transform:Find("visual/button_friend_add/button_confirm"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDelete = self.transform:Find("visual/button_friend_add/button_delete"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonApply = self.transform:Find("visual/button_apply"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.buttonFriendList = self.transform:Find("visual/button_friend_list").gameObject
	--- @type UnityEngine_GameObject
	self.buttonFriendAdd = self.transform:Find("visual/button_friend_add").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeApply = self.transform:Find("visual/button_apply/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDelete = self.transform:Find("visual/button_friend_add/button_delete/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirm = self.transform:Find("visual/button_friend_add/button_confirm/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
