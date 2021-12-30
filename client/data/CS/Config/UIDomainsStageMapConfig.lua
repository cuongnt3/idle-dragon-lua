--- @class UIDomainsStageMapConfig
UIDomainsStageMapConfig = Class(UIDomainsStageMapConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainsStageMapConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("button_back"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChat = self.transform:Find("button_chat"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textChat = self.transform:Find("button_chat/text_chat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAllowedClasses = self.transform:Find("class_alowed/text_allowed_classes"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tableIconClass = self.transform:Find("class_alowed/table_icon_class"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.domainStageItem = self.transform:Find("domain_stage_item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.stages = self.transform:Find("stages"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notifyChat = self.transform:Find("button_chat/notify_chat").gameObject
	--- @type UnityEngine_UI_Image
	self.background = self.transform:Find("background"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
