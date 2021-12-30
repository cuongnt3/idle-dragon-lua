--- @class UIVictoryGuildWarConfig
UIVictoryGuildWarConfig = Class(UIVictoryGuildWarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryGuildWarConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type Spine_Unity_SkeletonGraphic
	self.victoryAnim = self.transform:Find("victory_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_GameObject
	self.vfxVictory = self.transform:Find("victory_anim/vfx_victory").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.bgPannel = self.transform:Find("bg_pannel"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildWarResult = self.transform:Find("guild_war_result"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
