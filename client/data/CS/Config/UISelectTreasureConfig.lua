--- @class UISelectTreasureConfig
UISelectTreasureConfig = Class(UISelectTreasureConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectTreasureConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("popup/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("popup/move_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButton2 = self.transform:Find("popup/move_button/text_move"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("popup/move_button/icon_wood"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("popup/move_button/icon_wood/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
