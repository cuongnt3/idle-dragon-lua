--- @class UIDungeonMonsterReviewConfig
UIDungeonMonsterReviewConfig = Class(UIDungeonMonsterReviewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonMonsterReviewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.team = self.transform:Find("popup/team_up"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_fog"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/text_monster_preview"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
