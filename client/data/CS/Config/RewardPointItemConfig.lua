--- @class RewardPointItemConfig
RewardPointItemConfig = Class(RewardPointItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RewardPointItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.open = self.transform:Find("icon_opening_event_chest_3").gameObject
	--- @type UnityEngine_GameObject
	self.on = self.transform:Find("icon_opening_event_chest_2").gameObject
	--- @type UnityEngine_GameObject
	self.off = self.transform:Find("icon_opening_event_chest_1").gameObject
	--- @type UnityEngine_UI_Text
	self.textEventPoint = self.transform:Find("text_event_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
