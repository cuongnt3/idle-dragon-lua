--- @class ArenaTeamFormationItemConfig
ArenaTeamFormationItemConfig = Class(ArenaTeamFormationItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaTeamFormationItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.formation = self.transform:Find("formation"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonChange = self.transform:Find("buttonChange"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.team = self.transform:Find("team"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.index = self.transform:Find("Image (1)/index"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.ap = self.transform:Find("Image (2)/ap"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
