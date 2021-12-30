--- @class BirthdayWheelItemConfig
BirthdayWheelItemConfig = Class(BirthdayWheelItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BirthdayWheelItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.stop = self.transform:Find("Stop/Stop"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("Item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
