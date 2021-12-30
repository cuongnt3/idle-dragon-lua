--- @class ItemFakeDataConfig
ItemFakeDataConfig = Class(ItemFakeDataConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ItemFakeDataConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_InputField
	self.inputField1 = self.transform:Find("InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputField2 = self.transform:Find("InputField (1)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputField3 = self.transform:Find("InputField (2)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputField4 = self.transform:Find("InputField (3)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("Button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
