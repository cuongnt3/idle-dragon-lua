--- @class UISelectLanguageConfig
UISelectLanguageConfig = Class(UISelectLanguageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectLanguageConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLanguage = self.transform:Find("text_ten_ngon_ngu"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
