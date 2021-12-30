--- @class UIPopupUseItemConfig
UIPopupUseItemConfig = Class(UIPopupUseItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupUseItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textItem = self.transform:Find("popup/title_chung/text_item"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSummon = self.transform:Find("popup/nut_sell/bg_button_xanh"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.inputNumber = self.transform:Find("popup/diamond_mua"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/title_chung/text_mini_bg_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSummon = self.transform:Find("popup/nut_sell/bg_button_xanh/text_sell"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
