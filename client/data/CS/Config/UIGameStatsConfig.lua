--- @class GameStatsConfig
GameStatsConfig = Class(GameStatsConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GameStatsConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.gameStats = self.transform:Find("[Graphy]").gameObject
	--- @type UnityEngine_GameObject
	self.customizer = self.transform:Find("[Graphy] - Customizer").gameObject
	--- @type UnityEngine_GameObject
	self.advance = self.transform:Find("[Graphy]/ADVANCED ------------------").gameObject
	--- @type UnityEngine_UI_Button
	self.HideCustomButton = self.transform:Find("Buttons/HideCustomButton"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.HideAdvancedButton = self.transform:Find("Buttons/HideAdvancedButton"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.CloseButton = self.transform:Find("Buttons/CloseButton"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
