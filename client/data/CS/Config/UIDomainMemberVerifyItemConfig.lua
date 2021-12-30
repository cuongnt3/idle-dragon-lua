--- @class UIDomainMemberVerifyItemConfig
UIDomainMemberVerifyItemConfig = Class(UIDomainMemberVerifyItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainMemberVerifyItemConfig:Ctor(transform)
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
	self.buttonApply = self.transform:Find("visual/button_apply"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeApply = self.transform:Find("visual/button_apply/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonDelete = self.transform:Find("visual/button_delete"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeDelete = self.transform:Find("visual/button_delete/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
