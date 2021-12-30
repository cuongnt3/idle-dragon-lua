--- @class WorldFormationConfig
WorldFormationConfig = Class(WorldFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function WorldFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.frontLineBuff = self.transform:Find("world_canvas/attacker_info/front_line_buff"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.backLineBuff = self.transform:Find("world_canvas/attacker_info/back_line_buff"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.frontStatsAnchor = self.transform:Find("world_canvas/attacker_info/front_line_buff/front_stats_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.backStatsAnchor = self.transform:Find("world_canvas/attacker_info/back_line_buff/back_stats_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.poolImage = self.transform:Find("world_canvas/attacker_info/pool_image"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonCancelSelect = self.transform:Find("world_canvas/button_cancel_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.hp = self.transform:Find("world_canvas/attacker_info/front_line_buff/hp"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.atk = self.transform:Find("world_canvas/attacker_info/back_line_buff/atk"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_Canvas
	self.worldCanvas = self.transform:Find("world_canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
end
