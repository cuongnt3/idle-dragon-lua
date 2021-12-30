--- @class UIChangeFormationArenaTeamConfig
UIChangeFormationArenaTeamConfig = Class(UIChangeFormationArenaTeamConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChangeFormationArenaTeamConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.elementL = self.transform:Find("popup/team"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.elementR = self.transform:Find("popup/team2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textAttacker = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDefender = self.transform:Find("popup/text_title2"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChange1 = self.transform:Find("popup/button_change_attacker"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChange2 = self.transform:Find("popup/button_change_defender"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("popup/button_save"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("popup/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textChangeAttacker = self.transform:Find("popup/button_change_attacker/text_change_attacker"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textChangeDefender = self.transform:Find("popup/button_change_defender/text_change_defender"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSave = self.transform:Find("popup/button_save/text_save"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
