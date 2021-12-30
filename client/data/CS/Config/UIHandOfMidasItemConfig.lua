--- @class UIHandOfMidasItemConfig
UIHandOfMidasItemConfig = Class(UIHandOfMidasItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHandOfMidasItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.freeButton = self.transform:Find("free_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.claimCoinButton = self.transform:Find("claim_coin_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGold = self.transform:Find("text_gold"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textValue = self.transform:Find("text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCoin = self.transform:Find("icon_coin_2b"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconGem = self.transform:Find("claim_coin_button/bg_button_green/icon_gem"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textGemValue = self.transform:Find("claim_coin_button/bg_button_green/text_gem_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textClaim = self.transform:Find("claim_coin_button/bg_button_green/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textFree = self.transform:Find("free_button/bg_button_green/text_free"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
