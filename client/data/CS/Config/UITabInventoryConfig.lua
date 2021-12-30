--- @class UITabInventoryConfig
UITabInventoryConfig = Class(UITabInventoryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabInventoryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	local _button = self.transform:Find("button_tab_off")
	if _button then
	--- @type UnityEngine_UI_Button
	self.button = _button:GetComponent(ComponentName.UnityEngine_UI_Button)
	end
	--- @type UnityEngine_Transform
	local _imageOn = self.transform:Find("button_tab_on")
	if _imageOn then
	--- @type UnityEngine_UI_Image
	self.imageOn = _imageOn:GetComponent(ComponentName.UnityEngine_UI_Image)
	end
end
