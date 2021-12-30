--- @class CardCalculatorConfig
CardCalculatorConfig = Class(CardCalculatorConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CardCalculatorConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.addIcon = self.transform:Find("container/add_icon").gameObject
	--- @type UnityEngine_GameObject
	self.vipIcon = self.transform:Find("container/vip_icon").gameObject
	--- @type UnityEngine_GameObject
	self.lvIcon = self.transform:Find("container/lv_icon").gameObject
	--- @type UnityEngine_GameObject
	self.multiIcon = self.transform:Find("container/multi_icon").gameObject
end
