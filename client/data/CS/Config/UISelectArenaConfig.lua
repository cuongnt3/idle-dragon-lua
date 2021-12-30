--- @class UISelectArenaConfig
UISelectArenaConfig = Class(UISelectArenaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectArenaConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.arena = self.transform:Find("popup/arena"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.arena3v3 = self.transform:Find("popup/arena_3v3"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textArena = self.transform:Find("popup/arena/text_arena"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textArena3v3 = self.transform:Find("popup/arena_3v3/text_arena_3v3"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textArenaDesc = self.transform:Find("popup/arena/text_arena_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textArena3v3Desc = self.transform:Find("popup/arena_3v3/text_arena_3v3_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.lockArena = self.transform:Find("popup/arena/lock").gameObject
	--- @type UnityEngine_GameObject
	self.lockArenaTeam = self.transform:Find("popup/arena_3v3/lock (1)").gameObject
	--- @type UnityEngine_GameObject
	self.notiArena = self.transform:Find("popup/arena/noti").gameObject
	--- @type UnityEngine_GameObject
	self.notiArenaTeam = self.transform:Find("popup/arena_3v3/noti").gameObject
end
