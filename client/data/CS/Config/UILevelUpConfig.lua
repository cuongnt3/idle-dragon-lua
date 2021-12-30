--- @class UILevelUpConfig
UILevelUpConfig = Class(UILevelUpConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILevelUpConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type Spine_Unity_SkeletonAnimation
	self.skeletonAnim = self.transform:Find("skeleton_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_CanvasGroup
	self.cgTextLevelUp = self.transform:Find("skeleton_anim/level_up_bone"):GetComponent(ComponentName.UnityEngine_CanvasGroup)
	--- @type UnityEngine_RectTransform
	self.numberGroup = self.transform:Find("skeleton_anim/number_bone/number_group"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.numberPrefab = self.transform:Find("skeleton_anim/number_bone/number_group/number").gameObject
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("skeleton_anim/level_up_bone/reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("skeleton_anim/level_up_bone/reward/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.textTapToClose = self.transform:Find("text_tap_to_close").gameObject
	--- @type UnityEngine_GameObject
	self.numberBone = self.transform:Find("skeleton_anim/number_bone").gameObject
	--- @type UnityEngine_GameObject
	self.levelUpBone = self.transform:Find("skeleton_anim/level_up_bone").gameObject
end
