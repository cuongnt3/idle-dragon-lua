--- @class GuildDungeonBossStandConfig
GuildDungeonBossStandConfig = Class(GuildDungeonBossStandConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDungeonBossStandConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.heroAnchor = self.transform:Find("hero_anchor")
	--- @type UnityEngine_Transform
	self.statusIcon = self.transform:Find("status")
	--- @type UnityEngine_SpriteRenderer
	self.mystery = self.transform:Find("hero_anchor/mystery"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_SpriteRenderer
	self.base = self.transform:Find("base"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_Canvas
	self.canvas = self.transform:Find("canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_UI_Text
	self.textStage = self.transform:Find("canvas/text_stage"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
