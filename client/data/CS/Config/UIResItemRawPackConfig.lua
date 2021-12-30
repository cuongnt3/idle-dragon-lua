--- @class UIResItemRawPackConfig
UIResItemRawPackConfig = Class(UIResItemRawPackConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIResItemRawPackConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.resIcon = self.transform:Find("bg_currency/text_res_value/res_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textResValue = self.transform:Find("bg_currency/text_res_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
