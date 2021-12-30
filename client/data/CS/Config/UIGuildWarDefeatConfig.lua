--- @class UIGuildWarDefeatConfig
UIGuildWarDefeatConfig = Class(UIGuildWarDefeatConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarDefeatConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
