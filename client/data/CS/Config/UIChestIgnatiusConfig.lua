--- @class UIChestIgnatiusConfig
UIChestIgnatiusConfig = Class(UIChestIgnatiusConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChestIgnatiusConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewad = self.transform:Find("icon_rewad"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.chest = self.transform:Find("chest"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonChest = self.transform:Find("chest"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.chestText = self.transform:Find("chest_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.instantRewardTxt = self.transform:Find("instant_reward_txt"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
