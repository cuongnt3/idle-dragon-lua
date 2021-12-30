--- @class StageIdleRewardItemConfig
StageIdleRewardItemConfig = Class(StageIdleRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StageIdleRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconCoin = self.transform:Find("icon_magic_potion"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textCoinValue = self.transform:Find("text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCoinValueNext = self.transform:Find("text_coin_value_next"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
