--- @class UIBlockConfig
UIBlockConfig = Class(UIBlockConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBlockConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
