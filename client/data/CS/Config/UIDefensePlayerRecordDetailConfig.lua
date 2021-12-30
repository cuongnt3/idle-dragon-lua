--- @class UIDefensePlayerRecordDetailConfig
UIDefensePlayerRecordDetailConfig = Class(UIDefensePlayerRecordDetailConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefensePlayerRecordDetailConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTittle = self.transform:Find("popup/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_ScrollRect
	self.scrollProgress = self.transform:Find("popup/scroll_progress"):GetComponent(ComponentName.UnityEngine_UI_ScrollRect)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/scroll_progress/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("popup/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tower = self.transform:Find("popup/tower"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
