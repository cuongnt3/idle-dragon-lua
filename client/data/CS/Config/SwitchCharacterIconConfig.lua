--- @class SwitchCharacterIconConfig
SwitchCharacterIconConfig = Class(SwitchCharacterIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SwitchCharacterIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	local _button = self.transform:Find("")
	if _button then
	--- @type UnityEngine_UI_Button
	self.button = _button:GetComponent(ComponentName.UnityEngine_UI_Button)
	end
	--- @type UnityEngine_Transform
	local _icon = self.transform:Find("")
	if _icon then
	--- @type UnityEngine_UI_Image
	self.icon = _icon:GetComponent(ComponentName.UnityEngine_UI_Image)
	end
end
