--- @class UIPopupCongratulationConfig
UIPopupCongratulationConfig = Class(UIPopupCongratulationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupCongratulationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemEquipInfo = self.transform:Find("item/item_equip_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonOk = self.transform:Find("bg_button_xanh"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
