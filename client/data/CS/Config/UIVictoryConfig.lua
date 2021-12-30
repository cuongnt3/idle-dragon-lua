--- @class UIVictoryConfig
UIVictoryConfig = Class(UIVictoryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.pveAnchor = self.transform:Find("pve_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arenaAnchor = self.transform:Find("arena_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonBattleLog = self.transform:Find("button_battle_log"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type Spine_Unity_SkeletonGraphic
	self.victoryAnim = self.transform:Find("victory_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_GameObject
	self.vfxVictory = self.transform:Find("victory_anim/vfx_victory").gameObject
	--- @type UnityEngine_RectTransform
	self.bgPannel = self.transform:Find("bg_pannel"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildWarAnchor = self.transform:Find("guild_war_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.xmasAnchor = self.transform:Find("xmas_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
