--- @class LunarNewYearDailyCheckin
LunarNewYearDailyCheckin = Class(LunarNewYearDailyCheckin)

--- @return void
--- @param transform UnityEngine_Transform
function LunarNewYearDailyCheckin:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.eventTittle = self.transform:Find("text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tile6Days = self.transform:Find("panel_week/page_list_container/page_login_view/tile_6_days"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tileDay7 = self.transform:Find("panel_week/page_list_container/page_login_view/tile_7"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.txtProgress = self.transform:Find("panel_week/txt_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("panel_week/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeClaim = self.transform:Find("panel_week/button_claim/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("panel_week/button_claim/notify").gameObject
	--- @type UnityEngine_GameObject
	self.buttonDisable = self.transform:Find("panel_week/button_claim/cover").gameObject
	--- @type UnityEngine_RectTransform
	self.content1 = self.transform:Find("panel_week/page_list_container/page_login_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.content2 = self.transform:Find("panel_week/page_list_container/page_login_view_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.pageListContainer = self.transform:Find("panel_week/page_list_container"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.next = self.transform:Find("next"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.back = self.transform:Find("back"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.nextFreeText = self.transform:Find("next_free"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.timeCountDownContainer = self.transform:Find("time_count_down_with_icon (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTimeCountDown = self.transform:Find("time_count_down_with_icon (1)/bg/time_count_down"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimeCountDown_2 = self.transform:Find("next_free/time_count_down_with_icon/bg/time_count_down"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.pagesAnchor = self.transform:Find("pages_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
