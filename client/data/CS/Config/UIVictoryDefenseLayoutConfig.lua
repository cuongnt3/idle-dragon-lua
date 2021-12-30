--- @class UIVictoryDefenseLayoutConfig
UIVictoryDefenseLayoutConfig = Class(UIVictoryDefenseLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryDefenseLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("txt_reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tower = self.transform:Find("tower"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
