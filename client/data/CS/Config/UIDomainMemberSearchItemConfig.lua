--- @class UIDomainMemberSearchItemConfig
UIDomainMemberSearchItemConfig = Class(UIDomainMemberSearchItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainMemberSearchItemConfig:Ctor(transform)
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
	self.buttonSend = self.transform:Find("visual/button_send"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeApply = self.transform:Find("visual/button_send/text_send"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSend = self.transform:Find("visual/button_send/text_send"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.imageSent = self.transform:Find("visual/button_send"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
