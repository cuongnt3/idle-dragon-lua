--- @class SummonerWrathViewConfig
SummonerWrathViewConfig = Class(SummonerWrathViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SummonerWrathViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.avatar = self.transform:Find("icon_hero_wrath_bar/avatar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.powerBurning = self.transform:Find("icon_hero_wrath_bar/power_burning"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.wrathBarProgress = self.transform:Find("icon_hero_wrath_bar/wrath_bar/wrath_bar_progress"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.burstEffect = self.transform:Find("burst_effect").gameObject
end
