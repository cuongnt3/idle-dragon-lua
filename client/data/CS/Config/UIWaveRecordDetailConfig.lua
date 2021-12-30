--- @class UIWaveRecordDetailConfig
UIWaveRecordDetailConfig = Class(UIWaveRecordDetailConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIWaveRecordDetailConfig:Ctor(transform)
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
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("popup/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("popup/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGreen = self.transform:Find("popup/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.formation = self.transform:Find("popup/bg_content_base_1 (1)/formation"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
