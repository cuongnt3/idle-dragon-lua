--- @class UIHeroMythicalRewardConfig
UIHeroMythicalRewardConfig = Class(UIHeroMythicalRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroMythicalRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.starHeroRewardTxt = self.transform:Find("5StarHeroRewardTxt"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMythicalProgressBarReward = self.transform:Find("text_mythical_progress_bar_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.mythicalImage = self.transform:Find("button_tich_luy/mythicalImage"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.heroMythicalReward = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.rateUpSubIcon = self.transform:Find("button_tich_luy/mythicalImage/up").gameObject
end
