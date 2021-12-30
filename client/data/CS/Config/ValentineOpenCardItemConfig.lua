--- @class ValentineOpenCardItemConfig
ValentineOpenCardItemConfig = Class(ValentineOpenCardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ValentineOpenCardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.card = self.transform:Find("card"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
