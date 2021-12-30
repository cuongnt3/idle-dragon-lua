--- @class UIFreeVictoryGuildWarConfig
UIFreeVictoryGuildWarConfig = Class(UIFreeVictoryGuildWarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFreeVictoryGuildWarConfig:Ctor(transform)
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
	--- @type UnityEngine_UI_Image
	self.iconGuildSymbol = self.transform:Find("icon_guild_war_flag_allies/icon_guild_symbol"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textGuildName = self.transform:Find("text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPointGuild = self.transform:Find("text_ranking_point_guild"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPoint = self.transform:Find("text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonGoToMail = self.transform:Find("button_go_to_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGoToMail = self.transform:Find("button_go_to_mail/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
