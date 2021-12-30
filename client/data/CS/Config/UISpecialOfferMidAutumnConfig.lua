--- @class UISpecialOfferMidAutumnConfig
UISpecialOfferMidAutumnConfig = Class(UISpecialOfferMidAutumnConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISpecialOfferMidAutumnConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
