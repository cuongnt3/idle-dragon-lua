--- @class UIMailItemConfig
UIMailItemConfig = Class(UIMailItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMailItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("visual/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventTimeJoin = self.transform:Find("visual/text_event_time_join"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconMailUnbox = self.transform:Find("visual/icon_mail_unbox").gameObject
	--- @type UnityEngine_GameObject
	self.iconMail = self.transform:Find("visual/icon_mail").gameObject
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scroll = self.transform:Find("visual/scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_GameObject
	self.iconNoti = self.transform:Find("visual/icon_new").gameObject
	--- @type SoftMasking_SoftMask
	self.mask = self.transform:Find("visual/scroll"):GetComponent(ComponentName.SoftMasking_SoftMask)
end
