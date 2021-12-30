--- @class UIDefeatConfig
UIDefeatConfig = Class(UIDefeatConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefeatConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.pveDefeat = self.transform:Find("pve_defeat").gameObject
	--- @type UnityEngine_RectTransform
	self.recommendAnchor = self.transform:Find("recommend_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBattleLog = self.transform:Find("button_battle_log"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type Spine_Unity_SkeletonGraphic
	self.defeatAnim = self.transform:Find("defeat_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade1 = self.transform:Find("recommend_anchor/ui_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade2 = self.transform:Find("recommend_anchor/ui_upgrade (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade3 = self.transform:Find("recommend_anchor/ui_upgrade (2)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("pve_defeat/reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rewardAnchorPve = self.transform:Find("pve_defeat/reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeForce = self.transform:Find("recommend_anchor/ui_upgrade/text_upgrade_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgrade = self.transform:Find("recommend_anchor/ui_upgrade (1)/text_upgrade_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSummon = self.transform:Find("recommend_anchor/ui_upgrade (2)/text_upgrade_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeReward = self.transform:Find("pve_defeat/reward/txt_reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeReward2 = self.transform:Find("pvp_defeat/txt_reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.bgPannel = self.transform:Find("bg_pannel"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildWarDefeat = self.transform:Find("guild_war_defeat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arenaAnchor = self.transform:Find("pvp_defeat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.pveAnchor = self.transform:Find("pve_defeat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.xmasAnchor = self.transform:Find("xmas_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
