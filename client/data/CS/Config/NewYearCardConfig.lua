--- @class NewYearCardConfig
NewYearCardConfig = Class(NewYearCardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function NewYearCardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.packAnchor = self.transform:Find("black_friday_package"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.blackFridayPackage = self.transform:Find("black_friday_package"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.cardConfig = self.transform:Find("bg_vip"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
