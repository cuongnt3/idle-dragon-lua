--- @class UIDefensePlayerRecordItemConfig
UIDefensePlayerRecordItemConfig = Class(UIDefensePlayerRecordItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefensePlayerRecordItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.battleTeamViewAnchor = self.transform:Find("team_view_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonDetail = self.transform:Find("button_detail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.playerAvatarAnchor = self.transform:Find("player_avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.playerCp = self.transform:Find("player_cp"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCp = self.transform:Find("icon_cp"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textDetail = self.transform:Find("button_detail/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.towerTeam = self.transform:Find("team_view_anchor/tower_team"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTownCenterLevel = self.transform:Find("text_town_center_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
