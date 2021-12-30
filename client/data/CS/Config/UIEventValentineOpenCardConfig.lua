--- @class UIEventValentineOpenCardConfig
UIEventValentineOpenCardConfig = Class(UIEventValentineOpenCardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventValentineOpenCardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.moneyBarAnchor = self.transform:Find("money_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.round = self.transform:Find("round"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("bg/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.softTut = self.transform:Find("soft_tut").gameObject
	--- @type UnityEngine_UI_Text
	self.price = self.transform:Find("price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.image = self.transform:Find("price/Image"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
