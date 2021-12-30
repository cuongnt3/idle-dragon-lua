--- @class ButtonCommunityConfig
ButtonCommunityConfig = Class(ButtonCommunityConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ButtonCommunityConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textCommunity = self.transform:Find("text_community"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("notify").gameObject
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Image)
end
