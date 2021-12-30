--- @class DamageStatItemConfig
DamageStatItemConfig = Class(DamageStatItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DamageStatItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconLeaderBoardTop1 = self.transform:Find("icon_leaderboard_top_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLeaderBoardTop = self.transform:Find("text_leaderboard_top"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroSlot = self.transform:Find("player_avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("text_player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.progressAnchor = self.transform:Find("bar_percent"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
