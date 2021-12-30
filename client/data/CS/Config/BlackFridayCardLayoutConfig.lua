--- @class BlackFridayCardLayoutConfig
BlackFridayCardLayoutConfig = Class(BlackFridayCardLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BlackFridayCardLayoutConfig:Ctor(transform)
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
	self.cardConfig = self.transform:Find("card_anchor/card_calculator"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.cardAnchor = self.transform:Find("card_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
