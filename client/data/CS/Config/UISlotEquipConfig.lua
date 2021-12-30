--- @class UISlotEquipConfig
UISlotEquipConfig = Class(UISlotEquipConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISlotEquipConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.addImage = self.transform:Find("text_+"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
