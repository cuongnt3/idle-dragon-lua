--- @class UICommunityConfig
UICommunityConfig = Class(UICommunityConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UICommunityConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonFacebook = self.transform:Find("button_facebook"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTwitter = self.transform:Find("button_twitter"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonInstagram = self.transform:Find("button_instagram"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonReddit = self.transform:Find("button_reddit"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDiscord = self.transform:Find("button_discord"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textFacebook = self.transform:Find("button_facebook/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTwitter = self.transform:Find("button_twitter/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textInstagram = self.transform:Find("button_instagram/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textReddit = self.transform:Find("button_reddit/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.testDiscord = self.transform:Find("button_discord/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
