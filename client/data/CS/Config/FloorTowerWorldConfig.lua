--- @class FloorTowerWorldConfig
FloorTowerWorldConfig = Class(FloorTowerWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FloorTowerWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_SpriteRenderer
	self.sprite = self.transform:Find("sprite"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_RectTransform
	self.uiAnchor = self.transform:Find("ui_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("ui_anchor/bg_level/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.floorRewardPointer = self.transform:Find("floor_reward_pointer").gameObject
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("floor_reward_pointer/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
