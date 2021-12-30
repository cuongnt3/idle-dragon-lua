--- @class UIPreviewDailyBossConfig
UIPreviewDailyBossConfig = Class(UIPreviewDailyBossConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPreviewDailyBossConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.tableView = self.transform:Find("popup/table_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.tittle = self.transform:Find("popup/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
