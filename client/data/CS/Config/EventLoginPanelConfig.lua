--- @class EventLoginPanelConfig
EventLoginPanelConfig = Class(EventLoginPanelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventLoginPanelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.eventTittle = self.transform:Find("event_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tile6Days = self.transform:Find("panel_week/tile_6_days"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tileDay7 = self.transform:Find("panel_week/day_7"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.txtProgress = self.transform:Find("panel_week/txt_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("panel_week/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeClaim = self.transform:Find("panel_week/button_claim/txt_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("panel_week/button_claim/notify").gameObject
	--- @type UnityEngine_UI_Text
	self.eventDesc = self.transform:Find("event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.buttonDisable = self.transform:Find("panel_week/button_disable").gameObject
	--- @type UnityEngine_UI_Text
	self.txtStatus = self.transform:Find("panel_week/button_disable/txt_status"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
